note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class AMQP_FIELD_VALUE_T__STRUCT_API

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

	kind: CHARACTER
			-- Access member `kind`
		require
			exists: exists
		do
			Result := c_kind (item)
		ensure
			result_correct: Result = c_kind (item)
		end

	set_kind (a_value: CHARACTER) 
			-- Change the value of member `kind` to `a_value`.
		require
			exists: exists
		do
			set_c_kind (item, a_value)
		ensure
			kind_set: a_value = kind
		end

feature {NONE} -- Implementation wrapper for struct struct amqp_field_value_t_

	sizeof_external: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"sizeof(struct amqp_field_value_t_)"
		end

	c_kind (an_item: POINTER): CHARACTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_field_value_t_*)$an_item)->kind
			]"
		end

	set_c_kind (an_item: POINTER; a_value: CHARACTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_field_value_t_*)$an_item)->kind =  (uint8_t)$a_value
			]"
		ensure
			kind_set: a_value = c_kind (an_item)
		end

end