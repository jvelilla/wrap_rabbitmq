note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class AMQP_EXCHANGE_DECLARE_T__STRUCT_API

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

	type: POINTER
			-- Access member `type`
		require
			exists: exists
		do
			Result := c_type (item) 
		ensure
		end

	set_type (a_value: POINTER )
			-- Set member `type`
		require
			a_value_not_void: a_value /= default_pointer
			exists: exists
		do
			set_c_type (item, a_value)
		ensure
			type_set: type = a_value 		end

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

	internal: INTEGER
			-- Access member `internal`
		require
			exists: exists
		do
			Result := c_internal (item)
		ensure
			result_correct: Result = c_internal (item)
		end

	set_internal (a_value: INTEGER) 
			-- Change the value of member `internal` to `a_value`.
		require
			exists: exists
		do
			set_c_internal (item, a_value)
		ensure
			internal_set: a_value = internal
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

feature {NONE} -- Implementation wrapper for struct struct amqp_exchange_declare_t_

	sizeof_external: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"sizeof(struct amqp_exchange_declare_t_)"
		end

	c_ticket (an_item: POINTER): NATURAL
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_exchange_declare_t_*)$an_item)->ticket
			]"
		end

	set_c_ticket (an_item: POINTER; a_value: NATURAL) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_exchange_declare_t_*)$an_item)->ticket =  (uint16_t)$a_value
			]"
		ensure
			ticket_set: a_value = c_ticket (an_item)
		end

	c_exchange (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				&((struct amqp_exchange_declare_t_*)$an_item)->exchange
			]"
		end

	set_c_exchange (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_exchange_declare_t_*)$an_item)->exchange =  *(amqp_bytes_t*)$a_value
			]"
		end

	c_type (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				&((struct amqp_exchange_declare_t_*)$an_item)->type
			]"
		end

	set_c_type (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_exchange_declare_t_*)$an_item)->type =  *(amqp_bytes_t*)$a_value
			]"
		end

	c_passive (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_exchange_declare_t_*)$an_item)->passive
			]"
		end

	set_c_passive (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_exchange_declare_t_*)$an_item)->passive =  (amqp_boolean_t)$a_value
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
				((struct amqp_exchange_declare_t_*)$an_item)->durable
			]"
		end

	set_c_durable (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_exchange_declare_t_*)$an_item)->durable =  (amqp_boolean_t)$a_value
			]"
		ensure
			durable_set: a_value = c_durable (an_item)
		end

	c_auto_delete (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_exchange_declare_t_*)$an_item)->auto_delete
			]"
		end

	set_c_auto_delete (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_exchange_declare_t_*)$an_item)->auto_delete =  (amqp_boolean_t)$a_value
			]"
		ensure
			auto_delete_set: a_value = c_auto_delete (an_item)
		end

	c_internal (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_exchange_declare_t_*)$an_item)->internal
			]"
		end

	set_c_internal (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_exchange_declare_t_*)$an_item)->internal =  (amqp_boolean_t)$a_value
			]"
		ensure
			internal_set: a_value = c_internal (an_item)
		end

	c_nowait (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_exchange_declare_t_*)$an_item)->nowait
			]"
		end

	set_c_nowait (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_exchange_declare_t_*)$an_item)->nowait =  (amqp_boolean_t)$a_value
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
				&((struct amqp_exchange_declare_t_*)$an_item)->arguments
			]"
		end

	set_c_arguments (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_exchange_declare_t_*)$an_item)->arguments =  *(amqp_table_t*)$a_value
			]"
		end

end
