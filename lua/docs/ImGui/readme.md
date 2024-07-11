---
order: -2
label: ImGui
---

## raw.imgui_api
```c++
namespace ImGui
{
	// Windows
	inline bool Begin(const std::string& name)
	{
		return ImGui::Begin(name.c_str());
	}
	inline bool Begin(const std::string& name, int flags)
	{
		return ImGui::Begin(name.c_str(), nullptr, flags);
	}
	inline std::tuple<bool, bool> Begin(const std::string& name, bool open)
	{
		if (!open)
			return std::make_tuple(false, false);
		const bool shouldDraw = ImGui::Begin(name.c_str(), &open);
		return std::make_tuple(open, open && shouldDraw);
	}
	inline std::tuple<bool, bool> Begin(const std::string& name, bool open, int flags)
	{
		if (!open)
			return std::make_tuple(false, false);
		const bool shouldDraw = ImGui::Begin(name.c_str(), &open, flags);
		return std::make_tuple(open, open && shouldDraw);
	}
	inline void End()
	{
		ImGui::End();
	}

	// Child Windows
	inline bool BeginChild(const std::string& name)
	{
		return ImGui::BeginChild(name.c_str());
	}
	inline bool BeginChild(const std::string& name, float sizeX)
	{
		return ImGui::BeginChild(name.c_str(), {sizeX, 0});
	}
	inline bool BeginChild(const std::string& name, float sizeX, float sizeY)
	{
		return ImGui::BeginChild(name.c_str(), {sizeX, sizeY});
	}
	inline bool BeginChild(const std::string& name, float sizeX, float sizeY, bool border)
	{
		return ImGui::BeginChild(name.c_str(), {sizeX, sizeY}, border);
	}
	inline bool BeginChild(const std::string& name, float sizeX, float sizeY, bool border, int flags)
	{
		return ImGui::BeginChild(name.c_str(), {sizeX, sizeY}, border, flags);
	}
	inline void EndChild()
	{
		ImGui::EndChild();
	}

	// Windows Utilities
	inline bool IsWindowAppearing()
	{
		return ImGui::IsWindowAppearing();
	}
	inline bool IsWindowCollapsed()
	{
		return ImGui::IsWindowCollapsed();
	}
	inline bool IsWindowFocused()
	{
		return ImGui::IsWindowFocused();
	}
	inline bool IsWindowFocused(int flags)
	{
		return ImGui::IsWindowFocused(flags);
	}
	inline bool IsWindowHovered()
	{
		return ImGui::IsWindowHovered();
	}
	inline bool IsWindowHovered(int flags)
	{
		return ImGui::IsWindowHovered(flags);
	}
	inline ImDrawList* GetWindowDrawList()
	{
		return ImGui::GetWindowDrawList();
	}
	inline std::tuple<float, float> GetWindowPos()
	{
		const auto vec2{ImGui::GetWindowPos()};
		return std::make_tuple(vec2.x, vec2.y);
	}
	inline std::tuple<float, float> GetWindowSize()
	{
		const auto vec2{ImGui::GetWindowSize()};
		return std::make_tuple(vec2.x, vec2.y);
	}
	inline float GetWindowWidth()
	{
		return ImGui::GetWindowWidth();
	}
	inline float GetWindowHeight()
	{
		return ImGui::GetWindowHeight();
	}

	// Prefer using SetNext...
	inline void SetNextWindowPos(float posX, float posY)
	{
		ImGui::SetNextWindowPos({posX, posY});
	}
	inline void SetNextWindowPos(float posX, float posY, int cond)
	{
		ImGui::SetNextWindowPos({posX, posY}, cond);
	}
	inline void SetNextWindowPos(float posX, float posY, int cond, float pivotX, float pivotY)
	{
		ImGui::SetNextWindowPos({posX, posY}, cond, {pivotX, pivotY});
	}
	inline void SetNextWindowSize(float sizeX, float sizeY)
	{
		ImGui::SetNextWindowSize({sizeX, sizeY});
	}
	inline void SetNextWindowSize(float sizeX, float sizeY, int cond)
	{
		ImGui::SetNextWindowSize({sizeX, sizeY}, cond);
	}
	inline void SetNextWindowSizeConstraints(float minX, float minY, float maxX, float maxY)
	{
		ImGui::SetNextWindowSizeConstraints({minX, minY}, {maxX, maxY});
	}
	inline void SetNextWindowContentSize(float sizeX, float sizeY)
	{
		ImGui::SetNextWindowContentSize({sizeX, sizeY});
	}
	inline void SetNextWindowCollapsed(bool collapsed)
	{
		ImGui::SetNextWindowCollapsed(collapsed);
	}
	inline void SetNextWindowCollapsed(bool collapsed, int cond)
	{
		ImGui::SetNextWindowCollapsed(collapsed, cond);
	}
	inline void SetNextWindowFocus()
	{
		ImGui::SetNextWindowFocus();
	}
	inline void SetNextWindowBgAlpha(float alpha)
	{
		ImGui::SetNextWindowBgAlpha(alpha);
	}
	inline void SetWindowPos(float posX, float posY)
	{
		ImGui::SetWindowPos({posX, posY});
	}
	inline void SetWindowPos(float posX, float posY, int cond)
	{
		ImGui::SetWindowPos({posX, posY}, cond);
	}
	inline void SetWindowSize(float sizeX, float sizeY)
	{
		ImGui::SetWindowSize({sizeX, sizeY});
	}
	inline void SetWindowSize(float sizeX, float sizeY, int cond)
	{
		ImGui::SetWindowSize({sizeX, sizeY}, cond);
	}
	inline void SetWindowCollapsed(bool collapsed)
	{
		ImGui::SetWindowCollapsed(collapsed);
	}
	inline void SetWindowCollapsed(bool collapsed, int cond)
	{
		ImGui::SetWindowCollapsed(collapsed, cond);
	}
	inline void SetWindowFocus()
	{
		ImGui::SetWindowFocus();
	}
	inline void SetWindowFontScale(float scale)
	{
		ImGui::SetWindowFontScale(scale);
	}
	inline void SetWindowPos(const std::string& name, float posX, float posY)
	{
		ImGui::SetWindowPos(name.c_str(), {posX, posY});
	}
	inline void SetWindowPos(const std::string& name, float posX, float posY, int cond)
	{
		ImGui::SetWindowPos(name.c_str(), {posX, posY}, cond);
	}
	inline void SetWindowSize(const std::string& name, float sizeX, float sizeY)
	{
		ImGui::SetWindowSize(name.c_str(), {sizeX, sizeY});
	}
	inline void SetWindowSize(const std::string& name, float sizeX, float sizeY, int cond)
	{
		ImGui::SetWindowSize(name.c_str(), {sizeX, sizeY}, cond);
	}
	inline void SetWindowCollapsed(const std::string& name, bool collapsed)
	{
		ImGui::SetWindowCollapsed(name.c_str(), collapsed);
	}
	inline void SetWindowCollapsed(const std::string& name, bool collapsed, int cond)
	{
		ImGui::SetWindowCollapsed(name.c_str(), collapsed, cond);
	}
	inline void SetWindowFocus(const std::string& name)
	{
		ImGui::SetWindowFocus(name.c_str());
	}

	// Content Region
	inline std::tuple<float, float> GetContentRegionMax()
	{
		const auto vec2{ImGui::GetContentRegionMax()};
		return std::make_tuple(vec2.x, vec2.y);
	}
	inline std::tuple<float, float> GetContentRegionAvail()
	{
		const auto vec2{ImGui::GetContentRegionAvail()};
		return std::make_tuple(vec2.x, vec2.y);
	}
	inline std::tuple<float, float> GetWindowContentRegionMin()
	{
		const auto vec2{ImGui::GetWindowContentRegionMin()};
		return std::make_tuple(vec2.x, vec2.y);
	}
	inline std::tuple<float, float> GetWindowContentRegionMax()
	{
		const auto vec2{ImGui::GetWindowContentRegionMax()};
		return std::make_tuple(vec2.x, vec2.y);
	}

	// Windows Scrolling
	inline float GetScrollX()
	{
		return ImGui::GetScrollX();
	}
	inline float GetScrollY()
	{
		return ImGui::GetScrollY();
	}
	inline float GetScrollMaxX()
	{
		return ImGui::GetScrollMaxX();
	}
	inline float GetScrollMaxY()
	{
		return ImGui::GetScrollMaxY();
	}
	inline void SetScrollX(float scrollX)
	{
		ImGui::SetScrollX(scrollX);
	}
	inline void SetScrollY(float scrollY)
	{
		ImGui::SetScrollY(scrollY);
	}
	inline void SetScrollHereX()
	{
		ImGui::SetScrollHereX();
	}
	inline void SetScrollHereX(float centerXRatio)
	{
		ImGui::SetScrollHereX(centerXRatio);
	}
	inline void SetScrollHereY()
	{
		ImGui::SetScrollHereY();
	}
	inline void SetScrollHereY(float centerYRatio)
	{
		ImGui::SetScrollHereY(centerYRatio);
	}
	inline void SetScrollFromPosX(float localX)
	{
		ImGui::SetScrollFromPosX(localX);
	}
	inline void SetScrollFromPosX(float localX, float centerXRatio)
	{
		ImGui::SetScrollFromPosX(localX, centerXRatio);
	}
	inline void SetScrollFromPosY(float localY)
	{
		ImGui::SetScrollFromPosY(localY);
	}
	inline void SetScrollFromPosY(float localY, float centerYRatio)
	{
		ImGui::SetScrollFromPosY(localY, centerYRatio);
	}

// Parameters stacks (shared)
#ifdef SOL_IMGUI_ENABLE_FONT_MANIPULATORS
	inline void PushFont(ImFont* pFont)
	{
		ImGui::PushFont(pFont);
	}
	inline void PopFont()
	{
		ImGui::PopFont();
	}
#endif // SOL_IMGUI_ENABLE_FONT_MANIPULATORS
	inline void PushStyleColor(int idx, int col)
	{
		ImGui::PushStyleColor(idx, static_cast<ImU32>(col));
	}
	inline void PushStyleColor(int idx, float colR, float colG, float colB, float colA)
	{
		ImGui::PushStyleColor(idx, {colR, colG, colB, colA});
	}
	inline void PopStyleColor()
	{
		ImGui::PopStyleColor();
	}
	inline void PopStyleColor(int count)
	{
		ImGui::PopStyleColor(count);
	}
	inline void PushStyleVar(int idx, float val)
	{
		ImGui::PushStyleVar(idx, val);
	}
	inline void PushStyleVar(int idx, float valX, float valY)
	{
		ImGui::PushStyleVar(idx, {valX, valY});
	}
	inline void PopStyleVar()
	{
		ImGui::PopStyleVar();
	}
	inline void PopStyleVar(int count)
	{
		ImGui::PopStyleVar(count);
	}
	inline std::tuple<float, float, float, float> GetStyleColorVec4(int idx)
	{
		const auto col{ImGui::GetStyleColorVec4(idx)};
		return std::make_tuple(col.x, col.y, col.z, col.w);
	}
#ifdef SOL_IMGUI_ENABLE_FONT_MANIPULATORS
	inline ImFont* GetFont()
	{
		return ImGui::GetFont();
	}
#endif // SOL_IMGUI_ENABLE_FONT_MANIPULATORS
	inline float GetFontSize()
	{
		return ImGui::GetFontSize();
	}
	inline std::tuple<float, float> GetFontTexUvWhitePixel()
	{
		const auto vec2{ImGui::GetFontTexUvWhitePixel()};
		return std::make_tuple(vec2.x, vec2.y);
	}
	inline int GetColorU32(int idx, float alphaMul)
	{
		return ImGui::GetColorU32(idx, alphaMul);
	}
	inline int GetColorU32(float colR, float colG, float colB, float colA)
	{
		return ImGui::GetColorU32({colR, colG, colB, colA});
	}
	inline int GetColorU32(int col)
	{
		return ImGui::GetColorU32(static_cast<ImU32>(col));
	}

	// Parameters stacks (current window)
	inline void PushItemWidth(float itemWidth)
	{
		ImGui::PushItemWidth(itemWidth);
	}
	inline void PopItemWidth()
	{
		ImGui::PopItemWidth();
	}
	inline void SetNextItemWidth(float itemWidth)
	{
		ImGui::SetNextItemWidth(itemWidth);
	}
	inline float CalcItemWidth()
	{
		return ImGui::CalcItemWidth();
	}
	inline void PushTextWrapPos()
	{
		ImGui::PushTextWrapPos();
	}
	inline void PushTextWrapPos(float wrapLocalPosX)
	{
		ImGui::PushTextWrapPos(wrapLocalPosX);
	}
	inline void PopTextWrapPos()
	{
		ImGui::PopTextWrapPos();
	}
	inline void PushAllowKeyboardFocus(bool allowKeyboardFocus)
	{
		ImGui::PushAllowKeyboardFocus(allowKeyboardFocus);
	}
	inline void PopAllowKeyboardFocus()
	{
		ImGui::PopAllowKeyboardFocus();
	}
	inline void PushButtonRepeat(bool repeat)
	{
		ImGui::PushButtonRepeat(repeat);
	}
	inline void PopButtonRepeat()
	{
		ImGui::PopButtonRepeat();
	}

	// Cursor / Layout
	inline void Separator()
	{
		ImGui::Separator();
	}
	inline void SameLine()
	{
		ImGui::SameLine();
	}
	inline void SameLine(float offsetFromStartX)
	{
		ImGui::SameLine(offsetFromStartX);
	}
	inline void SameLine(float offsetFromStartX, float spacing)
	{
		ImGui::SameLine(offsetFromStartX, spacing);
	}
	inline void NewLine()
	{
		ImGui::NewLine();
	}
	inline void Spacing()
	{
		ImGui::Spacing();
	}
	inline void Dummy(float sizeX, float sizeY)
	{
		ImGui::Dummy({sizeX, sizeY});
	}
	inline void Indent()
	{
		ImGui::Indent();
	}
	inline void Indent(float indentW)
	{
		ImGui::Indent(indentW);
	}
	inline void Unindent()
	{
		ImGui::Unindent();
	}
	inline void Unindent(float indentW)
	{
		ImGui::Unindent(indentW);
	}
	inline void BeginGroup()
	{
		ImGui::BeginGroup();
	}
	inline void EndGroup()
	{
		ImGui::EndGroup();
	}
	inline std::tuple<float, float> GetCursorPos()
	{
		const auto vec2{ImGui::GetCursorPos()};
		return std::make_tuple(vec2.x, vec2.y);
	}
	inline float GetCursorPosX()
	{
		return ImGui::GetCursorPosX();
	}
	inline float GetCursorPosY()
	{
		return ImGui::GetCursorPosY();
	}
	inline void SetCursorPos(float localX, float localY)
	{
		ImGui::SetCursorPos({localX, localY});
	}
	inline void SetCursorPosX(float localX)
	{
		ImGui::SetCursorPosX(localX);
	}
	inline void SetCursorPosY(float localY)
	{
		ImGui::SetCursorPosY(localY);
	}
	inline std::tuple<float, float> GetCursorStartPos()
	{
		const auto vec2{ImGui::GetCursorStartPos()};
		return std::make_tuple(vec2.x, vec2.y);
	}
	inline std::tuple<float, float> GetCursorScreenPos()
	{
		const auto vec2{ImGui::GetCursorScreenPos()};
		return std::make_tuple(vec2.x, vec2.y);
	}
	inline void SetCursorScreenPos(float posX, float posY)
	{
		ImGui::SetCursorScreenPos({posX, posY});
	}
	inline void AlignTextToFramePadding()
	{
		ImGui::AlignTextToFramePadding();
	}
	inline float GetTextLineHeight()
	{
		return ImGui::GetTextLineHeight();
	}
	inline float GetTextLineHeightWithSpacing()
	{
		return ImGui::GetTextLineHeightWithSpacing();
	}
	inline float GetFrameHeight()
	{
		return ImGui::GetFrameHeight();
	}
	inline float GetFrameHeightWithSpacing()
	{
		return ImGui::GetFrameHeightWithSpacing();
	}

	// ID stack / scopes
	inline void PushID(const std::string& stringID)
	{
		ImGui::PushID(stringID.c_str());
	}
	inline void PushID(int intID)
	{
		ImGui::PushID(intID);
	}
	inline void PopID()
	{
		ImGui::PopID();
	}
	inline int GetID(const std::string& stringID)
	{
		return ImGui::GetID(stringID.c_str());
	}

	// Widgets: Text
	inline void TextUnformatted(const std::string& text)
	{
		ImGui::TextUnformatted(text.c_str());
	}
	inline void Text(const std::string& text)
	{
		ImGui::TextUnformatted(text.c_str());
	} // TODO - make this proper call to ImGui::Text, allowing real formatting!
	inline void TextColored(float colR, float colG, float colB, float colA, const std::string& text)
	{
		ImGui::TextColored({colR, colG, colB, colA},
		"%s", text.c_str());
	}
	inline void TextDisabled(const std::string& text)
	{
		ImGui::TextDisabled("%s", text.c_str());
	}
	inline void TextWrapped(const std::string& text)
	{
		ImGui::TextWrapped("%s", text.c_str());
	}
	inline void LabelText(const std::string& label, const std::string& text)
	{
		ImGui::LabelText(label.c_str(),
		"%s", text.c_str());
	}
	inline void BulletText(const std::string& text)
	{
		ImGui::BulletText("%s", text.c_str());
	}
	inline void SeparatorText(const std::string& text)
	{
		ImGui::SeparatorText(text.c_str());
	}

	// Widgets: Main
	inline bool Button(const std::string& label)
	{
		return ImGui::Button(label.c_str());
	}
	inline bool Button(const std::string& label, float sizeX, float sizeY)
	{
		return ImGui::Button(label.c_str(), {sizeX, sizeY});
	}
	inline bool SmallButton(const std::string& label)
	{
		return ImGui::SmallButton(label.c_str());
	}
	inline bool InvisibleButton(const std::string& stringID, float sizeX, float sizeY)
	{
		return ImGui::InvisibleButton(stringID.c_str(), {sizeX, sizeY});
	}
	inline bool ArrowButton(const std::string& stringID, int dir)
	{
		return ImGui::ArrowButton(stringID.c_str(), static_cast<ImGuiDir>(dir));
	}
	inline void Image()
	{ /* TODO: Image(...) ==> UNSUPPORTED */
	}
	inline void ImageButton()
	{ /* TODO: ImageButton(...) ==> UNSUPPORTED */
	}
	inline std::tuple<bool, bool> Checkbox(const std::string& label, bool v)
	{
		bool value{v};
		bool pressed = ImGui::Checkbox(label.c_str(), &value);

		return std::make_tuple(value, pressed);
	}
	inline bool CheckboxFlags()
	{
		return false; /* TODO: CheckboxFlags(...) ==> UNSUPPORTED */
	}
	inline bool RadioButton(const std::string& label, bool active)
	{
		return ImGui::RadioButton(label.c_str(), active);
	}
	inline std::tuple<int, bool> RadioButton(const std::string& label, int v, int vButton)
	{
		bool ret{ImGui::RadioButton(label.c_str(), &v, vButton)};
		return std::make_tuple(v, ret);
	}
	inline void ProgressBar(float fraction)
	{
		ImGui::ProgressBar(fraction);
	}
	inline void ProgressBar(float fraction, float sizeX, float sizeY)
	{
		ImGui::ProgressBar(fraction, {sizeX, sizeY});
	}
	inline void ProgressBar(float fraction, float sizeX, float sizeY, const std::string& overlay)
	{
		ImGui::ProgressBar(fraction, {sizeX, sizeY}, overlay.c_str());
	}
	inline void Bullet()
	{
		ImGui::Bullet();
	}

	// Widgets: Combo Box
	inline bool BeginCombo(const std::string& label, const std::string& previewValue)
	{
		return ImGui::BeginCombo(label.c_str(), previewValue.c_str());
	}
	inline bool BeginCombo(const std::string& label, const std::string& previewValue, int flags)
	{
		return ImGui::BeginCombo(label.c_str(), previewValue.c_str(), flags);
	}
	inline void EndCombo()
	{
		ImGui::EndCombo();
	}
	inline std::tuple<int, bool> Combo(const std::string& label, int currentItem, const sol::table& items, int itemsCount)
	{
		std::vector<std::string> strings;
		strings.reserve(itemsCount);
		std::vector<const char*> cstrings;
		cstrings.reserve(itemsCount);
		for (int i{1}; i <= itemsCount; i++)
		{
			const auto& stringItem = items.get<sol::optional<std::string>>(i);
			cstrings.emplace_back(strings.emplace_back(std::move(stringItem.value_or("Missing"))).c_str());
		}

		bool clicked = ImGui::Combo(label.c_str(), &currentItem, cstrings.data(), itemsCount);
		return std::make_tuple(currentItem, clicked);
	}
	inline std::tuple<int, bool> Combo(const std::string& label, int currentItem, const sol::table& items, int itemsCount, int popupMaxHeightInItems)
	{
		std::vector<std::string> strings;
		strings.reserve(itemsCount);
		std::vector<const char*> cstrings;
		cstrings.reserve(itemsCount);
		for (int i{1}; i <= itemsCount; i++)
		{
			const auto& stringItem = items.get<sol::optional<std::string>>(i);
			cstrings.emplace_back(strings.emplace_back(std::move(stringItem.value_or("Missing"))).c_str());
		}

		bool clicked = ImGui::Combo(label.c_str(), &currentItem, cstrings.data(), itemsCount, popupMaxHeightInItems);
		return std::make_tuple(currentItem, clicked);
	}
	inline std::tuple<int, bool> Combo(const std::string& label, int currentItem, const std::string& itemsSeparatedByZeros)
	{
		bool clicked = ImGui::Combo(label.c_str(), &currentItem, itemsSeparatedByZeros.c_str());
		return std::make_tuple(currentItem, clicked);
	}
	inline std::tuple<int, bool> Combo(const std::string& label, int currentItem, const std::string& itemsSeparatedByZeros, int popupMaxHeightInItems)
	{
		bool clicked = ImGui::Combo(label.c_str(), &currentItem, itemsSeparatedByZeros.c_str(), popupMaxHeightInItems);
		return std::make_tuple(currentItem, clicked);
	}
	// TODO: 3rd Combo from ImGui not Supported

	// Widgets: Drags
	inline std::tuple<float, bool> DragFloat(const std::string& label, float v)
	{
		bool used = ImGui::DragFloat(label.c_str(), &v);
		return std::make_tuple(v, used);
	}
	inline std::tuple<float, bool> DragFloat(const std::string& label, float v, float v_speed)
	{
		bool used = ImGui::DragFloat(label.c_str(), &v, v_speed);
		return std::make_tuple(v, used);
	}
	inline std::tuple<float, bool> DragFloat(const std::string& label, float v, float v_speed, float v_min)
	{
		bool used = ImGui::DragFloat(label.c_str(), &v, v_speed, v_min);
		return std::make_tuple(v, used);
	}
	inline std::tuple<float, bool> DragFloat(const std::string& label, float v, float v_speed, float v_min, float v_max)
	{
		bool used = ImGui::DragFloat(label.c_str(), &v, v_speed, v_min, v_max);
		return std::make_tuple(v, used);
	}
	inline std::tuple<float, bool> DragFloat(const std::string& label, float v, float v_speed, float v_min, float v_max, const std::string& format)
	{
		bool used = ImGui::DragFloat(label.c_str(), &v, v_speed, v_min, v_max, format.c_str());
		return std::make_tuple(v, used);
	}
	inline std::tuple<float, bool> DragFloat(const std::string& label, float v, float v_speed, float v_min, float v_max, const std::string& format, int flags)
	{
		bool used = ImGui::DragFloat(label.c_str(), &v, v_speed, v_min, v_max, format.c_str(), flags);
		return std::make_tuple(v, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> DragFloat2(const std::string& label, const sol::table& v)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[2] = {static_cast<float>(v1), static_cast<float>(v2)};
		bool used      = ImGui::DragFloat2(label.c_str(), value);

		sol::as_table_t float2 = sol::as_table(std::vector<float>{value[0], value[1]});

		return std::make_tuple(float2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> DragFloat2(const std::string& label, const sol::table& v, float v_speed)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[2] = {static_cast<float>(v1), static_cast<float>(v2)};
		bool used      = ImGui::DragFloat2(label.c_str(), value, v_speed);

		sol::as_table_t float2 = sol::as_table(std::vector<float>{value[0], value[1]});

		return std::make_tuple(float2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> DragFloat2(const std::string& label, const sol::table& v, float v_speed, float v_min)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[2] = {static_cast<float>(v1), static_cast<float>(v2)};
		bool used      = ImGui::DragFloat2(label.c_str(), value, v_speed, v_min);

		sol::as_table_t float2 = sol::as_table(std::vector<float>{value[0], value[1]});

		return std::make_tuple(float2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> DragFloat2(const std::string& label, const sol::table& v, float v_speed, float v_min, float v_max)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[2] = {static_cast<float>(v1), static_cast<float>(v2)};
		bool used      = ImGui::DragFloat2(label.c_str(), value, v_speed, v_min, v_max);

		sol::as_table_t float2 = sol::as_table(std::vector<float>{value[0], value[1]});

		return std::make_tuple(float2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> DragFloat2(const std::string& label, const sol::table& v, float v_speed, float v_min, float v_max, const std::string& format)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[2] = {static_cast<float>(v1), static_cast<float>(v2)};
		bool used      = ImGui::DragFloat2(label.c_str(), value, v_speed, v_min, v_max, format.c_str());

		sol::as_table_t float2 = sol::as_table(std::vector<float>{value[0], value[1]});

		return std::make_tuple(float2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> DragFloat2(const std::string& label, const sol::table& v, float v_speed, float v_min, float v_max, const std::string& format, int flags)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[2] = {static_cast<float>(v1), static_cast<float>(v2)};
		bool used      = ImGui::DragFloat2(label.c_str(), value, v_speed, v_min, v_max, format.c_str(), flags);

		sol::as_table_t float2 = sol::as_table(std::vector<float>{value[0], value[1]});

		return std::make_tuple(float2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> DragFloat3(const std::string& label, const sol::table& v)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[3] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3)};
		bool used      = ImGui::DragFloat3(label.c_str(), value);

		sol::as_table_t float3 = sol::as_table(std::vector<float>{value[0], value[1], value[2]});

		return std::make_tuple(float3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> DragFloat3(const std::string& label, const sol::table& v, float v_speed)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[3] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3)};
		bool used      = ImGui::DragFloat3(label.c_str(), value, v_speed);

		sol::as_table_t float3 = sol::as_table(std::vector<float>{value[0], value[1], value[2]});

		return std::make_tuple(float3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> DragFloat3(const std::string& label, const sol::table& v, float v_speed, float v_min)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[3] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3)};
		bool used      = ImGui::DragFloat3(label.c_str(), value, v_speed, v_min);

		sol::as_table_t float3 = sol::as_table(std::vector<float>{value[0], value[1], value[2]});

		return std::make_tuple(float3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> DragFloat3(const std::string& label, const sol::table& v, float v_speed, float v_min, float v_max)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[3] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3)};
		bool used      = ImGui::DragFloat3(label.c_str(), value, v_speed, v_min, v_max);

		sol::as_table_t float3 = sol::as_table(std::vector<float>{value[0], value[1], value[2]});

		return std::make_tuple(float3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> DragFloat3(const std::string& label, const sol::table& v, float v_speed, float v_min, float v_max, const std::string& format)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[3] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3)};
		bool used      = ImGui::DragFloat3(label.c_str(), value, v_speed, v_min, v_max, format.c_str());

		sol::as_table_t float3 = sol::as_table(std::vector<float>{value[0], value[1], value[2]});

		return std::make_tuple(float3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> DragFloat3(const std::string& label, const sol::table& v, float v_speed, float v_min, float v_max, const std::string& format, int flags)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[3] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3)};
		bool used      = ImGui::DragFloat3(label.c_str(), value, v_speed, v_min, v_max, format.c_str(), flags);

		sol::as_table_t float3 = sol::as_table(std::vector<float>{value[0], value[1], value[2]});

		return std::make_tuple(float3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> DragFloat4(const std::string& label, const sol::table& v)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[4] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3), static_cast<float>(v4)};
		bool used = ImGui::DragFloat4(label.c_str(), value);

		sol::as_table_t float4 = sol::as_table(std::vector<float>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(float4, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> DragFloat4(const std::string& label, const sol::table& v, float v_speed)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[4] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3), static_cast<float>(v4)};
		bool used = ImGui::DragFloat4(label.c_str(), value, v_speed);

		sol::as_table_t float4 = sol::as_table(std::vector<float>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(float4, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> DragFloat4(const std::string& label, const sol::table& v, float v_speed, float v_min)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[4] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3), static_cast<float>(v4)};
		bool used = ImGui::DragFloat4(label.c_str(), value, v_speed, v_min);

		sol::as_table_t float4 = sol::as_table(std::vector<float>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(float4, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> DragFloat4(const std::string& label, const sol::table& v, float v_speed, float v_min, float v_max)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[4] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3), static_cast<float>(v4)};
		bool used = ImGui::DragFloat4(label.c_str(), value, v_speed, v_min, v_max);

		sol::as_table_t float4 = sol::as_table(std::vector<float>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(float4, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> DragFloat4(const std::string& label, const sol::table& v, float v_speed, float v_min, float v_max, const std::string& format)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[4] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3), static_cast<float>(v4)};
		bool used = ImGui::DragFloat4(label.c_str(), value, v_speed, v_min, v_max, format.c_str());

		sol::as_table_t float4 = sol::as_table(std::vector<float>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(float4, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> DragFloat4(const std::string& label, const sol::table& v, float v_speed, float v_min, float v_max, const std::string& format, int flags)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[4] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3), static_cast<float>(v4)};
		bool used = ImGui::DragFloat4(label.c_str(), value, v_speed, v_min, v_max, format.c_str(), flags);

		sol::as_table_t float4 = sol::as_table(std::vector<float>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(float4, used);
	}
	inline void DragFloatRange2()
	{ /* TODO: DragFloatRange2(...) ==> UNSUPPORTED */
	}
	inline std::tuple<int, bool> DragInt(const std::string& label, int v)
	{
		bool used = ImGui::DragInt(label.c_str(), &v);
		return std::make_tuple(v, used);
	}
	inline std::tuple<int, bool> DragInt(const std::string& label, int v, float v_speed)
	{
		bool used = ImGui::DragInt(label.c_str(), &v, v_speed);
		return std::make_tuple(v, used);
	}
	inline std::tuple<int, bool> DragInt(const std::string& label, int v, float v_speed, int v_min)
	{
		bool used = ImGui::DragInt(label.c_str(), &v, v_speed, v_min);
		return std::make_tuple(v, used);
	}
	inline std::tuple<int, bool> DragInt(const std::string& label, int v, float v_speed, int v_min, int v_max)
	{
		bool used = ImGui::DragInt(label.c_str(), &v, v_speed, v_min, v_max);
		return std::make_tuple(v, used);
	}
	inline std::tuple<int, bool> DragInt(const std::string& label, int v, float v_speed, int v_min, int v_max, const std::string& format)
	{
		bool used = ImGui::DragInt(label.c_str(), &v, v_speed, v_min, v_max, format.c_str());
		return std::make_tuple(v, used);
	}
	inline std::tuple<int, bool> DragInt(const std::string& label, int v, float v_speed, int v_min, int v_max, const std::string& format, int flags)
	{
		bool used = ImGui::DragInt(label.c_str(), &v, v_speed, v_min, v_max, format.c_str(), flags);
		return std::make_tuple(v, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> DragInt2(const std::string& label, const sol::table& v)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[2] = {static_cast<int>(v1), static_cast<int>(v2)};
		bool used    = ImGui::DragInt2(label.c_str(), value);

		sol::as_table_t int2 = sol::as_table(std::vector<int>{value[0], value[1]});

		return std::make_tuple(int2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> DragInt2(const std::string& label, const sol::table& v, float v_speed)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[2] = {static_cast<int>(v1), static_cast<int>(v2)};
		bool used    = ImGui::DragInt2(label.c_str(), value, v_speed);

		sol::as_table_t int2 = sol::as_table(std::vector<int>{value[0], value[1]});

		return std::make_tuple(int2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> DragInt2(const std::string& label, const sol::table& v, float v_speed, int v_min)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[2] = {static_cast<int>(v1), static_cast<int>(v2)};
		bool used    = ImGui::DragInt2(label.c_str(), value, v_speed, v_min);

		sol::as_table_t int2 = sol::as_table(std::vector<int>{value[0], value[1]});

		return std::make_tuple(int2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> DragInt2(const std::string& label, const sol::table& v, float v_speed, int v_min, int v_max)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[2] = {static_cast<int>(v1), static_cast<int>(v2)};
		bool used    = ImGui::DragInt2(label.c_str(), value, v_speed, v_min, v_max);

		sol::as_table_t int2 = sol::as_table(std::vector<int>{value[0], value[1]});

		return std::make_tuple(int2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> DragInt2(const std::string& label, const sol::table& v, float v_speed, int v_min, int v_max, const std::string& format)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[2] = {static_cast<int>(v1), static_cast<int>(v2)};
		bool used    = ImGui::DragInt2(label.c_str(), value, v_speed, v_min, v_max, format.c_str());

		sol::as_table_t int2 = sol::as_table(std::vector<int>{value[0], value[1]});

		return std::make_tuple(int2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> DragInt2(const std::string& label, const sol::table& v, float v_speed, int v_min, int v_max, const std::string& format, int flags)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[2] = {static_cast<int>(v1), static_cast<int>(v2)};
		bool used    = ImGui::DragInt2(label.c_str(), value, v_speed, v_min, v_max, format.c_str(), flags);

		sol::as_table_t int2 = sol::as_table(std::vector<int>{value[0], value[1]});

		return std::make_tuple(int2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> DragInt3(const std::string& label, const sol::table& v)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[3] = {static_cast<int>(v1), static_cast<int>(v2), static_cast<int>(v3)};
		bool used    = ImGui::DragInt3(label.c_str(), value);

		sol::as_table_t int3 = sol::as_table(std::vector<int>{value[0], value[1], value[2]});

		return std::make_tuple(int3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> DragInt3(const std::string& label, const sol::table& v, float v_speed)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[3] = {static_cast<int>(v1), static_cast<int>(v2), static_cast<int>(v3)};
		bool used    = ImGui::DragInt3(label.c_str(), value, v_speed);

		sol::as_table_t int3 = sol::as_table(std::vector<int>{value[0], value[1], value[2]});

		return std::make_tuple(int3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> DragInt3(const std::string& label, const sol::table& v, float v_speed, int v_min)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[3] = {static_cast<int>(v1), static_cast<int>(v2), static_cast<int>(v3)};
		bool used    = ImGui::DragInt3(label.c_str(), value, v_speed, v_min);

		sol::as_table_t int3 = sol::as_table(std::vector<int>{value[0], value[1], value[2]});

		return std::make_tuple(int3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> DragInt3(const std::string& label, const sol::table& v, float v_speed, int v_min, int v_max)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[3] = {static_cast<int>(v1), static_cast<int>(v2), static_cast<int>(v3)};
		bool used    = ImGui::DragInt3(label.c_str(), value, v_speed, v_min, v_max);

		sol::as_table_t int3 = sol::as_table(std::vector<int>{value[0], value[1], value[2]});

		return std::make_tuple(int3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> DragInt3(const std::string& label, const sol::table& v, float v_speed, int v_min, int v_max, const std::string& format)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[3] = {static_cast<int>(v1), static_cast<int>(v2), static_cast<int>(v3)};
		bool used    = ImGui::DragInt3(label.c_str(), value, v_speed, v_min, v_max, format.c_str());

		sol::as_table_t int3 = sol::as_table(std::vector<int>{value[0], value[1], value[2]});

		return std::make_tuple(int3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> DragInt3(const std::string& label, const sol::table& v, float v_speed, int v_min, int v_max, const std::string& format, int flags)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[3] = {static_cast<int>(v1), static_cast<int>(v2), static_cast<int>(v3)};
		bool used    = ImGui::DragInt3(label.c_str(), value, v_speed, v_min, v_max, format.c_str(), flags);

		sol::as_table_t int3 = sol::as_table(std::vector<int>{value[0], value[1], value[2]});

		return std::make_tuple(int3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> DragInt4(const std::string& label, const sol::table& v)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[4] = {static_cast<int>(v1), static_cast<int>(v2), static_cast<int>(v3), static_cast<int>(v4)};
		bool used    = ImGui::DragInt4(label.c_str(), value);

		sol::as_table_t int4 = sol::as_table(std::vector<int>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(int4, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> DragInt4(const std::string& label, const sol::table& v, float v_speed)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[4] = {static_cast<int>(v1), static_cast<int>(v2), static_cast<int>(v3), static_cast<int>(v4)};
		bool used    = ImGui::DragInt4(label.c_str(), value, v_speed);

		sol::as_table_t int4 = sol::as_table(std::vector<int>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(int4, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> DragInt4(const std::string& label, const sol::table& v, float v_speed, int v_min)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[4] = {static_cast<int>(v1), static_cast<int>(v2), static_cast<int>(v3), static_cast<int>(v4)};
		bool used    = ImGui::DragInt4(label.c_str(), value, v_speed, v_min);

		sol::as_table_t int4 = sol::as_table(std::vector<int>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(int4, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> DragInt4(const std::string& label, const sol::table& v, float v_speed, int v_min, int v_max)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[4] = {static_cast<int>(v1), static_cast<int>(v2), static_cast<int>(v3), static_cast<int>(v4)};
		bool used    = ImGui::DragInt4(label.c_str(), value, v_speed, v_min, v_max);

		sol::as_table_t int4 = sol::as_table(std::vector<int>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(int4, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> DragInt4(const std::string& label, const sol::table& v, float v_speed, int v_min, int v_max, const std::string& format)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[4] = {static_cast<int>(v1), static_cast<int>(v2), static_cast<int>(v3), static_cast<int>(v4)};
		bool used    = ImGui::DragInt4(label.c_str(), value, v_speed, v_min, v_max, format.c_str());

		sol::as_table_t int4 = sol::as_table(std::vector<int>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(int4, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> DragInt4(const std::string& label, const sol::table& v, float v_speed, int v_min, int v_max, const std::string& format, int flags)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[4] = {static_cast<int>(v1), static_cast<int>(v2), static_cast<int>(v3), static_cast<int>(v4)};
		bool used    = ImGui::DragInt4(label.c_str(), value, v_speed, v_min, v_max, format.c_str(), flags);

		sol::as_table_t int4 = sol::as_table(std::vector<int>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(int4, used);
	}
	inline void DragIntRange2()
	{ /* TODO: DragIntRange2(...) ==> UNSUPPORTED */
	}
	inline void DragScalar()
	{ /* TODO: DragScalar(...) ==> UNSUPPORTED */
	}
	inline void DragScalarN()
	{ /* TODO: DragScalarN(...) ==> UNSUPPORTED */
	}

	// Widgets: Sliders
	inline std::tuple<float, bool> SliderFloat(const std::string& label, float v, float v_min, float v_max)
	{
		bool used = ImGui::SliderFloat(label.c_str(), &v, v_min, v_max);
		return std::make_tuple(v, used);
	}
	inline std::tuple<float, bool> SliderFloat(const std::string& label, float v, float v_min, float v_max, const std::string& format)
	{
		bool used = ImGui::SliderFloat(label.c_str(), &v, v_min, v_max, format.c_str());
		return std::make_tuple(v, used);
	}
	inline std::tuple<float, bool> SliderFloat(const std::string& label, float v, float v_min, float v_max, const std::string& format, int flags)
	{
		bool used = ImGui::SliderFloat(label.c_str(), &v, v_min, v_max, format.c_str(), flags);
		return std::make_tuple(v, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> SliderFloat2(const std::string& label, const sol::table& v, float v_min, float v_max)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[2] = {static_cast<float>(v1), static_cast<float>(v2)};
		bool used      = ImGui::SliderFloat2(label.c_str(), value, v_min, v_max);

		sol::as_table_t float2 = sol::as_table(std::vector<float>{value[0], value[1]});

		return std::make_tuple(float2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> SliderFloat2(const std::string& label, const sol::table& v, float v_min, float v_max, const std::string& format)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[2] = {static_cast<float>(v1), static_cast<float>(v2)};
		bool used      = ImGui::SliderFloat2(label.c_str(), value, v_min, v_max, format.c_str());

		sol::as_table_t float2 = sol::as_table(std::vector<float>{value[0], value[1]});

		return std::make_tuple(float2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> SliderFloat2(const std::string& label, const sol::table& v, float v_min, float v_max, const std::string& format, int flags)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[2] = {static_cast<float>(v1), static_cast<float>(v2)};
		bool used      = ImGui::SliderFloat2(label.c_str(), value, v_min, v_max, format.c_str(), flags);

		sol::as_table_t float2 = sol::as_table(std::vector<float>{value[0], value[1]});

		return std::make_tuple(float2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> SliderFloat3(const std::string& label, const sol::table& v, float v_min, float v_max)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[3] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3)};
		bool used      = ImGui::SliderFloat3(label.c_str(), value, v_min, v_max);

		sol::as_table_t float3 = sol::as_table(std::vector<float>{value[0], value[1], value[3]});

		return std::make_tuple(float3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> SliderFloat3(const std::string& label, const sol::table& v, float v_min, float v_max, const std::string& format)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[3] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3)};
		bool used      = ImGui::SliderFloat3(label.c_str(), value, v_min, v_max, format.c_str());

		sol::as_table_t float3 = sol::as_table(std::vector<float>{value[0], value[1], value[3]});

		return std::make_tuple(float3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> SliderFloat3(const std::string& label, const sol::table& v, float v_min, float v_max, const std::string& format, int flags)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[3] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3)};
		bool used      = ImGui::SliderFloat3(label.c_str(), value, v_min, v_max, format.c_str(), flags);

		sol::as_table_t float3 = sol::as_table(std::vector<float>{value[0], value[1], value[3]});

		return std::make_tuple(float3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> SliderFloat4(const std::string& label, const sol::table& v, float v_min, float v_max)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[4] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3), static_cast<float>(v4)};
		bool used = ImGui::SliderFloat4(label.c_str(), value, v_min, v_max);

		sol::as_table_t float4 = sol::as_table(std::vector<float>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(float4, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> SliderFloat4(const std::string& label, const sol::table& v, float v_min, float v_max, const std::string& format)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[4] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3), static_cast<float>(v4)};
		bool used = ImGui::SliderFloat4(label.c_str(), value, v_min, v_max, format.c_str());

		sol::as_table_t float4 = sol::as_table(std::vector<float>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(float4, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> SliderFloat4(const std::string& label, const sol::table& v, float v_min, float v_max, const std::string& format, int flags)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[4] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3), static_cast<float>(v4)};
		bool used = ImGui::SliderFloat4(label.c_str(), value, v_min, v_max, format.c_str(), flags);

		sol::as_table_t float4 = sol::as_table(std::vector<float>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(float4, used);
	}
	inline std::tuple<float, bool> SliderAngle(const std::string& label, float v_rad)
	{
		bool used = ImGui::SliderAngle(label.c_str(), &v_rad);
		return std::make_tuple(v_rad, used);
	}
	inline std::tuple<float, bool> SliderAngle(const std::string& label, float v_rad, float v_degrees_min)
	{
		bool used = ImGui::SliderAngle(label.c_str(), &v_rad, v_degrees_min);
		return std::make_tuple(v_rad, used);
	}
	inline std::tuple<float, bool> SliderAngle(const std::string& label, float v_rad, float v_degrees_min, float v_degrees_max)
	{
		bool used = ImGui::SliderAngle(label.c_str(), &v_rad, v_degrees_min, v_degrees_max);
		return std::make_tuple(v_rad, used);
	}
	inline std::tuple<float, bool> SliderAngle(const std::string& label, float v_rad, float v_degrees_min, float v_degrees_max, const std::string& format)
	{
		bool used = ImGui::SliderAngle(label.c_str(), &v_rad, v_degrees_min, v_degrees_max, format.c_str());
		return std::make_tuple(v_rad, used);
	}
	inline std::tuple<float, bool> SliderAngle(const std::string& label, float v_rad, float v_degrees_min, float v_degrees_max, const std::string& format, int flags)
	{
		bool used = ImGui::SliderAngle(label.c_str(), &v_rad, v_degrees_min, v_degrees_max, format.c_str(), flags);
		return std::make_tuple(v_rad, used);
	}
	inline std::tuple<int, bool> SliderInt(const std::string& label, int v, int v_min, int v_max)
	{
		bool used = ImGui::SliderInt(label.c_str(), &v, v_min, v_max);
		return std::make_tuple(v, used);
	}
	inline std::tuple<int, bool> SliderInt(const std::string& label, int v, int v_min, int v_max, const std::string& format)
	{
		bool used = ImGui::SliderInt(label.c_str(), &v, v_min, v_max, format.c_str());
		return std::make_tuple(v, used);
	}
	inline std::tuple<int, bool> SliderInt(const std::string& label, int v, int v_min, int v_max, const std::string& format, int flags)
	{
		bool used = ImGui::SliderInt(label.c_str(), &v, v_min, v_max, format.c_str(), flags);
		return std::make_tuple(v, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> SliderInt2(const std::string& label, const sol::table& v, int v_min, int v_max)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[2] = {static_cast<int>(v1), static_cast<int>(v2)};
		bool used    = ImGui::SliderInt2(label.c_str(), value, v_min, v_max);

		sol::as_table_t int2 = sol::as_table(std::vector<int>{value[0], value[1]});

		return std::make_tuple(int2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> SliderInt2(const std::string& label, const sol::table& v, int v_min, int v_max, const std::string& format)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[2] = {static_cast<int>(v1), static_cast<int>(v2)};
		bool used    = ImGui::SliderInt2(label.c_str(), value, v_min, v_max, format.c_str());

		sol::as_table_t int2 = sol::as_table(std::vector<int>{value[0], value[1]});

		return std::make_tuple(int2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> SliderInt2(const std::string& label, const sol::table& v, int v_min, int v_max, const std::string& format, int flags)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[2] = {static_cast<int>(v1), static_cast<int>(v2)};
		bool used    = ImGui::SliderInt2(label.c_str(), value, v_min, v_max, format.c_str(), flags);

		sol::as_table_t int2 = sol::as_table(std::vector<int>{value[0], value[1]});

		return std::make_tuple(int2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> SliderInt3(const std::string& label, const sol::table& v, int v_min, int v_max)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[3] = {static_cast<int>(v1), static_cast<int>(v2), static_cast<int>(v3)};
		bool used    = ImGui::SliderInt3(label.c_str(), value, v_min, v_max);

		sol::as_table_t int3 = sol::as_table(std::vector<int>{value[0], value[1], value[2]});

		return std::make_tuple(int3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> SliderInt3(const std::string& label, const sol::table& v, int v_min, int v_max, const std::string& format)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[3] = {static_cast<int>(v1), static_cast<int>(v2), static_cast<int>(v3)};
		bool used    = ImGui::SliderInt3(label.c_str(), value, v_min, v_max, format.c_str());

		sol::as_table_t int3 = sol::as_table(std::vector<int>{value[0], value[1], value[2]});

		return std::make_tuple(int3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> SliderInt3(const std::string& label, const sol::table& v, int v_min, int v_max, const std::string& format, int flags)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[3] = {static_cast<int>(v1), static_cast<int>(v2), static_cast<int>(v3)};
		bool used    = ImGui::SliderInt3(label.c_str(), value, v_min, v_max, format.c_str(), flags);

		sol::as_table_t int3 = sol::as_table(std::vector<int>{value[0], value[1], value[2]});

		return std::make_tuple(int3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> SliderInt4(const std::string& label, const sol::table& v, int v_min, int v_max)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[4] = {static_cast<int>(v1), static_cast<int>(v2), static_cast<int>(v3), static_cast<int>(v4)};
		bool used    = ImGui::SliderInt4(label.c_str(), value, v_min, v_max);

		sol::as_table_t int4 = sol::as_table(std::vector<int>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(int4, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> SliderInt4(const std::string& label, const sol::table& v, int v_min, int v_max, const std::string& format)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[4] = {static_cast<int>(v1), static_cast<int>(v2), static_cast<int>(v3), static_cast<int>(v4)};
		bool used    = ImGui::SliderInt4(label.c_str(), value, v_min, v_max, format.c_str());

		sol::as_table_t int4 = sol::as_table(std::vector<int>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(int4, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> SliderInt4(const std::string& label, const sol::table& v, int v_min, int v_max, const std::string& format, int flags)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[4] = {static_cast<int>(v1), static_cast<int>(v2), static_cast<int>(v3), static_cast<int>(v4)};
		bool used    = ImGui::SliderInt4(label.c_str(), value, v_min, v_max, format.c_str(), flags);

		sol::as_table_t int4 = sol::as_table(std::vector<int>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(int4, used);
	}
	inline void SliderScalar()
	{ /* TODO: SliderScalar(...) ==> UNSUPPORTED */
	}
	inline void SliderScalarN()
	{ /* TODO: SliderScalarN(...) ==> UNSUPPORTED */
	}
	inline std::tuple<float, bool> VSliderFloat(const std::string& label, float sizeX, float sizeY, float v, float v_min, float v_max)
	{
		bool used = ImGui::VSliderFloat(label.c_str(), {sizeX, sizeY}, &v, v_min, v_max);
		return std::make_tuple(v, used);
	}
	inline std::tuple<float, bool> VSliderFloat(const std::string& label, float sizeX, float sizeY, float v, float v_min, float v_max, const std::string& format)
	{
		bool used = ImGui::VSliderFloat(label.c_str(), {sizeX, sizeY}, &v, v_min, v_max, format.c_str());
		return std::make_tuple(v, used);
	}
	inline std::tuple<float, bool> VSliderFloat(const std::string& label, float sizeX, float sizeY, float v, float v_min, float v_max, const std::string& format, int flags)
	{
		bool used = ImGui::VSliderFloat(label.c_str(), {sizeX, sizeY}, &v, v_min, v_max, format.c_str(), flags);
		return std::make_tuple(v, used);
	}
	inline std::tuple<int, bool> VSliderInt(const std::string& label, float sizeX, float sizeY, int v, int v_min, int v_max)
	{
		bool used = ImGui::VSliderInt(label.c_str(), {sizeX, sizeY}, &v, v_min, v_max);
		return std::make_tuple(v, used);
	}
	inline std::tuple<int, bool> VSliderInt(const std::string& label, float sizeX, float sizeY, int v, int v_min, int v_max, const std::string& format)
	{
		bool used = ImGui::VSliderInt(label.c_str(), {sizeX, sizeY}, &v, v_min, v_max, format.c_str());
		return std::make_tuple(v, used);
	}
	inline std::tuple<int, bool> VSliderInt(const std::string& label, float sizeX, float sizeY, int v, int v_min, int v_max, const std::string& format, int flags)
	{
		bool used = ImGui::VSliderInt(label.c_str(), {sizeX, sizeY}, &v, v_min, v_max, format.c_str(), flags);
		return std::make_tuple(v, used);
	}
	inline void VSliderScalar()
	{ /* TODO: VSliderScalar(...) ==> UNSUPPORTED */
	}

	// Widgets: Input with Keyboard
	inline std::tuple<std::string, bool> InputText(const std::string& label, std::string text, unsigned int buf_size)
	{
		text.resize(buf_size);
		bool selected = ImGui::InputText(label.c_str(), text.data(), buf_size);
		return std::make_tuple(text.c_str(), selected);
	}
	inline std::tuple<std::string, bool> InputText(const std::string& label, std::string text, unsigned int buf_size, int flags)
	{
		text.resize(buf_size);
		bool selected = ImGui::InputText(label.c_str(), text.data(), buf_size, flags);
		return std::make_tuple(text.c_str(), selected);
	}
	inline std::tuple<std::string, bool> InputTextMultiline(const std::string& label, std::string text, unsigned int buf_size)
	{
		text.resize(buf_size);
		bool selected = ImGui::InputTextMultiline(label.c_str(), text.data(), buf_size);
		return std::make_tuple(text.c_str(), selected);
	}
	inline std::tuple<std::string, bool> InputTextMultiline(const std::string& label, std::string text, unsigned int buf_size, float sizeX, float sizeY)
	{
		text.resize(buf_size);
		bool selected = ImGui::InputTextMultiline(label.c_str(), text.data(), buf_size, {sizeX, sizeY});
		return std::make_tuple(text.c_str(), selected);
	}
	inline std::tuple<std::string, bool> InputTextMultiline(const std::string& label, std::string text, unsigned int buf_size, float sizeX, float sizeY, int flags)
	{
		text.resize(buf_size);
		bool selected = ImGui::InputTextMultiline(label.c_str(), text.data(), buf_size, {sizeX, sizeY}, flags);
		return std::make_tuple(text.c_str(), selected);
	}
	inline std::tuple<std::string, bool> InputTextWithHint(const std::string& label, const std::string& hint, std::string text, unsigned int buf_size)
	{
		text.resize(buf_size);
		bool selected = ImGui::InputTextWithHint(label.c_str(), hint.c_str(), text.data(), buf_size);
		return std::make_tuple(text.c_str(), selected);
	}
	inline std::tuple<std::string, bool> InputTextWithHint(const std::string& label, const std::string& hint, std::string text, unsigned int buf_size, int flags)
	{
		text.resize(buf_size);
		bool selected = ImGui::InputTextWithHint(label.c_str(), hint.c_str(), text.data(), buf_size, flags);
		return std::make_tuple(text.c_str(), selected);
	}
	inline std::tuple<float, bool> InputFloat(const std::string& label, float v)
	{
		bool selected = ImGui::InputFloat(label.c_str(), &v);
		return std::make_tuple(v, selected);
	}
	inline std::tuple<float, bool> InputFloat(const std::string& label, float v, float step)
	{
		bool selected = ImGui::InputFloat(label.c_str(), &v, step);
		return std::make_tuple(v, selected);
	}
	inline std::tuple<float, bool> InputFloat(const std::string& label, float v, float step, float step_fast)
	{
		bool selected = ImGui::InputFloat(label.c_str(), &v, step, step_fast);
		return std::make_tuple(v, selected);
	}
	inline std::tuple<float, bool> InputFloat(const std::string& label, float v, float step, float step_fast, const std::string& format)
	{
		bool selected = ImGui::InputFloat(label.c_str(), &v, step, step_fast, format.c_str());
		return std::make_tuple(v, selected);
	}
	inline std::tuple<float, bool> InputFloat(const std::string& label, float v, float step, float step_fast, const std::string& format, int flags)
	{
		bool selected = ImGui::InputFloat(label.c_str(), &v, step, step_fast, format.c_str(), flags);
		return std::make_tuple(v, selected);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> InputFloat2(const std::string& label, const sol::table& v)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[2] = {static_cast<float>(v1), static_cast<float>(v2)};
		bool used      = ImGui::InputFloat2(label.c_str(), value);

		sol::as_table_t float2 = sol::as_table(std::vector<float>{value[0], value[1]});

		return std::make_tuple(float2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> InputFloat2(const std::string& label, const sol::table& v, const std::string& format)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[2] = {static_cast<float>(v1), static_cast<float>(v2)};
		bool used      = ImGui::InputFloat2(label.c_str(), value, format.c_str());

		sol::as_table_t float2 = sol::as_table(std::vector<float>{value[0], value[1]});

		return std::make_tuple(float2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> InputFloat2(const std::string& label, const sol::table& v, const std::string& format, int flags)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[2] = {static_cast<float>(v1), static_cast<float>(v2)};
		bool used      = ImGui::InputFloat2(label.c_str(), value, format.c_str(), flags);

		sol::as_table_t float2 = sol::as_table(std::vector<float>{value[0], value[1]});

		return std::make_tuple(float2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> InputFloat3(const std::string& label, const sol::table& v)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[3] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3)};
		bool used      = ImGui::InputFloat3(label.c_str(), value);

		sol::as_table_t float3 = sol::as_table(std::vector<float>{value[0], value[1], value[2]});

		return std::make_tuple(float3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> InputFloat3(const std::string& label, const sol::table& v, const std::string& format)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[3] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3)};
		bool used      = ImGui::InputFloat3(label.c_str(), value, format.c_str());

		sol::as_table_t float3 = sol::as_table(std::vector<float>{value[0], value[1], value[2]});

		return std::make_tuple(float3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> InputFloat3(const std::string& label, const sol::table& v, const std::string& format, int flags)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[3] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3)};
		bool used      = ImGui::InputFloat3(label.c_str(), value, format.c_str(), flags);

		sol::as_table_t float3 = sol::as_table(std::vector<float>{value[0], value[1], value[2]});

		return std::make_tuple(float3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> InputFloat4(const std::string& label, const sol::table& v)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[4] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3), static_cast<float>(v4)};
		bool used = ImGui::InputFloat4(label.c_str(), value);

		sol::as_table_t float4 = sol::as_table(std::vector<float>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(float4, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> InputFloat4(const std::string& label, const sol::table& v, const std::string& format)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[4] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3), static_cast<float>(v4)};
		bool used = ImGui::InputFloat4(label.c_str(), value, format.c_str());

		sol::as_table_t float4 = sol::as_table(std::vector<float>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(float4, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> InputFloat4(const std::string& label, const sol::table& v, const std::string& format, int flags)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float value[4] = {static_cast<float>(v1), static_cast<float>(v2), static_cast<float>(v3), static_cast<float>(v4)};
		bool used = ImGui::InputFloat4(label.c_str(), value, format.c_str(), flags);

		sol::as_table_t float4 = sol::as_table(std::vector<float>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(float4, used);
	}
	inline std::tuple<int, bool> InputInt(const std::string& label, int v)
	{
		bool selected = ImGui::InputInt(label.c_str(), &v);
		return std::make_tuple(v, selected);
	}
	inline std::tuple<int, bool> InputInt(const std::string& label, int v, int step)
	{
		bool selected = ImGui::InputInt(label.c_str(), &v, step);
		return std::make_tuple(v, selected);
	}
	inline std::tuple<int, bool> InputInt(const std::string& label, int v, int step, int step_fast)
	{
		bool selected = ImGui::InputInt(label.c_str(), &v, step, step_fast);
		return std::make_tuple(v, selected);
	}
	inline std::tuple<int, bool> InputInt(const std::string& label, int v, int step, int step_fast, int flags)
	{
		bool selected = ImGui::InputInt(label.c_str(), &v, step, step_fast, flags);
		return std::make_tuple(v, selected);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> InputInt2(const std::string& label, const sol::table& v)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[2] = {static_cast<int>(v1), static_cast<int>(v2)};
		bool used    = ImGui::InputInt2(label.c_str(), value);

		sol::as_table_t int2 = sol::as_table(std::vector<int>{value[0], value[1]});

		return std::make_tuple(int2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> InputInt2(const std::string& label, const sol::table& v, int flags)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[2] = {static_cast<int>(v1), static_cast<int>(v2)};
		bool used    = ImGui::InputInt2(label.c_str(), value, flags);

		sol::as_table_t int2 = sol::as_table(std::vector<int>{value[0], value[1]});

		return std::make_tuple(int2, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> InputInt3(const std::string& label, const sol::table& v)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[3] = {static_cast<int>(v1), static_cast<int>(v2), static_cast<int>(v3)};
		bool used    = ImGui::InputInt3(label.c_str(), value);

		sol::as_table_t int3 = sol::as_table(std::vector<int>{value[0], value[1], value[2]});

		return std::make_tuple(int3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> InputInt3(const std::string& label, const sol::table& v, int flags)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[3] = {static_cast<int>(v1), static_cast<int>(v2), static_cast<int>(v3)};
		bool used    = ImGui::InputInt3(label.c_str(), value, flags);

		sol::as_table_t int3 = sol::as_table(std::vector<int>{value[0], value[1], value[2]});

		return std::make_tuple(int3, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> InputInt4(const std::string& label, const sol::table& v)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[4] = {static_cast<int>(v1), static_cast<int>(v2), static_cast<int>(v3), static_cast<int>(v4)};
		bool used    = ImGui::InputInt4(label.c_str(), value);

		sol::as_table_t int4 = sol::as_table(std::vector<int>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(int4, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<int>>, bool> InputInt4(const std::string& label, const sol::table& v, int flags)
	{
		const lua_Number v1{v[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v2{v[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v3{v[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    v4{v[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		int value[4] = {static_cast<int>(v1), static_cast<int>(v2), static_cast<int>(v3), static_cast<int>(v4)};
		bool used    = ImGui::InputInt4(label.c_str(), value, flags);

		sol::as_table_t int4 = sol::as_table(std::vector<int>{value[0], value[1], value[2], value[3]});

		return std::make_tuple(int4, used);
	}
	inline std::tuple<double, bool> InputDouble(const std::string& label, double v)
	{
		bool selected = ImGui::InputDouble(label.c_str(), &v);
		return std::make_tuple(v, selected);
	}
	inline std::tuple<double, bool> InputDouble(const std::string& label, double v, double step)
	{
		bool selected = ImGui::InputDouble(label.c_str(), &v, step);
		return std::make_tuple(v, selected);
	}
	inline std::tuple<double, bool> InputDouble(const std::string& label, double v, double step, double step_fast)
	{
		bool selected = ImGui::InputDouble(label.c_str(), &v, step, step_fast);
		return std::make_tuple(v, selected);
	}
	inline std::tuple<double, bool> InputDouble(const std::string& label, double v, double step, double step_fast, const std::string& format)
	{
		bool selected = ImGui::InputDouble(label.c_str(), &v, step, step_fast, format.c_str());
		return std::make_tuple(v, selected);
	}
	inline std::tuple<double, bool> InputDouble(const std::string& label, double v, double step, double step_fast, const std::string& format, int flags)
	{
		bool selected = ImGui::InputDouble(label.c_str(), &v, step, step_fast, format.c_str(), flags);
		return std::make_tuple(v, selected);
	}
	inline void InputScalar()
	{ /* TODO: InputScalar(...) ==> UNSUPPORTED */
	}
	inline void InputScalarN()
	{ /* TODO: InputScalarN(...) ==> UNSUPPORTED */
	}

	// Widgets: Color Editor / Picker
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> ColorEdit3(const std::string& label, const sol::table& col)
	{
		const lua_Number r{col[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    g{col[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    b{col[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float color[3] = {static_cast<float>(r), static_cast<float>(g), static_cast<float>(b)};
		bool used      = ImGui::ColorEdit3(label.c_str(), color);

		sol::as_table_t rgb = sol::as_table(std::vector<float>{color[0], color[1], color[2]});

		return std::make_tuple(rgb, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> ColorEdit3(const std::string& label, const sol::table& col, int flags)
	{
		const lua_Number r{col[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    g{col[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    b{col[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float color[3] = {static_cast<float>(r), static_cast<float>(g), static_cast<float>(b)};
		bool used      = ImGui::ColorEdit3(label.c_str(), color, flags);

		sol::as_table_t rgb = sol::as_table(std::vector<float>{color[0], color[1], color[2]});

		return std::make_tuple(rgb, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> ColorEdit4(const std::string& label, const sol::table& col)
	{
		const lua_Number r{col[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    g{col[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    b{col[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    a{col[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float color[4] = {static_cast<float>(r), static_cast<float>(g), static_cast<float>(b), static_cast<float>(a)};
		bool used      = ImGui::ColorEdit4(label.c_str(), color);

		sol::as_table_t rgba = sol::as_table(std::vector<float>{color[0], color[1], color[2], color[3]});

		return std::make_tuple(rgba, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> ColorEdit4(const std::string& label, const sol::table& col, int flags)
	{
		const lua_Number r{col[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    g{col[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    b{col[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    a{col[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float color[4] = {static_cast<float>(r), static_cast<float>(g), static_cast<float>(b), static_cast<float>(a)};
		bool used      = ImGui::ColorEdit4(label.c_str(), color, flags);

		sol::as_table_t rgba = sol::as_table(std::vector<float>{color[0], color[1], color[2], color[3]});

		return std::make_tuple(rgba, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> ColorPicker3(const std::string& label, const sol::table& col)
	{
		const lua_Number r{col[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    g{col[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    b{col[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float color[3] = {static_cast<float>(r), static_cast<float>(g), static_cast<float>(b)};
		bool used      = ImGui::ColorPicker3(label.c_str(), color);

		sol::as_table_t rgb = sol::as_table(std::vector<float>{color[0], color[1], color[2]});

		return std::make_tuple(rgb, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> ColorPicker3(const std::string& label, const sol::table& col, int flags)
	{
		const lua_Number r{col[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    g{col[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    b{col[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float color[3] = {static_cast<float>(r), static_cast<float>(g), static_cast<float>(b)};
		bool used      = ImGui::ColorPicker3(label.c_str(), color, flags);

		sol::as_table_t rgb = sol::as_table(std::vector<float>{color[0], color[1], color[2]});

		return std::make_tuple(rgb, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> ColorPicker4(const std::string& label, const sol::table& col)
	{
		const lua_Number r{col[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    g{col[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    b{col[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    a{col[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float color[4] = {static_cast<float>(r), static_cast<float>(g), static_cast<float>(b), static_cast<float>(a)};
		bool used      = ImGui::ColorPicker4(label.c_str(), color);

		sol::as_table_t rgba = sol::as_table(std::vector<float>{color[0], color[1], color[2], color[3]});

		return std::make_tuple(rgba, used);
	}
	inline std::tuple<sol::as_table_t<std::vector<float>>, bool> ColorPicker4(const std::string& label, const sol::table& col, int flags)
	{
		const lua_Number r{col[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    g{col[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    b{col[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    a{col[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		float color[4] = {static_cast<float>(r), static_cast<float>(g), static_cast<float>(b), static_cast<float>(a)};
		bool used      = ImGui::ColorPicker4(label.c_str(), color, flags);

		sol::as_table_t rgba = sol::as_table(std::vector<float>{color[0], color[1], color[2], color[3]});

		return std::make_tuple(rgba, used);
	}
	inline bool ColorButton(const std::string& desc_id, const sol::table& col)
	{
		const lua_Number r{col[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    g{col[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    b{col[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    a{col[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		const ImVec4 color{static_cast<float>(r), static_cast<float>(g), static_cast<float>(b), static_cast<float>(a)};
		return ImGui::ColorButton(desc_id.c_str(), color);
	}
	inline bool ColorButton(const std::string& desc_id, const sol::table& col, int flags)
	{
		const lua_Number r{col[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    g{col[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    b{col[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    a{col[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		const ImVec4 color{static_cast<float>(r), static_cast<float>(g), static_cast<float>(b), static_cast<float>(a)};
		return ImGui::ColorButton(desc_id.c_str(), color, flags);
	}
	inline bool ColorButton(const std::string& desc_id, const sol::table& col, int flags, float sizeX, float sizeY)
	{
		const lua_Number r{col[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    g{col[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    b{col[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    a{col[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};
		const ImVec4 color{static_cast<float>(r), static_cast<float>(g), static_cast<float>(b), static_cast<float>(a)};
		return ImGui::ColorButton(desc_id.c_str(), color, flags, {sizeX, sizeY});
	}
	inline void SetColorEditOptions(int flags)
	{
		ImGui::SetColorEditOptions(flags);
	}

	// Widgets: Trees
	inline bool TreeNode(const std::string& label)
	{
		return ImGui::TreeNode(label.c_str());
	}
	inline bool TreeNode(const std::string& label, const std::string& fmt)
	{
		return ImGui::TreeNode(label.c_str(),
		"%s", fmt.c_str());
	}
	/* TODO: TreeNodeV(...) (2) ==> UNSUPPORTED */
	inline bool TreeNodeEx(const std::string& label)
	{
		return ImGui::TreeNodeEx(label.c_str());
	}
	inline bool TreeNodeEx(const std::string& label, int flags)
	{
		return ImGui::TreeNodeEx(label.c_str(), flags);
	}
	inline bool TreeNodeEx(const std::string& label, int flags, const std::string& fmt)
	{
		return ImGui::TreeNodeEx(label.c_str(), flags,
		"%s", fmt.c_str());
	}
	/* TODO: TreeNodeExV(...) (2) ==> UNSUPPORTED */
	inline void TreePush(const std::string& str_id)
	{
		ImGui::TreePush(str_id.c_str());
	}
	/* TODO: TreePush(const void*) ==> UNSUPPORTED */
	inline void TreePop()
	{
		ImGui::TreePop();
	}
	inline float GetTreeNodeToLabelSpacing()
	{
		return ImGui::GetTreeNodeToLabelSpacing();
	}
	inline bool CollapsingHeader(const std::string& label)
	{
		return ImGui::CollapsingHeader(label.c_str());
	}
	inline bool CollapsingHeader(const std::string& label, int flags)
	{
		return ImGui::CollapsingHeader(label.c_str(), flags);
	}
	inline std::tuple<bool, bool> CollapsingHeader(const std::string& label, bool open)
	{
		bool notCollapsed = ImGui::CollapsingHeader(label.c_str(), &open);
		return std::make_tuple(open, notCollapsed);
	}
	inline std::tuple<bool, bool> CollapsingHeader(const std::string& label, bool open, int flags)
	{
		bool notCollapsed = ImGui::CollapsingHeader(label.c_str(), &open, flags);
		return std::make_tuple(open, notCollapsed);
	}
	inline void SetNextItemOpen(bool is_open)
	{
		ImGui::SetNextItemOpen(is_open);
	}
	inline void SetNextItemOpen(bool is_open, int cond)
	{
		ImGui::SetNextItemOpen(is_open, cond);
	}

	// Widgets: Selectables
	// TODO: Only one of Selectable variations is possible due to same parameters for Lua
	inline bool Selectable(const std::string& label)
	{
		return ImGui::Selectable(label.c_str());
	}
	inline bool Selectable(const std::string& label, bool selected)
	{
		ImGui::Selectable(label.c_str(), &selected);
		return selected;
	}
	inline bool Selectable(const std::string& label, bool selected, int flags)
	{
		ImGui::Selectable(label.c_str(), &selected, flags);
		return selected;
	}
	inline bool Selectable(const std::string& label, bool selected, int flags, float sizeX, float sizeY)
	{
		ImGui::Selectable(label.c_str(), &selected, flags, {sizeX, sizeY});
		return selected;
	}

	// Widgets: List Boxes
	inline std::tuple<int, bool> ListBox(const std::string& label, int current_item, const sol::table& items, int items_count)
	{
		std::vector<std::string> strings;
		for (int i{1}; i <= items_count; i++)
		{
			const auto& stringItem = items.get<sol::optional<std::string>>(i);
			strings.emplace_back(stringItem.value_or("Missing"));
		}

		std::vector<const char*> cstrings;
		for (auto& string : strings)
			cstrings.emplace_back(string.c_str());

		bool clicked = ImGui::ListBox(label.c_str(), &current_item, cstrings.data(), items_count);
		return std::make_tuple(current_item, clicked);
	}
	inline std::tuple<int, bool> ListBox(const std::string& label, int current_item, const sol::table& items, int items_count, int height_in_items)
	{
		std::vector<std::string> strings;
		for (int i{1}; i <= items_count; i++)
		{
			const auto& stringItem = items.get<sol::optional<std::string>>(i);
			strings.emplace_back(stringItem.value_or("Missing"));
		}

		std::vector<const char*> cstrings;
		for (auto& string : strings)
			cstrings.emplace_back(string.c_str());

		bool clicked = ImGui::ListBox(label.c_str(), &current_item, cstrings.data(), items_count, height_in_items);
		return std::make_tuple(current_item, clicked);
	}
	inline bool BeginListBox(const std::string& label)
	{
		return ImGui::BeginListBox(label.c_str());
	}
	inline bool BeginListBox(const std::string& label, float sizeX, float sizeY)
	{
		return ImGui::BeginListBox(label.c_str(), {sizeX, sizeY});
	}
	inline void EndListBox()
	{
		ImGui::EndListBox();
	}

	// Widgets: Data Plotting
	/* TODO: Widgets Data Plotting ==> UNSUPPORTED (barely used and quite long functions) */

	// Widgets: Value() helpers
	inline void Value(const std::string& prefix, bool b)
	{
		ImGui::Value(prefix.c_str(), b);
	}
	inline void Value(const std::string& prefix, int v)
	{
		ImGui::Value(prefix.c_str(), v);
	}
	inline void Value(const std::string& prefix, unsigned int v)
	{
		ImGui::Value(prefix.c_str(), v);
	}
	inline void Value(const std::string& prefix, float v)
	{
		ImGui::Value(prefix.c_str(), v);
	}
	inline void Value(const std::string& prefix, float v, const std::string& float_format)
	{
		ImGui::Value(prefix.c_str(), v, float_format.c_str());
	}

	// Widgets: Menus
	inline bool BeginMenuBar()
	{
		return ImGui::BeginMenuBar();
	}
	inline void EndMenuBar()
	{
		ImGui::EndMenuBar();
	}
	inline bool BeginMainMenuBar()
	{
		return ImGui::BeginMainMenuBar();
	}
	inline void EndMainMenuBar()
	{
		ImGui::EndMainMenuBar();
	}
	inline bool BeginMenu(const std::string& label)
	{
		return ImGui::BeginMenu(label.c_str());
	}
	inline bool BeginMenu(const std::string& label, bool enabled)
	{
		return ImGui::BeginMenu(label.c_str(), enabled);
	}
	inline void EndMenu()
	{
		ImGui::EndMenu();
	}
	inline bool MenuItem(const std::string& label)
	{
		return ImGui::MenuItem(label.c_str());
	}
	inline bool MenuItem(const std::string& label, const std::string& shortcut)
	{
		return ImGui::MenuItem(label.c_str(), shortcut.c_str());
	}
	inline std::tuple<bool, bool> MenuItem(const std::string& label, const std::string& shortcut, bool selected)
	{
		bool activated = ImGui::MenuItem(label.c_str(), shortcut.c_str(), &selected);
		return std::make_tuple(selected, activated);
	}
	inline std::tuple<bool, bool> MenuItem(const std::string& label, const std::string& shortcut, bool selected, bool enabled)
	{
		bool activated = ImGui::MenuItem(label.c_str(), shortcut.c_str(), &selected, enabled);
		return std::make_tuple(selected, activated);
	}

	// Tooltips
	inline void BeginTooltip()
	{
		ImGui::BeginTooltip();
	}
	inline void EndTooltip()
	{
		ImGui::EndTooltip();
	}
	inline void SetTooltip(const std::string& fmt)
	{
		ImGui::SetTooltip("%s", fmt.c_str());
	}
	inline void SetTooltipV()
	{ /* TODO: SetTooltipV(...) ==> UNSUPPORTED */
	}

	// Popups, Modals
	inline bool BeginPopup(const std::string& str_id)
	{
		return ImGui::BeginPopup(str_id.c_str());
	}
	inline bool BeginPopup(const std::string& str_id, int flags)
	{
		return ImGui::BeginPopup(str_id.c_str(), flags);
	}
	inline bool BeginPopupModal(const std::string& name)
	{
		return ImGui::BeginPopupModal(name.c_str());
	}
	inline bool BeginPopupModal(const std::string& name, int flags)
	{
		return ImGui::BeginPopupModal(name.c_str(), nullptr, flags);
	}
	inline bool BeginPopupModal(const std::string& name, bool open)
	{
		return ImGui::BeginPopupModal(name.c_str(), &open);
	}
	inline bool BeginPopupModal(const std::string& name, bool open, int flags)
	{
		return ImGui::BeginPopupModal(name.c_str(), &open, flags);
	}
	inline void EndPopup()
	{
		ImGui::EndPopup();
	}
	inline void OpenPopup(const std::string& str_id)
	{
		ImGui::OpenPopup(str_id.c_str());
	}
	inline void OpenPopup(const std::string& str_id, int popup_flags)
	{
		ImGui::OpenPopup(str_id.c_str(), popup_flags);
	}
	inline void CloseCurrentPopup()
	{
		ImGui::CloseCurrentPopup();
	}
	inline bool BeginPopupContextItem()
	{
		return ImGui::BeginPopupContextItem();
	}
	inline bool BeginPopupContextItem(const std::string& str_id)
	{
		return ImGui::BeginPopupContextItem(str_id.c_str());
	}
	inline bool BeginPopupContextItem(const std::string& str_id, int popup_flags)
	{
		return ImGui::BeginPopupContextItem(str_id.c_str(), popup_flags);
	}
	inline bool BeginPopupContextWindow()
	{
		return ImGui::BeginPopupContextWindow();
	}
	inline bool BeginPopupContextWindow(const std::string& str_id)
	{
		return ImGui::BeginPopupContextWindow(str_id.c_str());
	}
	inline bool BeginPopupContextWindow(const std::string& str_id, int popup_flags)
	{
		return ImGui::BeginPopupContextWindow(str_id.c_str(), popup_flags);
	}
	inline bool BeginPopupContextVoid()
	{
		return ImGui::BeginPopupContextVoid();
	}
	inline bool BeginPopupContextVoid(const std::string& str_id)
	{
		return ImGui::BeginPopupContextVoid(str_id.c_str());
	}
	inline bool BeginPopupContextVoid(const std::string& str_id, int popup_flags)
	{
		return ImGui::BeginPopupContextVoid(str_id.c_str(), popup_flags);
	}
	inline bool IsPopupOpen(const std::string& str_id)
	{
		return ImGui::IsPopupOpen(str_id.c_str());
	}
	inline bool IsPopupOpen(const std::string& str_id, int popup_flags)
	{
		return ImGui::IsPopupOpen(str_id.c_str(), popup_flags);
	}

	// Tables
	inline bool BeginTable(const std::string& str_id, int columns)
	{
		return ImGui::BeginTable(str_id.c_str(), columns);
	}
	inline bool BeginTable(const std::string& str_id, int columns, int flags)
	{
		return ImGui::BeginTable(str_id.c_str(), columns, flags);
	}
	inline bool BeginTable(const std::string& str_id, int columns, int flags, float outer_sizeX, float outer_sizeY)
	{
		return ImGui::BeginTable(str_id.c_str(), columns, flags, {outer_sizeX, outer_sizeY});
	}
	inline bool BeginTable(const std::string& str_id, int columns, int flags, float outer_sizeX, float outer_sizeY, float inner_width)
	{
		return ImGui::BeginTable(str_id.c_str(), columns, flags, {outer_sizeX, outer_sizeY}, inner_width);
	}
	inline void EndTable()
	{
		ImGui::EndTable();
	}
	inline void TableNextRow()
	{
		ImGui::TableNextRow();
	}
	inline void TableNextRow(int flags)
	{
		ImGui::TableNextRow(flags);
	}
	inline void TableNextRow(int flags, float min_row_height)
	{
		ImGui::TableNextRow(flags, min_row_height);
	}
	inline bool TableNextColumn()
	{
		return ImGui::TableNextColumn();
	}
	inline bool TableSetColumnIndex(int column_n)
	{
		return ImGui::TableSetColumnIndex(column_n);
	}
	inline void TableSetupColumn(const std::string& label)
	{
		ImGui::TableSetupColumn(label.c_str());
	}
	inline void TableSetupColumn(const std::string& label, int flags)
	{
		ImGui::TableSetupColumn(label.c_str(), ImGuiTableColumnFlags(flags));
	}
	inline void TableSetupColumn(const std::string& label, int flags, float init_width_or_weight)
	{
		ImGui::TableSetupColumn(label.c_str(), ImGuiTableColumnFlags(flags), init_width_or_weight);
	}
	inline void TableSetupColumn(const std::string& label, int flags, float init_width_or_weight, int user_id)
	{
		ImGui::TableSetupColumn(label.c_str(), ImGuiTableColumnFlags(flags), init_width_or_weight, static_cast<ImU32>(user_id));
	}
	inline void TableSetupScrollFreeze(int cols, int rows)
	{
		ImGui::TableSetupScrollFreeze(cols, rows);
	}
	inline void TableHeadersRow()
	{
		ImGui::TableHeadersRow();
	}
	inline void TableHeader(const std::string& label)
	{
		ImGui::TableHeader(label.c_str());
	}
	inline ImGuiTableSortSpecs* TableGetSortSpecs()
	{
		return ImGui::TableGetSortSpecs();
	}
	inline int TableGetColumnCount()
	{
		return ImGui::TableGetColumnCount();
	}
	inline int TableGetColumnIndex()
	{
		return ImGui::TableGetColumnIndex();
	}
	inline int TableGetRowIndex()
	{
		return ImGui::TableGetRowIndex();
	}
	inline std::string TableGetColumnName()
	{
		return std::string(ImGui::TableGetColumnName());
	}
	inline std::string TableGetColumnName(int column_n)
	{
		return std::string(ImGui::TableGetColumnName(column_n));
	}
	inline ImGuiTableColumnFlags TableGetColumnFlags()
	{
		return ImGui::TableGetColumnFlags();
	}
	inline ImGuiTableColumnFlags TableGetColumnFlags(int column_n)
	{
		return ImGui::TableGetColumnFlags(column_n);
	}
	inline void TableSetBgColor(int target, int color)
	{
		ImGui::TableSetBgColor(target, static_cast<ImU32>(color));
	}
	inline void TableSetBgColor(int target, float colR, float colG, float colB, float colA)
	{
		ImGui::TableSetBgColor(target, ImGui::ColorConvertFloat4ToU32({colR, colG, colB, colA}));
	}
	inline void TableSetBgColor(int target, int color, int column_n)
	{
		ImGui::TableSetBgColor(target, static_cast<ImU32>(color), column_n);
	}
	inline void TableSetBgColor(int target, float colR, float colG, float colB, float colA, int column_n)
	{
		ImGui::TableSetBgColor(target, ImGui::ColorConvertFloat4ToU32({colR, colG, colB, colA}), column_n);
	}

	// Columns
	inline void Columns()
	{
		ImGui::Columns();
	}
	inline void Columns(int count)
	{
		ImGui::Columns(count);
	}
	inline void Columns(int count, const std::string& id)
	{
		ImGui::Columns(count, id.c_str());
	}
	inline void Columns(int count, const std::string& id, bool border)
	{
		ImGui::Columns(count, id.c_str(), border);
	}
	inline void NextColumn()
	{
		ImGui::NextColumn();
	}
	inline int GetColumnIndex()
	{
		return ImGui::GetColumnIndex();
	}
	inline float GetColumnWidth()
	{
		return ImGui::GetColumnWidth();
	}
	inline float GetColumnWidth(int column_index)
	{
		return ImGui::GetColumnWidth(column_index);
	}
	inline void SetColumnWidth(int column_index, float width)
	{
		ImGui::SetColumnWidth(column_index, width);
	}
	inline float GetColumnOffset()
	{
		return ImGui::GetColumnOffset();
	}
	inline float GetColumnOffset(int column_index)
	{
		return ImGui::GetColumnOffset(column_index);
	}
	inline void SetColumnOffset(int column_index, float offset_x)
	{
		ImGui::SetColumnOffset(column_index, offset_x);
	}
	inline int GetColumnsCount()
	{
		return ImGui::GetColumnsCount();
	}

	// Tab Bars, Tabs
	inline bool BeginTabBar(const std::string& str_id)
	{
		return ImGui::BeginTabBar(str_id.c_str());
	}
	inline bool BeginTabBar(const std::string& str_id, int flags)
	{
		return ImGui::BeginTabBar(str_id.c_str(), flags);
	}
	inline void EndTabBar()
	{
		ImGui::EndTabBar();
	}
	inline bool BeginTabItem(const std::string& label)
	{
		return ImGui::BeginTabItem(label.c_str());
	}
	inline bool BeginTabItem(const std::string& label, int flags)
	{
		return ImGui::BeginTabItem(label.c_str(), nullptr, flags);
	}
	inline std::tuple<bool, bool> BeginTabItem(const std::string& label, bool open)
	{
		bool selected = ImGui::BeginTabItem(label.c_str(), &open);
		return std::make_tuple(open, selected);
	}
	inline std::tuple<bool, bool> BeginTabItem(const std::string& label, bool open, int flags)
	{
		bool selected = ImGui::BeginTabItem(label.c_str(), &open, flags);
		return std::make_tuple(open, selected);
	}
	inline void EndTabItem()
	{
		ImGui::EndTabItem();
	}
	inline void SetTabItemClosed(const std::string& tab_or_docked_window_label)
	{
		ImGui::SetTabItemClosed(tab_or_docked_window_label.c_str());
	}

	// Drag and Drop
	// TODO: Drag and Drop ==> UNSUPPORTED

	// Disabling
	inline void BeginDisabled()
	{
		ImGui::BeginDisabled();
	}
	inline void BeginDisabled(bool disabled)
	{
		ImGui::BeginDisabled(disabled);
	}
	inline void EndDisabled()
	{
		ImGui::EndDisabled();
	}

	// Clipping
	inline void PushClipRect(float min_x, float min_y, float max_x, float max_y, bool intersect_current)
	{
		ImGui::PushClipRect({min_x, min_y}, {max_x, max_y}, intersect_current);
	}
	inline void PopClipRect()
	{
		ImGui::PopClipRect();
	}

	// Focus, Activation
	inline void SetItemDefaultFocus()
	{
		ImGui::SetItemDefaultFocus();
	}
	inline void SetKeyboardFocusHere()
	{
		ImGui::SetKeyboardFocusHere();
	}
	inline void SetKeyboardFocusHere(int offset)
	{
		ImGui::SetKeyboardFocusHere(offset);
	}

	// Item/Widgets Utilities
	inline bool IsItemHovered()
	{
		return ImGui::IsItemHovered();
	}
	inline bool IsItemHovered(int flags)
	{
		return ImGui::IsItemHovered(flags);
	}
	inline bool IsItemActive()
	{
		return ImGui::IsItemActive();
	}
	inline bool IsItemFocused()
	{
		return ImGui::IsItemFocused();
	}
	inline bool IsItemClicked()
	{
		return ImGui::IsItemClicked();
	}
	inline bool IsItemClicked(int mouse_button)
	{
		return ImGui::IsItemClicked(mouse_button);
	}
	inline bool IsItemVisible()
	{
		return ImGui::IsItemVisible();
	}
	inline bool IsItemEdited()
	{
		return ImGui::IsItemEdited();
	}
	inline bool IsItemActivated()
	{
		return ImGui::IsItemActivated();
	}
	inline bool IsItemDeactivated()
	{
		return ImGui::IsItemDeactivated();
	}
	inline bool IsItemDeactivatedAfterEdit()
	{
		return ImGui::IsItemDeactivatedAfterEdit();
	}
	inline bool IsItemToggledOpen()
	{
		return ImGui::IsItemToggledOpen();
	}
	inline bool IsAnyItemHovered()
	{
		return ImGui::IsAnyItemHovered();
	}
	inline bool IsAnyItemActive()
	{
		return ImGui::IsAnyItemActive();
	}
	inline bool IsAnyItemFocused()
	{
		return ImGui::IsAnyItemFocused();
	}
	inline std::tuple<float, float> GetItemRectMin()
	{
		const auto vec2{ImGui::GetItemRectMin()};
		return std::make_tuple(vec2.x, vec2.y);
	}
	inline std::tuple<float, float> GetItemRectMax()
	{
		const auto vec2{ImGui::GetItemRectMax()};
		return std::make_tuple(vec2.x, vec2.y);
	}
	inline std::tuple<float, float> GetItemRectSize()
	{
		const auto vec2{ImGui::GetItemRectSize()};
		return std::make_tuple(vec2.x, vec2.y);
	}
	inline void SetItemAllowOverlap()
	{
		ImGui::SetItemAllowOverlap();
	}

	// Miscellaneous Utilities
	inline bool IsRectVisible(float sizeX, float sizeY)
	{
		return ImGui::IsRectVisible({sizeX, sizeY});
	}
	inline bool IsRectVisible(float minX, float minY, float maxX, float maxY)
	{
		return ImGui::IsRectVisible({minX, minY}, {maxX, maxY});
	}
	inline double GetTime()
	{
		return ImGui::GetTime();
	}
	inline int GetFrameCount()
	{
		return ImGui::GetFrameCount();
	}
	inline ImDrawList* GetBackgroundDrawList()
	{
		return ImGui::GetBackgroundDrawList();
	}
	inline ImDrawList* GetForegroundDrawList()
	{
		return ImGui::GetForegroundDrawList();
	}
	/* TODO: GetDrawListSharedData() ==> UNSUPPORTED */
	inline std::string GetStyleColorName(int idx)
	{
		return std::string(ImGui::GetStyleColorName(idx));
	}
	/* TODO: SetStateStorage(), GetStateStorage(), CalcListClipping() ==> UNSUPPORTED */
	inline bool BeginChildFrame(unsigned int id, float sizeX, float sizeY)
	{
		return ImGui::BeginChildFrame(id, {sizeX, sizeY});
	}
	inline bool BeginChildFrame(unsigned int id, float sizeX, float sizeY, int flags)
	{
		return ImGui::BeginChildFrame(id, {sizeX, sizeY}, flags);
	}
	inline void EndChildFrame()
	{
		return ImGui::EndChildFrame();
	}
	inline ImGuiStyle& GetStyle()
	{
		return ImGui::GetStyle();
	}

	// Text Utilities
	inline std::tuple<float, float> CalcTextSize(const std::string& text)
	{
		const auto vec2{ImGui::CalcTextSize(text.c_str())};
		return std::make_tuple(vec2.x, vec2.y);
	}
	inline std::tuple<float, float> CalcTextSize(const std::string& text, bool hide_text_after_double_hash)
	{
		const auto vec2{ImGui::CalcTextSize(text.c_str(), nullptr, hide_text_after_double_hash)};
		return std::make_tuple(vec2.x, vec2.y);
	}
	inline std::tuple<float, float> CalcTextSize(const std::string& text, bool hide_text_after_double_hash, float wrap_width)
	{
		const auto vec2{ImGui::CalcTextSize(text.c_str(), nullptr, hide_text_after_double_hash, wrap_width)};
		return std::make_tuple(vec2.x, vec2.y);
	}

	// Color Utilities
	inline sol::as_table_t<std::vector<float>> ColorConvertU32ToFloat4(unsigned int in)
	{
		const auto vec4      = ImGui::ColorConvertU32ToFloat4(in);
		sol::as_table_t rgba = sol::as_table(std::vector<float>{vec4.x, vec4.y, vec4.z, vec4.w});

		return rgba;
	}
	inline unsigned int ColorConvertFloat4ToU32(const sol::table& rgba)
	{
		const lua_Number r{rgba[1].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    g{rgba[2].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    b{rgba[3].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))},
		    a{rgba[4].get<std::optional<lua_Number>>().value_or(static_cast<lua_Number>(0))};

		return ImGui::ColorConvertFloat4ToU32({static_cast<float>(r), static_cast<float>(g), static_cast<float>(b), static_cast<float>(a)});
	}
	inline std::tuple<float, float, float> ColorConvertRGBtoHSV(float r, float g, float b)
	{
		float h{}, s{}, v{};
		ImGui::ColorConvertRGBtoHSV(r, g, b, h, s, v);
		return std::make_tuple(h, s, v);
	}
	inline std::tuple<float, float, float> ColorConvertHSVtoRGB(float h, float s, float v)
	{
		float r{}, g{}, b{};
		ImGui::ColorConvertHSVtoRGB(h, s, v, r, g, b);
		return std::make_tuple(r, g, b);
	}

	// Inputs Utilities: Keyboard
	inline ImGuiKey GetKeyIndex(ImGuiKey imgui_key)
	{
		return ImGui::GetKeyIndex(imgui_key);
	}
	inline bool IsKeyDown(ImGuiKey user_key_index)
	{
		return ImGui::IsKeyDown(user_key_index);
	}
	inline bool IsKeyPressed(ImGuiKey user_key_index)
	{
		return ImGui::IsKeyPressed(user_key_index);
	}
	inline bool IsKeyPressed(ImGuiKey user_key_index, bool repeat)
	{
		return ImGui::IsKeyPressed(user_key_index, repeat);
	}
	inline bool IsKeyReleased(ImGuiKey user_key_index)
	{
		return ImGui::IsKeyReleased(user_key_index);
	}
	inline int GetKeyPressedAmount(ImGuiKey key_index, float repeat_delay, float rate)
	{
		return ImGui::GetKeyPressedAmount(key_index, repeat_delay, rate);
	}
	inline void CaptureKeyboardFromApp()
	{
		ImGui::CaptureKeyboardFromApp();
	}
	inline void CaptureKeyboardFromApp(bool want_capture_keyboard_value)
	{
		ImGui::CaptureKeyboardFromApp(want_capture_keyboard_value);
	}

	// Inputs Utilities: Mouse
	inline bool IsMouseDown(int button)
	{
		return ImGui::IsMouseDown(static_cast<ImGuiMouseButton>(button));
	}
	inline bool IsMouseClicked(int button)
	{
		return ImGui::IsMouseClicked(static_cast<ImGuiMouseButton>(button));
	}
	inline bool IsMouseClicked(int button, bool repeat)
	{
		return ImGui::IsMouseClicked(static_cast<ImGuiMouseButton>(button), repeat);
	}
	inline bool IsMouseReleased(int button)
	{
		return ImGui::IsMouseReleased(static_cast<ImGuiMouseButton>(button));
	}
	inline bool IsMouseDoubleClicked(int button)
	{
		return ImGui::IsMouseDoubleClicked(static_cast<ImGuiMouseButton>(button));
	}
	inline bool IsMouseHoveringRect(float min_x, float min_y, float max_x, float max_y)
	{
		return ImGui::IsMouseHoveringRect({min_x, min_y}, {max_x, max_y});
	}
	inline bool IsMouseHoveringRect(float min_x, float min_y, float max_x, float max_y, bool clip)
	{
		return ImGui::IsMouseHoveringRect({min_x, min_y}, {max_x, max_y}, clip);
	}
	inline bool IsMousePosValid()
	{
		return false; /* TODO: IsMousePosValid() ==> UNSUPPORTED */
	}
	inline bool IsAnyMouseDown()
	{
		return ImGui::IsAnyMouseDown();
	}
	inline std::tuple<float, float> GetMousePos()
	{
		const auto vec2{ImGui::GetMousePos()};
		return std::make_tuple(vec2.x, vec2.y);
	}
	inline std::tuple<float, float> GetMousePosOnOpeningCurrentPopup()
	{
		const auto vec2{ImGui::GetMousePosOnOpeningCurrentPopup()};
		return std::make_tuple(vec2.x, vec2.y);
	}
	inline bool IsMouseDragging(int button)
	{
		return ImGui::IsMouseDragging(static_cast<ImGuiMouseButton>(button));
	}
	inline bool IsMouseDragging(int button, float lock_threshold)
	{
		return ImGui::IsMouseDragging(static_cast<ImGuiMouseButton>(button), lock_threshold);
	}
	inline std::tuple<float, float> GetMouseDragDelta()
	{
		const auto vec2{ImGui::GetMouseDragDelta()};
		return std::make_tuple(vec2.x, vec2.y);
	}
	inline std::tuple<float, float> GetMouseDragDelta(int button)
	{
		const auto vec2{ImGui::GetMouseDragDelta(static_cast<ImGuiMouseButton>(button))};
		return std::make_tuple(vec2.x, vec2.y);
	}
	inline std::tuple<float, float> GetMouseDragDelta(int button, float lock_threshold)
	{
		const auto vec2{ImGui::GetMouseDragDelta(static_cast<ImGuiMouseButton>(button), lock_threshold)};
		return std::make_tuple(vec2.x, vec2.y);
	}
	inline void ResetMouseDragDelta()
	{
		ImGui::ResetMouseDragDelta();
	}
	inline void ResetMouseDragDelta(int button)
	{
		ImGui::ResetMouseDragDelta(static_cast<ImGuiMouseButton>(button));
	}
	inline int GetMouseCursor()
	{
		return ImGui::GetMouseCursor();
	}
	inline void SetMouseCursor(int cursor_type)
	{
		ImGui::SetMouseCursor(static_cast<ImGuiMouseCursor>(cursor_type));
	}
	inline void CaptureMouseFromApp()
	{
		ImGui::CaptureMouseFromApp();
	}
	inline void CaptureMouseFromApp(bool want_capture_mouse_value)
	{
		ImGui::CaptureMouseFromApp(want_capture_mouse_value);
	}

	// Clipboard Utilities
	inline std::string GetClipboardText()
	{
		return std::string(ImGui::GetClipboardText());
	}
	inline void SetClipboardText(const std::string& text)
	{
		ImGui::SetClipboardText(text.c_str());
	}

	// Drawing APIs
	// Primitives
	inline void ImDrawListAddLine(ImDrawList* drawlist, float p1X, float p1Y, float p2X, float p2Y, int col)
	{
		drawlist->AddLine({p1X, p1Y}, {p2X, p2Y}, static_cast<ImU32>(col));
	}
	inline void ImDrawListAddLine(ImDrawList* drawlist, float p1X, float p1Y, float p2X, float p2Y, int col, float thickness)
	{
		drawlist->AddLine({p1X, p1Y}, {p2X, p2Y}, static_cast<ImU32>(col), thickness);
	}
	inline void ImDrawListAddRect(ImDrawList* drawlist, float p_minX, float p_minY, float p_maxX, float p_maxY, int col)
	{
		drawlist->AddRect({p_minX, p_minY}, {p_maxX, p_maxY}, static_cast<ImU32>(col));
	}
	inline void ImDrawListAddRect(ImDrawList* drawlist, float p_minX, float p_minY, float p_maxX, float p_maxY, int col, float rounding)
	{
		drawlist->AddRect({p_minX, p_minY}, {p_maxX, p_maxY}, static_cast<ImU32>(col), rounding);
	}
	inline void ImDrawListAddRect(ImDrawList* drawlist, float p_minX, float p_minY, float p_maxX, float p_maxY, int col, float rounding, int flags)
	{
		drawlist->AddRect({p_minX, p_minY}, {p_maxX, p_maxY}, static_cast<ImU32>(col), rounding, static_cast<ImDrawFlags>(flags));
	}
	inline void ImDrawListAddRect(ImDrawList* drawlist, float p_minX, float p_minY, float p_maxX, float p_maxY, int col, float rounding, int flags, float thickness)
	{
		drawlist->AddRect({p_minX, p_minY}, {p_maxX, p_maxY}, static_cast<ImU32>(col), rounding, static_cast<ImDrawFlags>(flags), thickness);
	}
	inline void ImDrawListAddRectFilled(ImDrawList* drawlist, float p_minX, float p_minY, float p_maxX, float p_maxY, int col)
	{
		drawlist->AddRectFilled({p_minX, p_minY}, {p_maxX, p_maxY}, static_cast<ImU32>(col));
	}
	inline void ImDrawListAddRectFilled(ImDrawList* drawlist, float p_minX, float p_minY, float p_maxX, float p_maxY, int col, float rounding)
	{
		drawlist->AddRectFilled({p_minX, p_minY}, {p_maxX, p_maxY}, static_cast<ImU32>(col), rounding);
	}
	inline void ImDrawListAddRectFilled(ImDrawList* drawlist, float p_minX, float p_minY, float p_maxX, float p_maxY, int col, float rounding, int flags)
	{
		drawlist->AddRectFilled({p_minX, p_minY}, {p_maxX, p_maxY}, static_cast<ImU32>(col), rounding, static_cast<ImDrawFlags>(flags));
	}
	inline void ImDrawListAddRectFilledMultiColor(ImDrawList* drawlist, float p_minX, float p_minY, float p_maxX, float p_maxY, int col_upr_left, int col_upr_right, int col_bot_right, int col_bot_left)
	{
		drawlist->AddRectFilledMultiColor({p_minX, p_minY}, {p_maxX, p_maxY}, static_cast<ImU32>(col_upr_left), static_cast<ImU32>(col_upr_right), static_cast<ImU32>(col_bot_right), static_cast<ImU32>(col_bot_left));
	}
	inline void ImDrawListAddQuad(ImDrawList* drawlist, float p1X, float p1Y, float p2X, float p2Y, float p3X, float p3Y, float p4X, float p4Y, int col)
	{
		drawlist->AddQuad({p1X, p1Y}, {p2X, p2Y}, {p3X, p3Y}, {p4X, p4Y}, static_cast<ImU32>(col));
	}
	inline void ImDrawListAddQuad(ImDrawList* drawlist, float p1X, float p1Y, float p2X, float p2Y, float p3X, float p3Y, float p4X, float p4Y, int col, float thickness)
	{
		drawlist->AddQuad({p1X, p1Y}, {p2X, p2Y}, {p3X, p3Y}, {p4X, p4Y}, static_cast<ImU32>(col), thickness);
	}
	inline void ImDrawListAddQuadFilled(ImDrawList* drawlist, float p1X, float p1Y, float p2X, float p2Y, float p3X, float p3Y, float p4X, float p4Y, int col)
	{
		drawlist->AddQuadFilled({p1X, p1Y}, {p2X, p2Y}, {p3X, p3Y}, {p4X, p4Y}, static_cast<ImU32>(col));
	}
	inline void ImDrawListAddTriangle(ImDrawList* drawlist, float p1X, float p1Y, float p2X, float p2Y, float p3X, float p3Y, int col)
	{
		drawlist->AddTriangle({p1X, p1Y}, {p2X, p2Y}, {p3X, p3Y}, static_cast<ImU32>(col));
	}
	inline void ImDrawListAddTriangle(ImDrawList* drawlist, float p1X, float p1Y, float p2X, float p2Y, float p3X, float p3Y, int col, float thickness)
	{
		drawlist->AddTriangle({p1X, p1Y}, {p2X, p2Y}, {p3X, p3Y}, static_cast<ImU32>(col), thickness);
	}
	inline void ImDrawListAddTriangleFilled(ImDrawList* drawlist, float p1X, float p1Y, float p2X, float p2Y, float p3X, float p3Y, int col)
	{
		drawlist->AddTriangleFilled({p1X, p1Y}, {p2X, p2Y}, {p3X, p3Y}, static_cast<ImU32>(col));
	}
	inline void ImDrawListAddCircle(ImDrawList* drawlist, float centerX, float centerY, float radius, int col)
	{
		drawlist->AddCircle({centerX, centerY}, radius, static_cast<ImU32>(col));
	}
	inline void ImDrawListAddCircle(ImDrawList* drawlist, float centerX, float centerY, float radius, int col, int num_segments)
	{
		drawlist->AddCircle({centerX, centerY}, radius, static_cast<ImU32>(col), num_segments);
	}
	inline void ImDrawListAddCircle(ImDrawList* drawlist, float centerX, float centerY, float radius, int col, int num_segments, float thickness)
	{
		drawlist->AddCircle({centerX, centerY}, radius, static_cast<ImU32>(col), num_segments, thickness);
	}
	inline void ImDrawListAddCircleFilled(ImDrawList* drawlist, float centerX, float centerY, float radius, int col)
	{
		drawlist->AddCircleFilled({centerX, centerY}, radius, static_cast<ImU32>(col));
	}
	inline void ImDrawListAddCircleFilled(ImDrawList* drawlist, float centerX, float centerY, float radius, int col, int num_segments)
	{
		drawlist->AddCircleFilled({centerX, centerY}, radius, static_cast<ImU32>(col), num_segments);
	}
	inline void ImDrawListAddNgon(ImDrawList* drawlist, float centerX, float centerY, float radius, int col, int num_segments)
	{
		drawlist->AddNgon({centerX, centerY}, radius, static_cast<ImU32>(col), num_segments);
	}
	inline void ImDrawListAddNgon(ImDrawList* drawlist, float centerX, float centerY, float radius, int col, int num_segments, float thickness)
	{
		drawlist->AddNgon({centerX, centerY}, radius, static_cast<ImU32>(col), num_segments, thickness);
	}
	inline void ImDrawListAddNgonFilled(ImDrawList* drawlist, float centerX, float centerY, float radius, int col, int num_segments)
	{
		drawlist->AddNgonFilled({centerX, centerY}, radius, static_cast<ImU32>(col), num_segments);
	}
	inline void ImDrawListAddText(ImDrawList* drawlist, float posX, float posY, int col, const std::string& text_begin)
	{
		drawlist->AddText({posX, posY}, static_cast<ImU32>(col), text_begin.c_str());
	}
	inline void ImDrawListAddText(ImDrawList* drawlist, float font_size, float posX, float posY, int col, const std::string& text_begin)
	{
		drawlist->AddText(ImGui::GetFont(), font_size, {posX, posY}, static_cast<ImU32>(col), text_begin.c_str());
	}
	inline void ImDrawListAddText(ImDrawList* drawlist, float font_size, float posX, float posY, int col, const std::string& text_begin, float wrap_width)
	{
		drawlist->AddText(ImGui::GetFont(), font_size, {posX, posY}, static_cast<ImU32>(col), text_begin.c_str(), nullptr, wrap_width);
	}
	inline void ImDrawListAddBezierCubic(ImDrawList* drawlist, float p1X, float p1Y, float p2X, float p2Y, float p3X, float p3Y, float p4X, float p4Y, int col, float thickness)
	{
		drawlist->AddBezierCubic({p1X, p1Y}, {p2X, p2Y}, {p3X, p3Y}, {p4X, p4Y}, static_cast<ImU32>(col), thickness);
	}
	inline void ImDrawListAddBezierCubic(ImDrawList* drawlist, float p1X, float p1Y, float p2X, float p2Y, float p3X, float p3Y, float p4X, float p4Y, int col, float thickness, int num_segments)
	{
		drawlist->AddBezierCubic({p1X, p1Y}, {p2X, p2Y}, {p3X, p3Y}, {p4X, p4Y}, static_cast<ImU32>(col), thickness, num_segments);
	}
	inline void ImDrawListAddBezierQuadratic(ImDrawList* drawlist, float p1X, float p1Y, float p2X, float p2Y, float p3X, float p3Y, int col, float thickness)
	{
		drawlist->AddBezierQuadratic({p1X, p1Y}, {p2X, p2Y}, {p3X, p3Y}, static_cast<ImU32>(col), thickness);
	}
	inline void ImDrawListAddBezierQuadratic(ImDrawList* drawlist, float p1X, float p1Y, float p2X, float p2Y, float p3X, float p3Y, int col, float thickness, int num_segments)
	{
		drawlist->AddBezierQuadratic({p1X, p1Y}, {p2X, p2Y}, {p3X, p3Y}, static_cast<ImU32>(col), thickness, num_segments);
	}

	inline void init_types(sol::table luaGlobals)
	{
		luaGlobals.new_usertype<ImFont>("ImFont");

		luaGlobals.new_usertype<ImVec2>("ImVec2", sol::constructors<ImVec2(), ImVec2(float, float)>(),
		"x", &ImVec2::x,
		"y", &ImVec2::y);

		luaGlobals.new_usertype<ImVec4>("ImVec4", sol::constructors<ImVec4(), ImVec4(float, float, float, float)>(),
		"x", &ImVec4::x,
		"y", &ImVec4::y,
		"z", &ImVec4::z,
		"w", &ImVec4::w);

		luaGlobals.new_usertype<ImGuiStyle>("ImGuiStyle",
		"Alpha", &ImGuiStyle::Alpha,
		"DisabledAlpha", &ImGuiStyle::DisabledAlpha,
		"WindowPadding", &ImGuiStyle::WindowPadding,
		"WindowRounding", &ImGuiStyle::WindowRounding,
		"WindowBorderSize", &ImGuiStyle::WindowBorderSize,
		"WindowMinSize", &ImGuiStyle::WindowMinSize,
		"WindowTitleAlign", &ImGuiStyle::WindowTitleAlign,
		"WindowMenuButtonPosition", &ImGuiStyle::WindowMenuButtonPosition,
		"ChildRounding", &ImGuiStyle::ChildRounding,
		"ChildBorderSize", &ImGuiStyle::ChildBorderSize,
		"PopupRounding", &ImGuiStyle::PopupRounding,
		"PopupBorderSize", &ImGuiStyle::PopupBorderSize,
		"FramePadding", &ImGuiStyle::FramePadding,
		"FrameRounding", &ImGuiStyle::FrameRounding,
		"FrameBorderSize", &ImGuiStyle::FrameBorderSize,
		"ItemSpacing", &ImGuiStyle::ItemSpacing,
		"ItemInnerSpacing", &ImGuiStyle::ItemInnerSpacing,
		"CellPadding", &ImGuiStyle::CellPadding,
		"TouchExtraPadding", &ImGuiStyle::TouchExtraPadding,
		"IndentSpacing", &ImGuiStyle::IndentSpacing,
		"ColumnsMinSpacing", &ImGuiStyle::ColumnsMinSpacing,
		"ScrollbarSize", &ImGuiStyle::ScrollbarSize,
		"ScrollbarRounding", &ImGuiStyle::ScrollbarRounding,
		"GrabMinSize", &ImGuiStyle::GrabMinSize,
		"GrabRounding", &ImGuiStyle::GrabRounding,
		"LogSliderDeadzone", &ImGuiStyle::LogSliderDeadzone,
		"TabRounding", &ImGuiStyle::TabRounding,
		"TabBorderSize", &ImGuiStyle::TabBorderSize,
		"TabMinWidthForCloseButton", &ImGuiStyle::TabMinWidthForCloseButton,
		"ColorButtonPosition", &ImGuiStyle::ColorButtonPosition,
		"ButtonTextAlign", &ImGuiStyle::ButtonTextAlign,
		"SelectableTextAlign", &ImGuiStyle::SelectableTextAlign,
		"DisplayWindowPadding", &ImGuiStyle::DisplayWindowPadding,
		"DisplaySafeAreaPadding", &ImGuiStyle::DisplaySafeAreaPadding,
		"MouseCursorScale", &ImGuiStyle::MouseCursorScale,
		"AntiAliasedLines", &ImGuiStyle::AntiAliasedLines,
		"AntiAliasedLinesUseTex", &ImGuiStyle::AntiAliasedLinesUseTex,
		"AntiAliasedFill", &ImGuiStyle::AntiAliasedFill,
		"CurveTessellationTol", &ImGuiStyle::CurveTessellationTol,
		"CircleTessellationMaxError", &ImGuiStyle::CircleTessellationMaxError,
		"ScaleAllSizes", &ImGuiStyle::ScaleAllSizes);

		luaGlobals.new_usertype<ImGuiListClipper>("ImGuiListClipper", sol::constructors<ImGuiListClipper()>(),
		"Begin", &ImGuiListClipper::Begin,
		"Step", &ImGuiListClipper::Step,
		"DisplayStart", &ImGuiListClipper::DisplayStart,
		"DisplayEnd", &ImGuiListClipper::DisplayEnd);
	}

	inline void init_enums(sol::table luaGlobals)
	{

#pragma region Fonts Flags
		luaGlobals.new_enum("GlyphRange",
		"Default", GlyphRange::Default,
		"Korean", GlyphRange::Korean,
		"Japanese", GlyphRange::Japanese,
		"ChineseFull", GlyphRange::ChineseFull,
		"ChineseSimplifiedCommon", GlyphRange::ChineseSimplifiedCommon,
		"Cyrillic",  GlyphRange::Cyrillic,
		"Greek", GlyphRange::Greek,
		"Thai", GlyphRange::Thai,
		"Vietnamese", GlyphRange::Vietnamese);
#pragma endregion Fonts Flags

#pragma region Window Flags
		luaGlobals.new_enum("ImGuiWindowFlags",
		"None", ImGuiWindowFlags_None,
		"NoTitleBar", ImGuiWindowFlags_NoTitleBar,
		"NoResize", ImGuiWindowFlags_NoResize,
		"NoMove", ImGuiWindowFlags_NoMove,
		"NoScrollbar", ImGuiWindowFlags_NoScrollbar,
		"NoScrollWithMouse", ImGuiWindowFlags_NoScrollWithMouse,
		"NoCollapse", ImGuiWindowFlags_NoCollapse,
		"AlwaysAutoResize", ImGuiWindowFlags_AlwaysAutoResize,
		"NoBackground", ImGuiWindowFlags_NoBackground,
		"NoSavedSettings", ImGuiWindowFlags_NoSavedSettings,
		"NoMouseInputs", ImGuiWindowFlags_NoMouseInputs,
		"MenuBar", ImGuiWindowFlags_MenuBar,
		"HorizontalScrollbar", ImGuiWindowFlags_HorizontalScrollbar,
		"NoFocusOnAppearing", ImGuiWindowFlags_NoFocusOnAppearing,
		"NoBringToFrontOnFocus", ImGuiWindowFlags_NoBringToFrontOnFocus,
		"AlwaysVerticalScrollbar", ImGuiWindowFlags_AlwaysVerticalScrollbar,
		"AlwaysHorizontalScrollbar", ImGuiWindowFlags_AlwaysHorizontalScrollbar,
		"AlwaysUseWindowPadding", ImGuiWindowFlags_AlwaysUseWindowPadding,
		"NoNavInputs", ImGuiWindowFlags_NoNavInputs,
		"NoNavFocus", ImGuiWindowFlags_NoNavFocus,
		"UnsavedDocument", ImGuiWindowFlags_UnsavedDocument,
		"NoNav", ImGuiWindowFlags_NoNav,
		"NoDecoration", ImGuiWindowFlags_NoDecoration,
		"NoInputs", ImGuiWindowFlags_NoInputs,
		"NavFlattened", ImGuiWindowFlags_NavFlattened,
		"ChildWindow", ImGuiWindowFlags_ChildWindow,
		"Tooltip", ImGuiWindowFlags_Tooltip,
		"Popup", ImGuiWindowFlags_Popup,
		"Modal", ImGuiWindowFlags_Modal,
		"ChildMenu", ImGuiWindowFlags_ChildMenu);
#pragma endregion Window Flags

#pragma region Mouse Cursors
		luaGlobals.new_enum("ImGuiMouseCursor",
		"None", ImGuiMouseCursor_None,
		"Arrow", ImGuiMouseCursor_Arrow,
		"TextInput", ImGuiMouseCursor_TextInput,
		"ResizeAll", ImGuiMouseCursor_ResizeAll,
		"ResizeNS", ImGuiMouseCursor_ResizeNS,
		"ResizeEW", ImGuiMouseCursor_ResizeEW,
		"ResizeNESW", ImGuiMouseCursor_ResizeNESW,
		"ResizeNWSE", ImGuiMouseCursor_ResizeNWSE,
		"Hand", ImGuiMouseCursor_Hand,
		"NotAllowed", ImGuiMouseCursor_NotAllowed);
#pragma endregion Mouse Cursors

#pragma region Focused Flags
		luaGlobals.new_enum("ImGuiFocusedFlags",
		"None", ImGuiFocusedFlags_None,
		"ChildWindows", ImGuiFocusedFlags_ChildWindows,
		"RootWindow", ImGuiFocusedFlags_RootWindow,
		"AnyWindow", ImGuiFocusedFlags_AnyWindow,
		"RootAndChildWindows", ImGuiFocusedFlags_RootAndChildWindows);
#pragma endregion Focused Flags

#pragma region Hovered Flags
		luaGlobals.new_enum("ImGuiHoveredFlags",
		"None", ImGuiHoveredFlags_None,
		"ChildWindows", ImGuiHoveredFlags_ChildWindows,
		"RootWindow", ImGuiHoveredFlags_RootWindow,
		"AnyWindow", ImGuiHoveredFlags_AnyWindow,
		"AllowWhenBlockedByPopup", ImGuiHoveredFlags_AllowWhenBlockedByPopup,
		"AllowWhenBlockedByActiveItem", ImGuiHoveredFlags_AllowWhenBlockedByActiveItem,
		"AllowWhenOverlapped", ImGuiHoveredFlags_AllowWhenOverlapped,
		"AllowWhenDisabled", ImGuiHoveredFlags_AllowWhenDisabled,
		"RectOnly", ImGuiHoveredFlags_RectOnly,
		"RootAndChildWindows", ImGuiHoveredFlags_RootAndChildWindows);
#pragma endregion Hovered Flags

#pragma region Cond
		luaGlobals.new_enum("ImGuiCond",
		"None", ImGuiCond_None,
		"Always", ImGuiCond_Always,
		"Once", ImGuiCond_Once,
		"FirstUseEver", ImGuiCond_FirstUseEver,
		"Appearing", ImGuiCond_Appearing);
#pragma endregion Cond

#pragma region Col
		luaGlobals.new_enum("ImGuiCol",
		"Text", ImGuiCol_Text,
		"TextDisabled", ImGuiCol_TextDisabled,
		"WindowBg", ImGuiCol_WindowBg,
		"ChildBg", ImGuiCol_ChildBg,
		"PopupBg", ImGuiCol_PopupBg,
		"Border", ImGuiCol_Border,
		"BorderShadow", ImGuiCol_BorderShadow,
		"FrameBg", ImGuiCol_FrameBg,
		"FrameBgHovered", ImGuiCol_FrameBgHovered,
		"FrameBgActive", ImGuiCol_FrameBgActive,
		"TitleBg", ImGuiCol_TitleBg,
		"TitleBgActive", ImGuiCol_TitleBgActive,
		"TitleBgCollapsed", ImGuiCol_TitleBgCollapsed,
		"MenuBarBg", ImGuiCol_MenuBarBg,
		"ScrollbarBg", ImGuiCol_ScrollbarBg,
		"ScrollbarGrab", ImGuiCol_ScrollbarGrab,
		"ScrollbarGrabHovered", ImGuiCol_ScrollbarGrabHovered,
		"ScrollbarGrabActive", ImGuiCol_ScrollbarGrabActive,
		"CheckMark", ImGuiCol_CheckMark,
		"SliderGrab", ImGuiCol_SliderGrab,
		"SliderGrabActive", ImGuiCol_SliderGrabActive,
		"Button", ImGuiCol_Button,
		"ButtonHovered", ImGuiCol_ButtonHovered,
		"ButtonActive", ImGuiCol_ButtonActive,
		"Header", ImGuiCol_Header,
		"HeaderHovered", ImGuiCol_HeaderHovered,
		"HeaderActive", ImGuiCol_HeaderActive,
		"Separator", ImGuiCol_Separator,
		"SeparatorHovered", ImGuiCol_SeparatorHovered,
		"SeparatorActive", ImGuiCol_SeparatorActive,
		"ResizeGrip", ImGuiCol_ResizeGrip,
		"ResizeGripHovered", ImGuiCol_ResizeGripHovered,
		"ResizeGripActive", ImGuiCol_ResizeGripActive,
		"Tab", ImGuiCol_Tab,
		"TabHovered", ImGuiCol_TabHovered,
		"TabActive", ImGuiCol_TabActive,
		"TabUnfocused", ImGuiCol_TabUnfocused,
		"TabUnfocusedActive", ImGuiCol_TabUnfocusedActive,
		"PlotLines", ImGuiCol_PlotLines,
		"PlotLinesHovered", ImGuiCol_PlotLinesHovered,
		"PlotHistogram", ImGuiCol_PlotHistogram,
		"PlotHistogramHovered", ImGuiCol_PlotHistogramHovered,
		"TableHeaderBg", ImGuiCol_TableHeaderBg,
		"TableBorderStrong", ImGuiCol_TableBorderStrong,
		"TableBorderLight", ImGuiCol_TableBorderLight,
		"TableRowBg", ImGuiCol_TableRowBg,
		"TableRowBgAlt", ImGuiCol_TableRowBgAlt,
		"TextSelectedBg", ImGuiCol_TextSelectedBg,
		"DragDropTarget", ImGuiCol_DragDropTarget,
		"NavHighlight", ImGuiCol_NavHighlight,
		"NavWindowingHighlight", ImGuiCol_NavWindowingHighlight,
		"NavWindowingDimBg", ImGuiCol_NavWindowingDimBg,
		"ModalWindowDimBg", ImGuiCol_ModalWindowDimBg,
		"COUNT", ImGuiCol_COUNT);
#pragma endregion Col

#pragma region Style
		luaGlobals.new_enum("ImGuiStyleVar",
		"Alpha", ImGuiStyleVar_Alpha,
		"DisabledAlpha", ImGuiStyleVar_DisabledAlpha,
		"WindowPadding", ImGuiStyleVar_WindowPadding,
		"WindowRounding", ImGuiStyleVar_WindowRounding,
		"WindowBorderSize", ImGuiStyleVar_WindowBorderSize,
		"WindowMinSize", ImGuiStyleVar_WindowMinSize,
		"WindowTitleAlign", ImGuiStyleVar_WindowTitleAlign,
		"ChildRounding", ImGuiStyleVar_ChildRounding,
		"ChildBorderSize", ImGuiStyleVar_ChildBorderSize,
		"PopupRounding", ImGuiStyleVar_PopupRounding,
		"PopupBorderSize", ImGuiStyleVar_PopupBorderSize,
		"FramePadding", ImGuiStyleVar_FramePadding,
		"FrameRounding", ImGuiStyleVar_FrameRounding,
		"FrameBorderSize", ImGuiStyleVar_FrameBorderSize,
		"ItemSpacing", ImGuiStyleVar_ItemSpacing,
		"ItemInnerSpacing", ImGuiStyleVar_ItemInnerSpacing,
		"IndentSpacing", ImGuiStyleVar_IndentSpacing,
		"CellPadding", ImGuiStyleVar_CellPadding,
		"ScrollbarSize", ImGuiStyleVar_ScrollbarSize,
		"ScrollbarRounding", ImGuiStyleVar_ScrollbarRounding,
		"GrabMinSize", ImGuiStyleVar_GrabMinSize,
		"GrabRounding", ImGuiStyleVar_GrabRounding,
		"TabRounding", ImGuiStyleVar_TabRounding,
		"SelectableTextAlign", ImGuiStyleVar_SelectableTextAlign,
		"ButtonTextAlign", ImGuiStyleVar_ButtonTextAlign,
		"COUNT", ImGuiStyleVar_COUNT);
#pragma endregion Style

#pragma region Dir
		luaGlobals.new_enum("ImGuiDir",
		"None", ImGuiDir_None,
		"Left", ImGuiDir_Left,
		"Right", ImGuiDir_Right,
		"Up", ImGuiDir_Up,
		"Down", ImGuiDir_Down,
		"COUNT", ImGuiDir_COUNT);
#pragma endregion Dir

#pragma region Combo Flags
		luaGlobals.new_enum("ImGuiComboFlags",
		"None", ImGuiComboFlags_None,
		"PopupAlignLeft", ImGuiComboFlags_PopupAlignLeft,
		"HeightSmall", ImGuiComboFlags_HeightSmall,
		"HeightRegular", ImGuiComboFlags_HeightRegular,
		"HeightLarge", ImGuiComboFlags_HeightLarge,
		"HeightLargest", ImGuiComboFlags_HeightLargest,
		"NoArrowButton", ImGuiComboFlags_NoArrowButton,
		"NoPreview", ImGuiComboFlags_NoPreview,
		"HeightMask", ImGuiComboFlags_HeightMask_);
#pragma endregion Combo Flags

#pragma region InputText Flags
		luaGlobals.new_enum("ImGuiInputTextFlags",
		"None", ImGuiInputTextFlags_None,
		"CharsDecimal", ImGuiInputTextFlags_CharsDecimal,
		"CharsHexadecimal", ImGuiInputTextFlags_CharsHexadecimal,
		"CharsUppercase", ImGuiInputTextFlags_CharsUppercase,
		"CharsNoBlank", ImGuiInputTextFlags_CharsNoBlank,
		"AutoSelectAll", ImGuiInputTextFlags_AutoSelectAll,
		"EnterReturnsTrue", ImGuiInputTextFlags_EnterReturnsTrue,
		"CallbackCompletion", ImGuiInputTextFlags_CallbackCompletion,
		"CallbackHistory", ImGuiInputTextFlags_CallbackHistory,
		"CallbackAlways", ImGuiInputTextFlags_CallbackAlways,
		"CallbackCharFilter", ImGuiInputTextFlags_CallbackCharFilter,
		"AllowTabInput", ImGuiInputTextFlags_AllowTabInput,
		"CtrlEnterForNewLine", ImGuiInputTextFlags_CtrlEnterForNewLine,
		"NoHorizontalScroll", ImGuiInputTextFlags_NoHorizontalScroll,
		"AlwaysOverwrite", ImGuiInputTextFlags_AlwaysOverwrite,
		"ReadOnly", ImGuiInputTextFlags_ReadOnly,
		"Password", ImGuiInputTextFlags_Password,
		"NoUndoRedo", ImGuiInputTextFlags_NoUndoRedo,
		"CharsScientific", ImGuiInputTextFlags_CharsScientific,
		"CallbackResize", ImGuiInputTextFlags_CallbackResize,
		"CallbackEdit", ImGuiInputTextFlags_CallbackEdit);
#pragma endregion InputText Flags

#pragma region Slider Flags
		luaGlobals.new_enum("ImGuiSliderFlags",
		"None", ImGuiSliderFlags_None,
		"AlwaysClamp", ImGuiSliderFlags_AlwaysClamp,
		"Logarithmic", ImGuiSliderFlags_Logarithmic,
		"NoRoundToFormat", ImGuiSliderFlags_NoRoundToFormat,
		"NoInput", ImGuiSliderFlags_NoInput);
#pragma endregion Slider Flags

#pragma region ColorEdit Flags
		luaGlobals.new_enum("ImGuiColorEditFlags",
		"None", ImGuiColorEditFlags_None,
		"NoAlpha", ImGuiColorEditFlags_NoAlpha,
		"NoPicker", ImGuiColorEditFlags_NoPicker,
		"NoOptions", ImGuiColorEditFlags_NoOptions,
		"NoSmallPreview", ImGuiColorEditFlags_NoSmallPreview,
		"NoInputs", ImGuiColorEditFlags_NoInputs,
		"NoTooltip", ImGuiColorEditFlags_NoTooltip,
		"NoLabel", ImGuiColorEditFlags_NoLabel,
		"NoSidePreview", ImGuiColorEditFlags_NoSidePreview,
		"NoDragDrop", ImGuiColorEditFlags_NoDragDrop,
		"NoBorder", ImGuiColorEditFlags_NoBorder,
		"AlphaBar", ImGuiColorEditFlags_AlphaBar,
		"AlphaPreview", ImGuiColorEditFlags_AlphaPreview,
		"AlphaPreviewHalf", ImGuiColorEditFlags_AlphaPreviewHalf,
		"HDR", ImGuiColorEditFlags_HDR,
		"DisplayRGB", ImGuiColorEditFlags_DisplayRGB,
		"DisplayHSV", ImGuiColorEditFlags_DisplayHSV,
		"DisplayHex", ImGuiColorEditFlags_DisplayHex,
		"Uint8", ImGuiColorEditFlags_Uint8,
		"Float", ImGuiColorEditFlags_Float,
		"PickerHueBar", ImGuiColorEditFlags_PickerHueBar,
		"PickerHueWheel", ImGuiColorEditFlags_PickerHueWheel,
		"InputRGB", ImGuiColorEditFlags_InputRGB,
		"InputHSV", ImGuiColorEditFlags_InputHSV,
		"_OptionsDefault", ImGuiColorEditFlags_DefaultOptions_,
		"_DisplayMask", ImGuiColorEditFlags_DisplayMask_,
		"_DataTypeMask", ImGuiColorEditFlags_DataTypeMask_,
		"_PickerMask", ImGuiColorEditFlags_PickerMask_,
		"_InputMask", ImGuiColorEditFlags_InputMask_);
#pragma endregion ColorEdit Flags

#pragma region TreeNode Flags
		luaGlobals.new_enum("ImGuiTreeNodeFlags",
		"None", ImGuiTreeNodeFlags_None,
		"Selected", ImGuiTreeNodeFlags_Selected,
		"Framed", ImGuiTreeNodeFlags_Framed,
		"AllowItemOverlap", ImGuiTreeNodeFlags_AllowItemOverlap,
		"NoTreePushOnOpen", ImGuiTreeNodeFlags_NoTreePushOnOpen,
		"NoAutoOpenOnLog", ImGuiTreeNodeFlags_NoAutoOpenOnLog,
		"DefaultOpen", ImGuiTreeNodeFlags_DefaultOpen,
		"OpenOnDoubleClick", ImGuiTreeNodeFlags_OpenOnDoubleClick,
		"OpenOnArrow", ImGuiTreeNodeFlags_OpenOnArrow,
		"Leaf", ImGuiTreeNodeFlags_Leaf,
		"Bullet", ImGuiTreeNodeFlags_Bullet,
		"FramePadding", ImGuiTreeNodeFlags_FramePadding,
		"SpanAvailWidth", ImGuiTreeNodeFlags_SpanAvailWidth,
		"SpanFullWidth", ImGuiTreeNodeFlags_SpanFullWidth,
		"NavLeftJumpsBackHere", ImGuiTreeNodeFlags_NavLeftJumpsBackHere,
		"CollapsingHeader", ImGuiTreeNodeFlags_CollapsingHeader);
#pragma endregion TreeNode Flags

#pragma region Selectable Flags
		luaGlobals.new_enum("ImGuiSelectableFlags",
		"None", ImGuiSelectableFlags_None,
		"DontClosePopups", ImGuiSelectableFlags_DontClosePopups,
		"SpanAllColumns", ImGuiSelectableFlags_SpanAllColumns,
		"AllowDoubleClick", ImGuiSelectableFlags_AllowDoubleClick,
		"Disabled", ImGuiSelectableFlags_Disabled,
		"AllowItemOverlap", ImGuiSelectableFlags_AllowItemOverlap);
#pragma endregion Selectable Flags

#pragma region Popup Flags
		luaGlobals.new_enum("ImGuiPopupFlags",
		"None", ImGuiPopupFlags_None,
		"MouseButtonLeft", ImGuiPopupFlags_MouseButtonLeft,
		"MouseButtonRight", ImGuiPopupFlags_MouseButtonRight,
		"MouseButtonMiddle", ImGuiPopupFlags_MouseButtonMiddle,
		"MouseButtonMask_", ImGuiPopupFlags_MouseButtonMask_,
		"MouseButtonDefault_", ImGuiPopupFlags_MouseButtonDefault_,
		"NoOpenOverExistingPopup", ImGuiPopupFlags_NoOpenOverExistingPopup,
		"NoOpenOverItems", ImGuiPopupFlags_NoOpenOverItems,
		"AnyPopupId", ImGuiPopupFlags_AnyPopupId,
		"AnyPopupLevel", ImGuiPopupFlags_AnyPopupLevel,
		"AnyPopup", ImGuiPopupFlags_AnyPopup);
#pragma endregion Popup Flags
      
#pragma region Table Flags
		luaGlobals.new_enum("ImGuiTableFlags",
		    // Features
		    "None",
		    ImGuiTableFlags_None,
		    "Resizable",
		    ImGuiTableFlags_Resizable,
		    "Reorderable",
		    ImGuiTableFlags_Reorderable,
		    "Hideable",
		    ImGuiTableFlags_Hideable,
		    "Sortable",
		    ImGuiTableFlags_Sortable,
		    "NoSavedSettings",
		    ImGuiTableFlags_NoSavedSettings,
		    "ContextMenuInBody",
		    ImGuiTableFlags_ContextMenuInBody,
		    // Decorations
		    "RowBg",
		    ImGuiTableFlags_RowBg,
		    "BordersInnerH",
		    ImGuiTableFlags_BordersInnerH,
		    "BordersOuterH",
		    ImGuiTableFlags_BordersOuterH,
		    "BordersInnerV",
		    ImGuiTableFlags_BordersInnerV,
		    "BordersOuterV",
		    ImGuiTableFlags_BordersOuterV,
		    "BordersH",
		    ImGuiTableFlags_BordersH,
		    "BordersV",
		    ImGuiTableFlags_BordersV,
		    "BordersInner",
		    ImGuiTableFlags_BordersInner,
		    "BordersOuter",
		    ImGuiTableFlags_BordersOuter,
		    "Borders",
		    ImGuiTableFlags_Borders,
		    "NoBordersInBody",
		    ImGuiTableFlags_NoBordersInBody,
		    "NoBordersInBodyUntilResize",
		    ImGuiTableFlags_NoBordersInBodyUntilResize,
		    // Sizing Policy (read above for defaults)
		    "SizingFixedFit",
		    ImGuiTableFlags_SizingFixedFit,
		    "SizingFixedSame",
		    ImGuiTableFlags_SizingFixedSame,
		    "SizingStretchProp",
		    ImGuiTableFlags_SizingStretchProp,
		    "SizingStretchSame",
		    ImGuiTableFlags_SizingStretchSame,
		    // Sizing Extra Options
		    "NoHostExtendX",
		    ImGuiTableFlags_NoHostExtendX,
		    "NoHostExtendY",
		    ImGuiTableFlags_NoHostExtendY,
		    "NoKeepColumnsVisible",
		    ImGuiTableFlags_NoKeepColumnsVisible,
		    "PreciseWidths",
		    ImGuiTableFlags_PreciseWidths,
		    // Clipping
		    "NoClip",
		    ImGuiTableFlags_NoClip,
		    // Padding
		    "PadOuterX",
		    ImGuiTableFlags_PadOuterX,
		    "NoPadOuterX",
		    ImGuiTableFlags_NoPadOuterX,
		    "NoPadInnerX",
		    ImGuiTableFlags_NoPadInnerX,
		    // Scrolling
		    "ScrollX",
		    ImGuiTableFlags_ScrollX,
		    "ScrollY",
		    ImGuiTableFlags_ScrollY,
		    // Sorting
		    "SortMulti",
		    ImGuiTableFlags_SortMulti,
		    "SortTristate",
		    ImGuiTableFlags_SortTristate,
		    // [Internal] Combinations and masks
		    "SizingMask",
		    ImGuiTableFlags_SizingMask_);
#pragma endregion Table Flags

#pragma region TableColumn Flags
		luaGlobals.new_enum("ImGuiTableColumnFlags",
		    // Input configuration flags
		    "None",
		    ImGuiTableColumnFlags_None,
		    "Disabled",
		    ImGuiTableColumnFlags_Disabled,
		    "DefaultHide",
		    ImGuiTableColumnFlags_DefaultHide,
		    "DefaultSort",
		    ImGuiTableColumnFlags_DefaultSort,
		    "WidthStretch",
		    ImGuiTableColumnFlags_WidthStretch,
		    "WidthFixed",
		    ImGuiTableColumnFlags_WidthFixed,
		    "NoResize",
		    ImGuiTableColumnFlags_NoResize,
		    "NoReorder",
		    ImGuiTableColumnFlags_NoReorder,
		    "NoHide",
		    ImGuiTableColumnFlags_NoHide,
		    "NoClip",
		    ImGuiTableColumnFlags_NoClip,
		    "NoSort",
		    ImGuiTableColumnFlags_NoSort,
		    "NoSortAscending",
		    ImGuiTableColumnFlags_NoSortAscending,
		    "NoSortDescending",
		    ImGuiTableColumnFlags_NoSortDescending,
		    "NoHeaderLabel",
		    ImGuiTableColumnFlags_NoHeaderLabel,
		    "NoHeaderWidth",
		    ImGuiTableColumnFlags_NoHeaderWidth,
		    "PreferSortAscending",
		    ImGuiTableColumnFlags_PreferSortAscending,
		    "PreferSortDescending",
		    ImGuiTableColumnFlags_PreferSortDescending,
		    "IndentEnable",
		    ImGuiTableColumnFlags_IndentEnable,
		    "IndentDisable",
		    ImGuiTableColumnFlags_IndentDisable,
		    // Output status flags, read-only via TableGetColumnFlags()
		    "IsEnabled",
		    ImGuiTableColumnFlags_IsEnabled,
		    "IsVisible",
		    ImGuiTableColumnFlags_IsVisible,
		    "IsSorted",
		    ImGuiTableColumnFlags_IsSorted,
		    "IsHovered",
		    ImGuiTableColumnFlags_IsHovered,
		    // [Internal] Combinations and masks
		    "WidthMask_",
		    ImGuiTableColumnFlags_WidthMask_,
		    "IndentMask_",
		    ImGuiTableColumnFlags_IndentMask_,
		    "StatusMask_",
		    ImGuiTableColumnFlags_StatusMask_,
		    "NoDirectResize_",
		    ImGuiTableColumnFlags_NoDirectResize_);
#pragma endregion TableColumn Flags

#pragma region TableRow Flags
		luaGlobals.new_enum("ImGuiTableRowFlags",
		"None", ImGuiTableRowFlags_None,
		"Headers", ImGuiTableRowFlags_Headers);
#pragma endregion TableRow Flags

#pragma region TableBg Target
		luaGlobals.new_enum("ImGuiTableBgTarget",
		"None", ImGuiTableBgTarget_None,
		"RowBg0", ImGuiTableBgTarget_RowBg0,
		"RowBg1", ImGuiTableBgTarget_RowBg1,
		"CellBg", ImGuiTableBgTarget_CellBg);
#pragma endregion TableBg Target

#pragma region Draw Flags
		luaGlobals.new_enum("ImDrawFlags",
		"None", ImDrawFlags_None,
		"Closed", ImDrawFlags_Closed,
		"ImDrawFlags_RoundCornersTopLeft", ImDrawFlags_RoundCornersTopLeft,
		"RoundCornersTopRight", ImDrawFlags_RoundCornersTopRight,
		"RoundCornersBottomLeft", ImDrawFlags_RoundCornersBottomLeft,
		"RoundCornersBottomRight", ImDrawFlags_RoundCornersBottomRight,
		"RoundCornersNone", ImDrawFlags_RoundCornersNone,
		"RoundCornersTop", ImDrawFlags_RoundCornersTop,
		"RoundCornersBottom", ImDrawFlags_RoundCornersBottom,
		"RoundCornersLeft", ImDrawFlags_RoundCornersLeft,
		"RoundCornersRight", ImDrawFlags_RoundCornersRight,
		"RoundCornersAll", ImDrawFlags_RoundCornersAll);
#pragma endregion Draw Flags

#pragma region TabBar Flags
		luaGlobals.new_enum("ImGuiTabBarFlags",
		"None", ImGuiTabBarFlags_None,
		"Reorderable", ImGuiTabBarFlags_Reorderable,
		"AutoSelectNewTabs", ImGuiTabBarFlags_AutoSelectNewTabs,
		"TabListPopupButton", ImGuiTabBarFlags_TabListPopupButton,
		"NoCloseWithMiddleMouseButton", ImGuiTabBarFlags_NoCloseWithMiddleMouseButton,
		"NoTabListScrollingButtons", ImGuiTabBarFlags_NoTabListScrollingButtons,
		"NoTooltip", ImGuiTabBarFlags_NoTooltip,
		"FittingPolicyResizeDown", ImGuiTabBarFlags_FittingPolicyResizeDown,
		"FittingPolicyScroll", ImGuiTabBarFlags_FittingPolicyScroll,
		"FittingPolicyMask_", ImGuiTabBarFlags_FittingPolicyMask_,
		"FittingPolicyDefault_", ImGuiTabBarFlags_FittingPolicyDefault_);
#pragma endregion TabBar Flags

#pragma region TabItem Flags
		luaGlobals.new_enum("ImGuiTabItemFlags",
		"None", ImGuiTabItemFlags_None,
		"UnsavedDocument", ImGuiTabItemFlags_UnsavedDocument,
		"SetSelected", ImGuiTabItemFlags_SetSelected,
		"NoCloseWithMiddleMouseButton", ImGuiTabItemFlags_NoCloseWithMiddleMouseButton,
		"NoPushId", ImGuiTabItemFlags_NoPushId,
		"NoTooltip", ImGuiTabItemFlags_NoTooltip,
		"NoReorder", ImGuiTabItemFlags_NoReorder,
		"Leading", ImGuiTabItemFlags_Leading,
		"Trailing", ImGuiTabItemFlags_Trailing);
#pragma endregion TabItem Flags

#pragma region MouseButton
		luaGlobals.new_enum("ImGuiMouseButton",
		"Left", ImGuiMouseButton_Left,
		"Right", ImGuiMouseButton_Right,
		"Middle", ImGuiMouseButton_Middle,
		"COUNT", ImGuiMouseButton_COUNT);
#pragma endregion MouseButton

#pragma region ImGuiKey
		luaGlobals.new_enum("ImGuiKey",
		"Tab", ImGuiKey_Tab,
		"LeftArrow", ImGuiKey_LeftArrow,
		"RightArrow", ImGuiKey_RightArrow,
		"UpArrow", ImGuiKey_UpArrow,
		"DownArrow", ImGuiKey_DownArrow,
		"PageUp", ImGuiKey_PageUp,
		"PageDown", ImGuiKey_PageDown,
		"Home", ImGuiKey_Home,
		"End", ImGuiKey_End,
		"Insert", ImGuiKey_Insert,
		"Delete", ImGuiKey_Delete,
		"Backspace", ImGuiKey_Backspace,
		"Space", ImGuiKey_Space,
		"Enter", ImGuiKey_Enter,
		"Escape", ImGuiKey_Escape,
		"LeftCtrl", ImGuiKey_LeftCtrl,
		"LeftShift", ImGuiKey_LeftShift,
		"LeftAlt", ImGuiKey_LeftAlt,
		"LeftSuper", ImGuiKey_LeftSuper,
		"RightCtrl", ImGuiKey_RightCtrl,
		"RightShift", ImGuiKey_RightShift,
		"RightAlt", ImGuiKey_RightAlt,
		"RightSuper", ImGuiKey_RightSuper,
		"Menu", ImGuiKey_Menu,
		"A", ImGuiKey_A,
		"B", ImGuiKey_B,
		"C", ImGuiKey_C,
		"D", ImGuiKey_D,
		"E", ImGuiKey_E,
		"F", ImGuiKey_F,
		"G", ImGuiKey_G,
		"H", ImGuiKey_H,
		"I", ImGuiKey_I,
		"J", ImGuiKey_J,
		"K", ImGuiKey_K,
		"L", ImGuiKey_L,
		"M", ImGuiKey_M,
		"N", ImGuiKey_N,
		"O", ImGuiKey_O,
		"P", ImGuiKey_P,
		"Q", ImGuiKey_Q,
		"R", ImGuiKey_R,
		"S", ImGuiKey_S,
		"T", ImGuiKey_T,
		"U", ImGuiKey_U,
		"V", ImGuiKey_V,
		"W", ImGuiKey_W,
		"X", ImGuiKey_X,
		"Y", ImGuiKey_Y,
		"Z", ImGuiKey_Z,
		"0", ImGuiKey_0,
		"1", ImGuiKey_1,
		"2", ImGuiKey_2,
		"3", ImGuiKey_3,
		"4", ImGuiKey_4,
		"5", ImGuiKey_5,
		"6", ImGuiKey_6,
		"7", ImGuiKey_7,
		"8", ImGuiKey_8,
		"9", ImGuiKey_9,
		"F1", ImGuiKey_F1,
		"F2", ImGuiKey_F2,
		"F3", ImGuiKey_F3,
		"F4", ImGuiKey_F4,
		"F5", ImGuiKey_F5,
		"F6", ImGuiKey_F6,
		"F7", ImGuiKey_F7,
		"F8", ImGuiKey_F8,
		"F9", ImGuiKey_F9,
		"F10", ImGuiKey_F10,
		"F11", ImGuiKey_F11,
		"F12", ImGuiKey_F12,
		"Apostrophe", ImGuiKey_Apostrophe,
		"Comma", ImGuiKey_Comma,
		"Minus", ImGuiKey_Minus,
		"Period", ImGuiKey_Period,
		"Slash", ImGuiKey_Slash,
		"Semicolon", ImGuiKey_Semicolon,
		"Equal", ImGuiKey_Equal,
		"LeftBracket", ImGuiKey_LeftBracket,
		"Backslash", ImGuiKey_Backslash,
		"RightBracket", ImGuiKey_RightBracket,
		"GraveAccent", ImGuiKey_GraveAccent,
		"CapsLock", ImGuiKey_CapsLock,
		"ScrollLock", ImGuiKey_ScrollLock,
		"NumLock", ImGuiKey_NumLock,
		"PrintScreen", ImGuiKey_PrintScreen,
		"Pause", ImGuiKey_Pause,
		"Keypad0", ImGuiKey_Keypad0,
		"Keypad1", ImGuiKey_Keypad1,
		"Keypad2", ImGuiKey_Keypad2,
		"Keypad3", ImGuiKey_Keypad3,
		"Keypad4", ImGuiKey_Keypad4,
		"Keypad5", ImGuiKey_Keypad5,
		"Keypad6", ImGuiKey_Keypad6,
		"Keypad7", ImGuiKey_Keypad7,
		"Keypad8", ImGuiKey_Keypad8,
		"Keypad9", ImGuiKey_Keypad9,
		"KeypadDecimal", ImGuiKey_KeypadDecimal,
		"KeypadDivide", ImGuiKey_KeypadDivide,
		"KeypadMultiply", ImGuiKey_KeypadMultiply,
		"KeypadSubtract", ImGuiKey_KeypadSubtract,
		"KeypadAdd", ImGuiKey_KeypadAdd,
		"KeypadEnter", ImGuiKey_KeypadEnter,
		"KeypadEqual", ImGuiKey_KeypadEqual,
		"GamepadStart", ImGuiKey_GamepadStart,
		"GamepadBack", ImGuiKey_GamepadBack,
		"GamepadFaceLeft", ImGuiKey_GamepadFaceLeft,
		"GamepadFaceRight", ImGuiKey_GamepadFaceRight,
		"GamepadFaceUp", ImGuiKey_GamepadFaceUp,
		"GamepadFaceDown", ImGuiKey_GamepadFaceDown,
		"GamepadDpadLeft", ImGuiKey_GamepadDpadLeft,
		"GamepadDpadRight", ImGuiKey_GamepadDpadRight,
		"GamepadDpadUp", ImGuiKey_GamepadDpadUp,
		"GamepadDpadDown", ImGuiKey_GamepadDpadDown,
		"GamepadL1", ImGuiKey_GamepadL1,
		"GamepadR1", ImGuiKey_GamepadR1,
		"GamepadL2", ImGuiKey_GamepadL2,
		"GamepadR2", ImGuiKey_GamepadR2,
		"GamepadL3", ImGuiKey_GamepadL3,
		"GamepadR3", ImGuiKey_GamepadR3,
		"GamepadLStickLeft", ImGuiKey_GamepadLStickLeft,
		"GamepadLStickRight", ImGuiKey_GamepadLStickRight,
		"GamepadLStickUp", ImGuiKey_GamepadLStickUp,
		"GamepadLStickDown", ImGuiKey_GamepadLStickDown,
		"GamepadRStickLeft", ImGuiKey_GamepadRStickLeft,
		"GamepadRStickRight", ImGuiKey_GamepadRStickRight,
		"GamepadRStickUp", ImGuiKey_GamepadRStickUp,
		"GamepadRStickDown", ImGuiKey_GamepadRStickDown,
		"MouseRight", ImGuiKey_MouseRight,
		"MouseMiddle", ImGuiKey_MouseMiddle,
		"MouseX1", ImGuiKey_MouseX1,
		"MouseX2", ImGuiKey_MouseX2,
		"MouseWheelX", ImGuiKey_MouseWheelX,
		"MouseWheelY", ImGuiKey_MouseWheelY,
		"ModCtrl", ImGuiMod_Ctrl,
		"ModShift", ImGuiMod_Shift,
		"ModAlt", ImGuiMod_Alt,
		"ModSuper", ImGuiMod_Super,
		"ModShortcut", ImGuiMod_Shortcut);
#pragma endregion ImGuiKey
	}
}
```