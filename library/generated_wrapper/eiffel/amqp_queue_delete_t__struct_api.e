note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class AMQP_QUEUE_DELETE_T__STRUCT_API

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

	if_unused: INTEGER
			-- Access member `if_unused`
		require
			exists: exists
		do
			Result := c_if_unused (item)
		ensure
			result_correct: Result = c_if_unused (item)
		end

	set_if_unused (a_value: INTEGER) 
			-- Change the value of member `if_unused` to `a_value`.
		require
			exists: exists
		do
			set_c_if_unused (item, a_value)
		ensure
			if_unused_set: a_value = if_unused
		end

	if_empty: INTEGER
			-- Access member `if_empty`
		require
			exists: exists
		do
			Result := c_if_empty (item)
		ensure
			result_correct: Result = c_if_empty (item)
		end

	set_if_empty (a_value: INTEGER) 
			-- Change the value of member `if_empty` to `a_value`.
		require
			exists: exists
		do
			set_c_if_empty (item, a_value)
		ensure
			if_empty_set: a_value = if_empty
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

feature {NONE} -- Implementation wrapper for struct struct amqp_queue_delete_t_

	sizeof_external: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"sizeof(struct amqp_queue_delete_t_)"
		end

	c_ticket (an_item: POINTER): NATURAL
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_delete_t_*)$an_item)->ticket
			]"
		end

	set_c_ticket (an_item: POINTER; a_value: NATURAL) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_delete_t_*)$an_item)->ticket =  (uint16_t)$a_value
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
				&((struct amqp_queue_delete_t_*)$an_item)->queue
			]"
		end

	set_c_queue (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_delete_t_*)$an_item)->queue =  *(amqp_bytes_t*)$a_value
			]"
		end

	c_if_unused (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_delete_t_*)$an_item)->if_unused
			]"
		end

	set_c_if_unused (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_delete_t_*)$an_item)->if_unused =  (amqp_boolean_t)$a_value
			]"
		ensure
			if_unused_set: a_value = c_if_unused (an_item)
		end

	c_if_empty (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_delete_t_*)$an_item)->if_empty
			]"
		end

	set_c_if_empty (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_delete_t_*)$an_item)->if_empty =  (amqp_boolean_t)$a_value
			]"
		ensure
			if_empty_set: a_value = c_if_empty (an_item)
		end

	c_nowait (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_delete_t_*)$an_item)->nowait
			]"
		end

	set_c_nowait (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_queue_delete_t_*)$an_item)->nowait =  (amqp_boolean_t)$a_value
			]"
		ensure
			nowait_set: a_value = c_nowait (an_item)
		end

end
