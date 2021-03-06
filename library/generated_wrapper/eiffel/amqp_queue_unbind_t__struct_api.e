note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class AMQP_QUEUE_UNBIND_T__STRUCT_API

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

	ticket: NATURAL
			-- Access member `ticket`
		require
			exists: exists
		do
			Result := c_ticket (item)
		ensure
			result_correct: Result = c_ticket (item)
		end

	set_ticket (a_value: NATURAL) 
			-- Change the value of member `ticket` to `a_value`.
		require
			exists: exists
		do
			set_c_ticket (item, a_value)
		ensure
			ticket_set: a_value = ticket
		end

	queue: POINTER
			-- Access member `queue`
		require
			exists: exists
		do
			Result := c_queue (item) 
		ensure
		end

	set_queue (a_value: POINTER )
			-- Set member `queue`
		require
			a_value_not_void: a_value /= default_pointer
			exists: exists
		do
			set_c_queue (item, a_value)
		ensure
			queue_set: queue = a_value 		end

	exchange: POINTER
			-- Access member `exchange`
		require
			exists: exists
		do
			Result := c_exchange (item) 
		ensure
		end

	set_exchange (a_value: POINTER )
			-- Set member `exchange`
		require
			a_value_not_void: a_value /= default_pointer
			exists: exists
		do
			set_c_exchange (item, a_value)
		ensure
			exchange_set: exchange = a_value 		end

	routing_key: POINTER
			-- Access member `routing_key`
		require
			exists: exists
		do
			Result := c_routing_key (item) 
		ensure
		end

	set_routing_key (a_value: POINTER )
			-- Set member `routing_key`
		require
			a_value_not_void: a_value /= default_pointer
			exists: exists
		do
			set_c_routing_key (item, a_value)
		ensure
			routing_key_set: routing_key = a_value 		end

	arguments: POINTER
			-- Access member `arguments`
		require
			exists: exists
		do
			Result := c_arguments (item) 
		ensure
		end

	set_arguments (a_value: POINTER )
			-- Set member `arguments`
		require
			a_value_not_void: a_value /= default_pointer
			exists: exists
		do
			set_c_arguments (item, a_value)
		ensure
			arguments_set: arguments = a_value 		end

feature {NONE} -- Implementation wrapper for struct struct amqp_queue_unbind_t_

	sizeof_external: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"sizeof(struct amqp_queue_unbind_t_)"
		end

	c_ticket (an_item: POINTER): NATURAL
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_unbind_t_*)$an_item)->ticket
			]"
		end

	set_c_ticket (an_item: POINTER; a_value: NATURAL) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_unbind_t_*)$an_item)->ticket =  (uint16_t)$a_value
			]"
		ensure
			ticket_set: a_value = c_ticket (an_item)
		end

	c_queue (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				&((struct amqp_queue_unbind_t_*)$an_item)->queue
			]"
		end

	set_c_queue (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_unbind_t_*)$an_item)->queue =  *(amqp_bytes_t*)$a_value
			]"
		end

	c_exchange (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				&((struct amqp_queue_unbind_t_*)$an_item)->exchange
			]"
		end

	set_c_exchange (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_unbind_t_*)$an_item)->exchange =  *(amqp_bytes_t*)$a_value
			]"
		end

	c_routing_key (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				&((struct amqp_queue_unbind_t_*)$an_item)->routing_key
			]"
		end

	set_c_routing_key (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_unbind_t_*)$an_item)->routing_key =  *(amqp_bytes_t*)$a_value
			]"
		end

	c_arguments (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				&((struct amqp_queue_unbind_t_*)$an_item)->arguments
			]"
		end

	set_c_arguments (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_unbind_t_*)$an_item)->arguments =  *(amqp_table_t*)$a_value
			]"
		end

end
