note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class AMQP_TX_SELECT_OK_T__STRUCT_API

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

	dummy: CHARACTER
			-- Access member `dummy`
		require
			exists: exists
		do
			Result := c_dummy (item)
		ensure
			result_correct: Result = c_dummy (item)
		end

	set_dummy (a_value: CHARACTER) 
			-- Change the value of member `dummy` to `a_value`.
		require
			exists: exists
		do
			set_c_dummy (item, a_value)
		ensure
			dummy_set: a_value = dummy
		end

feature {NONE} -- Implementation wrapper for struct struct amqp_tx_select_ok_t_

	sizeof_external: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"sizeof(struct amqp_tx_select_ok_t_)"
		end

	c_dummy (an_item: POINTER): CHARACTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_tx_select_ok_t_*)$an_item)->dummy
			]"
		end

	set_c_dummy (an_item: POINTER; a_value: CHARACTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_tx_select_ok_t_*)$an_item)->dummy =  (char)$a_value
			]"
		ensure
			dummy_set: a_value = c_dummy (an_item)
		end

end
