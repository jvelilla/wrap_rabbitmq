note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class AMQP_QUEUE_DECLARE_T__STRUCT_API

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

	passive: INTEGER
			-- Access member `passive`
		require
			exists: exists
		do
			Result := c_passive (item)
		ensure
			result_correct: Result = c_passive (item)
		end

	set_passive (a_value: INTEGER) 
			-- Change the value of member `passive` to `a_value`.
		require
			exists: exists
		do
			set_c_passive (item, a_value)
		ensure
			passive_set: a_value = passive
		end

	durable: INTEGER
			-- Access member `durable`
		require
			exists: exists
		do
			Result := c_durable (item)
		ensure
			result_correct: Result = c_durable (item)
		end

	set_durable (a_value: INTEGER) 
			-- Change the value of member `durable` to `a_value`.
		require
			exists: exists
		do
			set_c_durable (item, a_value)
		ensure
			durable_set: a_value = durable
		end

	exclusive: INTEGER
			-- Access member `exclusive`
		require
			exists: exists
		do
			Result := c_exclusive (item)
		ensure
			result_correct: Result = c_exclusive (item)
		end

	set_exclusive (a_value: INTEGER) 
			-- Change the value of member `exclusive` to `a_value`.
		require
			exists: exists
		do
			set_c_exclusive (item, a_value)
		ensure
			exclusive_set: a_value = exclusive
		end

	auto_delete: INTEGER
			-- Access member `auto_delete`
		require
			exists: exists
		do
			Result := c_auto_delete (item)
		ensure
			result_correct: Result = c_auto_delete (item)
		end

	set_auto_delete (a_value: INTEGER) 
			-- Change the value of member `auto_delete` to `a_value`.
		require
			exists: exists
		do
			set_c_auto_delete (item, a_value)
		ensure
			auto_delete_set: a_value = auto_delete
		end

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

feature {NONE} -- Implementation wrapper for struct struct amqp_queue_declare_t_

	sizeof_external: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"sizeof(struct amqp_queue_declare_t_)"
		end

	c_ticket (an_item: POINTER): NATURAL
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_declare_t_*)$an_item)->ticket
			]"
		end

	set_c_ticket (an_item: POINTER; a_value: NATURAL) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_declare_t_*)$an_item)->ticket =  (uint16_t)$a_value
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
				&((struct amqp_queue_declare_t_*)$an_item)->queue
			]"
		end

	set_c_queue (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_declare_t_*)$an_item)->queue =  *(amqp_bytes_t*)$a_value
			]"
		end

	c_passive (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_declare_t_*)$an_item)->passive
			]"
		end

	set_c_passive (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_declare_t_*)$an_item)->passive =  (amqp_boolean_t)$a_value
			]"
		ensure
			passive_set: a_value = c_passive (an_item)
		end

	c_durable (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_declare_t_*)$an_item)->durable
			]"
		end

	set_c_durable (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_declare_t_*)$an_item)->durable =  (amqp_boolean_t)$a_value
			]"
		ensure
			durable_set: a_value = c_durable (an_item)
		end

	c_exclusive (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_declare_t_*)$an_item)->exclusive
			]"
		end

	set_c_exclusive (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_declare_t_*)$an_item)->exclusive =  (amqp_boolean_t)$a_value
			]"
		ensure
			exclusive_set: a_value = c_exclusive (an_item)
		end

	c_auto_delete (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_declare_t_*)$an_item)->auto_delete
			]"
		end

	set_c_auto_delete (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_declare_t_*)$an_item)->auto_delete =  (amqp_boolean_t)$a_value
			]"
		ensure
			auto_delete_set: a_value = c_auto_delete (an_item)
		end

	c_nowait (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_declare_t_*)$an_item)->nowait
			]"
		end

	set_c_nowait (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_declare_t_*)$an_item)->nowait =  (amqp_boolean_t)$a_value
			]"
		ensure
			nowait_set: a_value = c_nowait (an_item)
		end

	c_arguments (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				&((struct amqp_queue_declare_t_*)$an_item)->arguments
			]"
		end

	set_c_arguments (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_declare_t_*)$an_item)->arguments =  *(amqp_table_t*)$a_value
			]"
		end

end
