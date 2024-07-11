---
order: -10
---

# Memory

!!!warning
This section will be documented in more detail later.
!!!
## raw.memory namespace
```c++
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
```
