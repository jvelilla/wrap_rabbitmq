note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class AMQP_RPC_REPLY_T__STRUCT_API

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

	reply_type: INTEGER
			-- Access member `reply_type`
		require
			exists: exists
		do
			Result := c_reply_type (item)
		ensure
			result_correct: Result = c_reply_type (item)
		end

	set_reply_type (a_value: INTEGER) 
			-- Change the value of member `reply_type` to `a_value`.
		require
			exists: exists
		do
			set_c_reply_type (item, a_value)
		ensure
			reply_type_set: a_value = reply_type
		end

	reply: POINTER
			-- Access member `reply`
		require
			exists: exists
		do
			Result := c_reply (item) 
		ensure
		end

	set_reply (a_value: POINTER )
			-- Set member `reply`
		require
			a_value_not_void: a_value /= default_pointer
			exists: exists
		do
			set_c_reply (item, a_value)
		ensure
			reply_set: reply = a_value 		end

	library_error: INTEGER
			-- Access member `library_error`
		require
			exists: exists
		do
			Result := c_library_error (item)
		ensure
			result_correct: Result = c_library_error (item)
		end

	set_library_error (a_value: INTEGER) 
			-- Change the value of member `library_error` to `a_value`.
		require
			exists: exists
		do
			set_c_library_error (item, a_value)
		ensure
			library_error_set: a_value = library_error
		end

feature {NONE} -- Implementation wrapper for struct struct amqp_rpc_reply_t_

	sizeof_external: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"sizeof(struct amqp_rpc_reply_t_)"
		end

	c_reply_type (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_rpc_reply_t_*)$an_item)->reply_type
			]"
		end

	set_c_reply_type (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_rpc_reply_t_*)$an_item)->reply_type =  (amqp_response_type_enum)$a_value
			]"
		ensure
			reply_type_set: a_value = c_reply_type (an_item)
		end

	c_reply (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				&((struct amqp_rpc_reply_t_*)$an_item)->reply
			]"
		end

	set_c_reply (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_rpc_reply_t_*)$an_item)->reply =  *(amqp_method_t*)$a_value
			]"
		end

	c_library_error (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_rpc_reply_t_*)$an_item)->library_error
			]"
		end

	set_c_library_error (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_rpc_reply_t_*)$an_item)->library_error =  (int)$a_value
			]"
		ensure
			library_error_set: a_value = c_library_error (an_item)
		end

end
