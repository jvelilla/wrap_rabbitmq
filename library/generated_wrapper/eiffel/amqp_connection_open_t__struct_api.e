note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class AMQP_CONNECTION_OPEN_T__STRUCT_API

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

	virtual_host: POINTER
			-- Access member `virtual_host`
		require
			exists: exists
		do
			Result := c_virtual_host (item) 
		ensure
		end

	set_virtual_host (a_value: POINTER )
			-- Set member `virtual_host`
		require
			a_value_not_void: a_value /= default_pointer
			exists: exists
		do
			set_c_virtual_host (item, a_value)
		ensure
			virtual_host_set: virtual_host = a_value 		end

	capabilities: POINTER
			-- Access member `capabilities`
		require
			exists: exists
		do
			Result := c_capabilities (item) 
		ensure
		end

	set_capabilities (a_value: POINTER )
			-- Set member `capabilities`
		require
			a_value_not_void: a_value /= default_pointer
			exists: exists
		do
			set_c_capabilities (item, a_value)
		ensure
			capabilities_set: capabilities = a_value 		end

	insist: INTEGER
			-- Access member `insist`
		require
			exists: exists
		do
			Result := c_insist (item)
		ensure
			result_correct: Result = c_insist (item)
		end

	set_insist (a_value: INTEGER) 
			-- Change the value of member `insist` to `a_value`.
		require
			exists: exists
		do
			set_c_insist (item, a_value)
		ensure
			insist_set: a_value = insist
		end

feature {NONE} -- Implementation wrapper for struct struct amqp_connection_open_t_

	sizeof_external: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"sizeof(struct amqp_connection_open_t_)"
		end

	c_virtual_host (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				&((struct amqp_connection_open_t_*)$an_item)->virtual_host
			]"
		end

	set_c_virtual_host (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_connection_open_t_*)$an_item)->virtual_host =  *(amqp_bytes_t*)$a_value
			]"
		end

	c_capabilities (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				&((struct amqp_connection_open_t_*)$an_item)->capabilities
			]"
		end

	set_c_capabilities (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_connection_open_t_*)$an_item)->capabilities =  *(amqp_bytes_t*)$a_value
			]"
		end

	c_insist (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_connection_open_t_*)$an_item)->insist
			]"
		end

	set_c_insist (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_connection_open_t_*)$an_item)->insist =  (amqp_boolean_t)$a_value
			]"
		ensure
			insist_set: a_value = c_insist (an_item)
		end

end
