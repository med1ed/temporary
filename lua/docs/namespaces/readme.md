---
order: -1
label: RE Namespaces 
---

## raw.lua_api
```c++
namespace native {
	/**
	 * @brief Prepares a value for the invoker by wrapping it with type information, primarily for scalar types.
	 * 
	 * This helper function constructs an argument for the native invoker. It is used for non-reference types.
	 * 
	 * @param type The InvokerType enum value representing the type of the argument.
	 * @param val The value to be wrapped and passed to the invoker.
	 * @return A structure with the argument's type and value, suitable for the invoker, with is_ref set to false.
	 */
	table arg(InvokerType type, object val);

	/**
	 * @brief Prepares a reference argument for the invoker, capable of handling modifications, including arrays.
	 * 
	 * This function is designed to handle arguments that are passed by reference to the native function. It is suitable
	 * for all reference types and ensures that the argument can be modified by the native function. When used with arrays,
	 * it provides additional functionality to resize an existing table or create a new one to match a specified size.
	 * 
	 * @param type The InvokerType enum value specifying the type of the reference argument.
	 * @param tbl The Lua table to pass by reference; can be a pre-existing or newly created table.
	 * @param array_size Optionally specifies the size for an array; defaults to 0, which is suitable for non-array types.
	 * @return A structure tailored for the invoker that contains the type and the table to be passed by reference, with is_ref set to true.
	 */
	table ref(InvokerType type, table tbl, int array_size = 0);

	/**
	 * @brief Helper functions 'arg' and 'ref' are primarily intended for use in native function wrappers.
	 * 
	 * These functions are designed to streamline the creation of invoker arguments, especially in the context of
	 * abstracting native calls. While they can be used in general Lua scripting, it is recommended to employ them
	 * mainly within the invoker wrappers to ensure the correct data types and structures are conveyed to the native layer.
	 * This approach promotes cleaner and more maintainable code by abstracting complex argument preparations behind wrapper functions.
	 */

	/**
	 * @brief Invokes a native game function with specified arguments and a return type.
	 * 
	 * This function is a central hub for calling native game functions from Lua. It accepts 
	 * an enumerated type for the expected return type, the native function's hash, a variadic 
	 * list of arguments wrapped by arg or ref functions, and the current Lua state.
	 * 
	 * @param type The expected return type of the native function, defined by the InvokerType enum.
	 * @param hash The hash of the native function to invoke.
	 * @param args A variadic list of arguments to pass to the native function. 
	 *             Each argument should be wrapped using the arg or ref helper functions.
	 * @return The result of the native function call as a object.
	 * 
	 * @usage
	 * Usage examples:
	 * 
	 * For functions that do not modify the passed parameter, use `arg`:
	 * local result = native.invoke(
	 *     Type.Void,
	 *     hash,
	 *     arg(Type.String, "Some Text"),
	 *     arg(Type.Int, 123)
	 * );
	 *
	 * For reference types that are modified in-place, such as objects that the native function may alter, use `ref`:
	 * local my_ref_var = {}
	 * local result = native.invoke(
	 *     Type.Void,
	 *     hash,
	 *     ref(Type.Any, my_ref_var) -- Here, my_ref_var can be modified by the native function.
	 * );
	 *
	 * When passing an array that the native function may modify, use `ref` with an additional parameter specifying the array size:
	 * local arrayHandle = {}
	 * local result = native.invoke(
	 *     Type.Void,
	 *     hash,
	 *     ref(Type.Array, arrayHandle, arraySize) -- arraySize should match the expected size by the native function.
	 * );
	 *
	 * Note: When `ref` is used with an Array type, the array_size parameter dictates the size of the array to be passed.
	 *       For non-Array types, the array_size should be omitted or set to zero.
	 *
	 * Wrapper example for NETWORK.NETWORK_HANDLE_FROM_PLAYER, where `gamerHandleSize` is used
	 * both as the array size for `gamerHandle` and as the last argument to the native function, 
	 * since this native function expects the array size as its last parameter.
	 * 
	 * function NETWORK_HANDLE_FROM_PLAYER(player, gamerHandle, gamerHandleSize)
	 *   native.invoke(
	 *     Type.Void,
	 *     0x388EB2B86C73B6B3,
	 *     arg(Type.Player, player),
	 *     ref(Type.Array, gamerHandle, gamerHandleSize), // here gamerHandleSize is used to define the array size
	 *     arg(Type.Int, gamerHandleSize) // and also passed as the last argument to the native function
	 *   )
	 * end
	 * 
	 * -- Calling the wrapper function:
	 * local handle = {}
	 * NETWORK_HANDLE_FROM_PLAYER(PLAYER.PLAYER_ID(), handle, 13)
	 *
	 * for id, val in pairs(handle.result) do
	 *   log.warning("ID: " .. id .. " Val: " .. val)
	 * end
	 *
	 * -- Here, `handle` is a Lua table that will be passed as an array to the native function.
	 * -- It will be resized to contain 13 elements to meet the function's expectation, and 13 is also passed to the function as gamerHandleSize.
	 */
	object invoke(Type type, Hash hash, Args args);
}

/**
 * Enums for categorizing types used by the native invoker.
 * Note: The 'Array' type is intended exclusively for use as a parameter; 
 * it cannot be used as a return type. Arrays can be modified in-place when 
 * passed by reference to a function expecting an array parameter.
 */
enum class Type
{
	Void,
	Any,
	Int,
	Float,
	Bool,
	String,
	Array, 
	Vector3,
	Hash,
	Entity,
	Player,
	Ped,
	Vehicle,
	FireId,
	Interior,
	Cam,
	Object,
	Pickup,
	Blip,
	ScrHandle
};

namespace events 
{
	/**
	 * @brief Registers an event handler for a specified event type.
	 *
	 * This function allows the registration of a Lua function as an event handler for a specific type of game event.
	 * Each handler is identified by a unique hash to prevent duplicate handlers for the same event.
	 *
	 * @param type The type of the menu event for which the handler is being registered.
	 * @param hash A unique string identifier for the handler, used to avoid duplicates.
	 * @param func Lua function to be registered as the event handler.
	 */
	void register(EventType type, string hash, function fn)

	/**
	 * @brief Documentation for handling different types of events in Lua.
	 *
	 * Different types of events trigger with specific sets of parameters.
	 * Below is the detail of the parameters passed to the handler functions 
	 * based on the event type (check EventType enum class below):
	 *
	 * - ScriptedEventReceived: player_id, player_name, event_id, event_args
	 * - PlayerJoin/PlayerLeave: player_id, player_name
	 * - ChatMessageReceived: player_id, player_name, message
	 *
	 * Here is an example Lua script for handling a ScriptedEventReceived event.
	 * The approach for other event types is similar, but pay attention to the 
	 * parameters passed to the handler.
	 *
	 * @code
	 *   events.register(EventType.ScriptedEventReceived, "main_se_handler", function (player_id, player_name, event_id, event_args)
	 *       -- Logging event details
	 *       log.warning("---=== Incoming event ===---")
	 *       log.warning("Sender Name: " .. player_name)
	 *       log.warning("Sender ID: " .. player_id)
	 *       log.warning("Event ID: " .. event_id)
	 *
	 *       -- Formatting and logging event arguments
	 *       local argsStr = "{ "
	 *       for i, value in ipairs(event_args) do
	 *           if i > 1 then
	 *               argsStr = argsStr .. ", "
	 *           end
	 *           argsStr = argsStr .. tostring(value)
	 *       end
	 *       argsStr = argsStr .. " }"
	 *       log.warning("Event Args: " .. argsStr)
	 *
	 *       -- Return true to block the event by its ID. You can also add additional checks
     *		 -- for other parameters passed in event_args for more precise control over event handling.
	 *       if event_id == 1234567890 then
	 *           return true
	 *       end
	 *   end)
	 * @endcode
	 */
}

/**
 * Enums for categorizing event types used by the events handlers.
 * These values are used to determine the type of event that will be triggered
 * in Lua scripts, aiding in the handling of specific events based on their type.
 *
 * - PlayerJoin: Event triggered when a player joins the lobby.
 * - PlayerLeave: Event triggered when a player leaves the lobby.
 * - ChatMessageReceived: Event triggered when a chat message is received.
 * - ScriptedEventReceived: Event triggered when a scripted event is received.
 */
enum class EventType
{
    PlayerJoin,
    PlayerLeave,
    ChatMessageReceived,
    ScriptedEventReceived,
};

// Functions
namespace system {
	/**
	 * @brief Retrieves the current user's group level based on their permissions.
	 *
	 * This function checks the user's group status and returns an integer representing
	 * the user's group level. The levels are assigned as follows:
	 *
	 * - 0: No group/Error
	 * - 1: Basic
	 * - 2: VIP
	 * - 3: Test
	 * - 4: Admin
	 *
	 * @return An integer representing the user's group level.
	 */
	int get_user_group();

	/**
	 * @brief Reload current Lua script. !!! CURRENTLY DISABLED !!!
	 */
	void script_reload();

	/**
	 * @brief Unload current Lua script. !!! CURRENTLY DISABLED !!!
	 */
	void script_unload();
}

namespace log {
	void info(string text);
	void reprotex(string text);
	void warning(string text);
}

namespace notifications {
	void info(string title, string message);
	void success(string title, string message);
	void warning(string title, string message);
}

namespace gui {
	/**
	 * @brief Adds a rendering layer for the script.
	 *
	 * This function adds a rendering layer for the script to utilize ImGui widgets.
	 *
	 * @param hash The unique identifier for the rendering layer.
	 * @param fn The rendering function to be associated with the layer.
	 */
	void add_dx_layer(string hash, function fn);

	/**
	 * @brief Removes a rendering layer.
	 *
	 * This function removes a rendering layer previously added by `add_dx_layer`.
	 *
	 * @param hash The unique identifier of the rendering layer to be removed.
	 */
	void remove_dx_layer(string hash);

	/**
	 * @brief Adds a default root section for the script with a custom function.
	 *
	 * This function adds a root section for the script with a user-defined function in the Lua Manager section.
	 *
	 * @param fn The function to be associated with the root section.
	 */
	void add_root(function fn);

	/**
	 * @brief Adds a subsection to the root section of the script.
	 *
	 * This function adds a subsection to the root section of the script. If the root
	 * section does not exist, it creates one without a user-defined function.
	 *
	 * @param hash The unique identifier for the subsection.
	 * @param name The name of the subsection.
	 * @param fn The function to be associated with the subsection.
	 */
	void add_section(string hash, string name, function fn);

	/**
	 * @brief Adds a subsection to an existing section of the script menu.
	 *
	 * This function adds a subsection to an existing section of the script menu.
	 *
	 * @param parent The unique identifier of the parent section.
	 * @param hash The unique identifier for the subsection.
	 * @param name The name of the subsection.
	 * @param fn The function to be associated with the subsection.
	 *
	 * Available predefined section hashes:
	 * - self
	 * - vehicle
	 * - online
	 * - recovery
	 * - weapons
	 * - teleport
	 * - model_changer
	 * - model_swapper
	 * - outfit_store
	 * - animations
	 * - crafting_workshop
	 * - world
	 * - about
	 */
	void add_section(string parent, string hash, string name, function fn);

	/**
	 * @brief Checks if a section added from the script exists.
	 *
	 * This function checks if a section added from the script exists.
	 *
	 * @param hash The unique identifier of the section.
	 * @return True if the section exists, false otherwise.
	 */
	bool is_section_present(string hash);

	/**
	 * @brief Removes a section from the script section.
	 *
	 * This function removes a section from the script section if it exists.
	 *
	 * @param hash The unique identifier of the section to be removed.
	 */
	void remove_section(string hash);

	/**
	 * @brief Clears all sections.
	 *
	 * This function removes all sections from the script section.
	 */
	void clear_sections();

	/**
	 * @brief Sets the visibility of the cursor.
	 *
	 * This function sets the visibility of the cursor (show/hide).
	 *
	 * @param state The visibility state of the cursor.
	 */
	void set_cursor_active(bool state);

	/**
	 * @brief Checks if the cursor is active.
	 *
	 * This function checks if the cursor is currently active (visible).
	 *
	 * @return True if the cursor is active, false otherwise.
	 */
	bool is_cursor_active();

	/**
	 * @brief Checks if the script menu is open.
	 *
	 * This function checks if the script menu is currently open.
	 *
	 * @return True if the script menu is open, false otherwise.
	 */
	bool is_menu_open();

	/**
	 * @brief Returns the current menu scaling factor.
	 *
	 * This function returns the current scaling factor of the script menu.
	 *
	 * @return The current scaling factor of the script menu.
	 */
	float get_scale();

	namespace elements {
		/**
		 * @brief Draws a separator with text.
		 *
		 * This function draws a horizontal line with text used to separate content visually.
		 *
		 * @param text The text to display on the separator.
		 */
		void text_separator(string text);

		/**
		 * @brief Creates a button.
		 *
		 * This function creates a button labeled with text. The button can have a specified size.
		 *
		 * @param text The text label of the button.
		 * @param size_x The width of the button (optional).
		 * @param size_y The height of the button (optional).
		 * @return Returns true if the button is pressed.
		 */
		bool button(string text, float size_x = 0.f, float size_y = 0.f);

		/**
		 * @brief Creates a checkbox.
		 *
		 * This function creates a button style checkbox that the user can toggle.
		 *
		 * @param label The label associated with the checkbox.
		 * @param v The initial checked state of the checkbox.
		 * @param size_x The width of the checkbox (optional).
		 * @param size_y The height of the checkbox (optional).
		 * @return Returns a tuple containing the new checked state and a bool that is true if the checkbox was pressed.
		 */
		std::tuple<bool, bool> checkbox(string label, bool v, float size_x = 0.f, float size_y = 0.f);

		/**
		 * @brief Creates a collapsible header.
		 *
		 * This function creates a header that the user can collapse or expand.
		 *
		 * @param text The text label of the header.
		 * @param flags Flags to customize the behavior and style of the header (optional).
		 * @return Returns true if the header is open.
		 */
		bool collapsing_header(string text, ImGuiTreeNodeFlags flags);

		/**
		 * @brief Starts a combo box.
		 *
		 * This function creates a combo box with given text and preview value.
		 *
		 * @param text The label of the combo box.
		 * @param preview_value The value currently selected in the combo box.
		 * @param flags Flags to customize the behavior and style of the combo box (optional).
		 * @return Returns true if the combo box is open.
		 */
		bool begin_combo(string text, string preview_value, ImGuiComboFlags flags = 0);

		/**
		 * @brief Creates a text input field.
		 *
		 * This function creates a text input field with an optional hint and label.
		 *
		 * @param label The label of the input field.
		 * @param hint The hint displayed within the input field when it is empty.
		 * @param input_str The initial input string.
		 * @param max_size The maximum number of characters allowed (optional).
		 * @param flag Flags to customize the behavior and style of the input field (optional).
		 * @return Returns a tuple containing the input string and a bool that is true if the input field was used.
		 */
		std::tuple<string, bool> input_text(string_view label, string_view hint, string input_str, int max_size = 256, ImGuiInputTextFlags flag = ImGuiInputTextFlags_None);

		/**
		 * @brief Creates a text input field with a hint.
		 *
		 * This function creates a text input field with an optional hint.
		 *
		 * @param label The label of the input field.
		 * @param input_str The initial input string.
		 * @param flag Flags to customize the behavior and style of the input field (optional).
		 * @return Returns a tuple containing the input string and a bool that is true if the input field was used.
		 */
		std::tuple<string, bool> input_text_with_hint(string_view label, string input_str, ImGuiInputTextFlags flag = ImGuiInputTextFlags_None);

		/**
		 * @brief Creates a selectable item.
		 *
		 * This function creates an item that can be selected.
		 *
		 * @param label The label of the selectable item.
		 * @param selected The initial selected state of the item.
		 * @return Returns true if the item is clicked.
		 */
		bool selectable(string label, bool selected);

		/**
		 * @brief Creates a slider for floating point values.
		 *
		 * This function creates a slider to select a floating point value within a specified range.
		 *
		 * @param label The label of the slider.
		 * @param v The initial value of the slider.
		 * @param v_min The minimum value of the slider.
		 * @param v_max The maximum value of the slider.
		 * @return Returns a tuple containing the new value of the slider and a bool that is true if the slider was used.
		 */
		std::tuple<float, bool> slider_float(string label, float v, float v_min, float v_max);

		/**
		 * @brief Creates a slider for integer values.
		 *
		 * This function creates a slider to select an integer value within a specified range.
		 *
		 * @param label The label of the slider.
		 * @param v The initial value of the slider.
		 * @param v_min The minimum value of the slider.
		 * @param v_max The maximum value of the slider.
		 * @return Returns a tuple containing the new value of the slider and a bool that is true if the slider was used.
		 */
		std::tuple<int, bool> slider_int(string label, int v, int v_min, int v_max);

		/**
		 * @brief Draws a sub-title text.
		 *
		 * This function draws a text used as a sub-title in the GUI.
		 *
		 * @param text The text to be displayed as a sub-title.
		 */
		void sub_title(string text);
	}

	namespace themes {
		void apply(ImGuiStyle style);
		ImGuiStyle get_default_style(string name);
		ImGuiStyle get_requiem_style(string name);
		ImGuiStyle get_current_style(string name);
		void reset();
	}
}

namespace fs {
	/**
	 * @brief Retrieves the directory path of the Requiem Engine project.
	 *
	 * @return A string representing the absolute path to the Requiem Engine project directory.
	 */
	string get_project_dir();

	/**
	 * @brief Retrieves a subdirectory path within the Requiem Engine directory structure.
	 *
	 * This function constructs the path to a specified subdirectory within the `%programdata%\Requiem` directory.
	 *
	 * @param dir The name of the subdirectory to retrieve.
	 * @return A string representing the absolute path to the specified subdirectory.
	 */
	string get_project_sub_dir(string dir);

	/**
	 * @brief Retrieves the path to the directory containing the currently executed Lua script.
	 *
	 * @return A string representing the absolute path to the directory of the current Lua script.
	 */
	string get_script_dir();

	bool dir_empty(string path);
	bool dir_exist(string path);
	bool file_empty(string path);
	bool file_exist(string path);

	void dir_check(string path);
	void dir_copy(string from, string to);
	void dir_create(string path);
	void dir_remove(string path);
	void file_check(string path);
	void file_copy(string from, string to);
	void file_create(string path);
	void file_remove(string path);
}

namespace script {
	void register_script(string name, function fn);
	void unregister_script(string name);
	void execute_as_script(function fn);

	/**
	 * @brief Pauses the script until the next game frame.
	 *
	 * This function is essential for loop-based operations where the script must wait for a condition to be met.
	 * Using yield prevents the script from freezing the game by allowing other processes to run during the wait.
	 */
	void yield();

	/**
	 * @brief Pauses the script for a specified duration in milliseconds.
	 *
	 * Use this function to introduce a delay in script execution, which can be useful for timing actions or waiting for events.
	 *
	 * @param ms The duration of the pause in milliseconds.
	 */
	void sleep(int ms);
}

namespace scripting {
	namespace player {
		void change_model(Hash hash)
	}
}

namespace network {
	void trigger_script_event(table args, int bitset);
}

namespace memory {
	pointer pointer(uint64_t addr);
	pointer scan_pattern(string pattern);
	pointer allocate(int size);
	void free(pointer ptr);
	pointer handle_to_ptr(int entity);
	int ptr_to_handle(pointer addr);

	class pointer {
		uint64_t get_address();
		bool is_null();
		bool is_valid();
		pointer add(uint64_t offset);
		pointer sub(uint64_t offset);
		pointer rip();
		pointer deref();
		uint8_t get_byte();
		uint16_t get_word();
		uint32_t get_dword();
		uint64_t get_qword();
		float get_float();
		string get_string();
		void set_byte(uint8_t value);
		void set_word(uint16_t value);
		void set_dword(uint32_t value);
		void set_qword(uint64_t value);
		void set_float(float value);
		void set_string(string value);
	}
}

namespace globals {
	int get_int(int global);
	void set_int(int global, int value);
	int get_float(int global);
	void set_float(int global, float value);
	string get_string(int global);
	void set_string(int global, string str, int length);
}

namespace locals {
	int get_int(string scriptName, int local);
	int get_float(string scriptName, int local);
	void set_int(string scriptName, int local, int value);
	void set_float(string scriptName, int local, float value);
}

namespace rage {
	/**
	 * @brief Calculates the hash of the given string using the Jenkins one-at-a-time algorithm.
	 *
	 * This function is widely used by the game engine to get the hash values for model names,
	 * events, or other string identifiers that are required for invoking game functions.
	 *
	 * @param text The string to be hashed.
	 * @return The Jenkins hash as a uint32_t.
	 */
	uint32_t joaat(string text);
}

namespace entities {
	table<Ped> get_nearby_peds();
	table<Entity> get_nearby_objects();
	table<Vehicle> get_nearby_vehicles();
}

namespace stats {
	bool get_bool(string stat_name);
	bool get_bool_masked(string stat_name, int bit_index);
	bool get_bool_packed(int index);

	int get_int(string stat_name);
	int get_int_masked(string stat_name, int bit_index);
	int get_int_packed(int index);

	float get_float(string stat_name);
	void set_float(string stat_name, float value);

	void set_bool(string stat_name);
	void set_bool_masked(string stat_name, int value, int index);
	void set_bool_packed(int index, int value);

	void set_int(string stat_name, int value);
	void set_int_masked(string stat_name, int value, int bit_start, int bit_size);
	void set_int_packed(int index, int value);

	void set_mass_packed_bool(int min, int max, bool value);
	void set_mass_packed_int(int min, int max, bool value);

	table<bool> get_mass_packed_bool(int min, int max);
	table<int> get_mass_packed_int(int min, int max);
}

namespace http {
	/**
	* @brief Sends a GET request to the specified URL.
	* 
	* This function sends a GET request to the given URL and returns the server's response as a string.
	* 
	* @param url The URL to send the GET request to.
	* @param headers A table of headers to include in the request.
	* @return The server's response as a string or an error message.
	* 
	* @example
	* -- Lua script example for sending a GET request
 	* local response = http.get("https://httpbin.org/get", {["Accept"] = "application/json"})
	* log.warning(response)
	*/
	string get(string url, table headers);

	/**
	* @brief Sends a POST request to the specified URL.
	* 
	* This function sends a POST request to the given URL with the specified body and headers. It returns the server's response as a string.
	* 
	* @param url The URL to send the POST request to.
	* @param body The body of the POST request.
	* @param headers A table of headers to include in the request.
	* @return The server's response as a string or an error message.
	* 
	* @example
	* -- Lua script example for sending a POST request
 	* local response = http.post("https://httpbin.org/post", "field1=value1&field2=value2", {["Content-Type"] = "application/x-www-form-urlencoded"})
	* log.warning(response)
	*/
	string post(string url, string body, table headers);
}
```