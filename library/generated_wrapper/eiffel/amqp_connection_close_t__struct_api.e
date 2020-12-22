note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class AMQP_CONNECTION_CLOSE_T__STRUCT_API

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

	reply_code: NATURAL
			-- Access member `reply_code`
		require
			exists: exists
		do
			Result := c_reply_code (item)
		ensure
			result_correct: Result = c_reply_code (item)
		end

	set_reply_code (a_value: NATURAL) 
			-- Change the value of member `reply_code` to `a_value`.
		require
			exists: exists
		do
			set_c_reply_code (item, a_value)
		ensure
			reply_code_set: a_value = reply_code
		end

	reply_text: POINTER
			-- Access member `reply_text`
		require
			exists: exists
		do
			Result := c_reply_text (item) 
		ensure
		end

	set_reply_text (a_value: POINTER )
			-- Set member `reply_text`
		require
			a_value_not_void: a_value /= default_pointer
			exists: exists
		do
			set_c_reply_text (item, a_value)
		ensure
			reply_text_set: reply_text = a_value 		end

	class_id: NATURAL
			-- Access member `class_id`
		require
			exists: exists
		do
			Result := c_class_id (item)
		ensure
			result_correct: Result = c_class_id (item)
		end

	set_class_id (a_value: NATURAL) 
			-- Change the value of member `class_id` to `a_value`.
		require
			exists: exists
		do
			set_c_class_id (item, a_value)
		ensure
			class_id_set: a_value = class_id
		end

	method_id: NATURAL
			-- Access member `method_id`
		require
			exists: exists
		do
			Result := c_method_id (item)
		ensure
			result_correct: Result = c_method_id (item)
		end

	set_method_id (a_value: NATURAL) 
			-- Change the value of member `method_id` to `a_value`.
		require
			exists: exists
		do
			set_c_method_id (item, a_value)
		ensure
			method_id_set: a_value = method_id
		end

feature {NONE} -- Implementation wrapper for struct struct amqp_connection_close_t_

	sizeof_external: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"sizeof(struct amqp_connection_close_t_)"
		end

	c_reply_code (an_item: POINTER): NATURAL
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_connection_close_t_*)$an_item)->reply_code
			]"
		end

	set_c_reply_code (an_item: POINTER; a_value: NATURAL) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_connection_close_t_*)$an_item)->reply_code =  (uint16_t)$a_value
			]"
		ensure
			reply_code_set: a_value = c_reply_code (an_item)
		end

	c_reply_text (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				&((struct amqp_connection_close_t_*)$an_item)->reply_text
			]"
		end

	set_c_reply_text (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_connection_close_t_*)$an_item)->reply_text =  *(amqp_bytes_t*)$a_value
			]"
		end

	c_class_id (an_item: POINTER): NATURAL
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_connection_close_t_*)$an_item)->class_id
			]"
		end

	set_c_class_id (an_item: POINTER; a_value: NATURAL) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_connection_close_t_*)$an_item)->class_id =  (uint16_t)$a_value
			]"
		ensure
			class_id_set: a_value = c_class_id (an_item)
		end

	c_method_id (an_item: POINTER): NATURAL
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_connection_close_t_*)$an_item)->method_id
			]"
		end

	set_c_method_id (an_item: POINTER; a_value: NATURAL) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_connection_close_t_*)$an_item)->method_id =  (uint16_t)$a_value
			]"
		ensure
			method_id_set: a_value = c_method_id (an_item)
		end

end