note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class AMQP_TABLE_T__STRUCT_API

inherit

	MEMORY_STRUCTURE

	
create

	make,
	make_by_pointer

feature -- Measurement

	structure_size: INTEGER 
		do
			Result := sizeof_external
		end

feature {ANY} -- Member Access

	num_entries: INTEGER
			-- Access member `num_entries`
		require
			exists: exists
		do
			Result := c_num_entries (item)
		ensure
			result_correct: Result = c_num_entries (item)
		end

	set_num_entries (a_value: INTEGER) 
			-- Change the value of member `num_entries` to `a_value`.
		require
			exists: exists
		do
			set_c_num_entries (item, a_value)
		ensure
			num_entries_set: a_value = num_entries
		end

	entries: detachable AMQP_TABLE_ENTRY_T__STRUCT_API 
			-- Access member `entries`
		require
			exists: exists
		do
			if attached c_entries (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_entries (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_entries (item) 
		end

	set_entries (a_value: AMQP_TABLE_ENTRY_T__STRUCT_API) 
			-- Set member `entries`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_entries (item, a_value.item)
		ensure
			entries_set: attached entries as l_value implies l_value.item = a_value.item
		end

feature {NONE} -- Implementation wrapper for struct struct amqp_table_t_

	sizeof_external: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"sizeof(struct amqp_table_t_)"
		end

	c_num_entries (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_table_t_*)$an_item)->num_entries
			]"
		end

	set_c_num_entries (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_table_t_*)$an_item)->num_entries =  (int)$a_value
			]"
		ensure
			num_entries_set: a_value = c_num_entries (an_item)
		end

	c_entries (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_table_t_*)$an_item)->entries
			]"
		end

	set_c_entries (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_table_t_*)$an_item)->entries =  (struct amqp_table_entry_t_*)$a_value
			]"
		ensure
			entries_set: a_value = c_entries (an_item)
		end

end
