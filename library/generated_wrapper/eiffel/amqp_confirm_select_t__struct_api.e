note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class AMQP_CONFIRM_SELECT_T__STRUCT_API

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

	nowait: INTEGER
			-- Access member `nowait`
		require
			exists: exists
		do
			Result := c_nowait (item)
		ensure
			result_correct: Result = c_nowait (item)
		end

	set_nowait (a_value: INTEGER) 
			-- Change the value of member `nowait` to `a_value`.
		require
			exists: exists
		do
			set_c_nowait (item, a_value)
		ensure
			nowait_set: a_value = nowait
		end

feature {NONE} -- Implementation wrapper for struct struct amqp_confirm_select_t_

	sizeof_external: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"sizeof(struct amqp_confirm_select_t_)"
		end

	c_nowait (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_confirm_select_t_*)$an_item)->nowait
			]"
		end

	set_c_nowait (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_confirm_select_t_*)$an_item)->nowait =  (amqp_boolean_t)$a_value
			]"
		ensure
			nowait_set: a_value = c_nowait (an_item)
		end

end
