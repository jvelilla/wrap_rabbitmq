note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class AMQP_BASIC_QOS_T__STRUCT_API

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

	prefetch_size: NATURAL
			-- Access member `prefetch_size`
		require
			exists: exists
		do
			Result := c_prefetch_size (item)
		ensure
			result_correct: Result = c_prefetch_size (item)
		end

	set_prefetch_size (a_value: NATURAL) 
			-- Change the value of member `prefetch_size` to `a_value`.
		require
			exists: exists
		do
			set_c_prefetch_size (item, a_value)
		ensure
			prefetch_size_set: a_value = prefetch_size
		end

	prefetch_count: NATURAL
			-- Access member `prefetch_count`
		require
			exists: exists
		do
			Result := c_prefetch_count (item)
		ensure
			result_correct: Result = c_prefetch_count (item)
		end

	set_prefetch_count (a_value: NATURAL) 
			-- Change the value of member `prefetch_count` to `a_value`.
		require
			exists: exists
		do
			set_c_prefetch_count (item, a_value)
		ensure
			prefetch_count_set: a_value = prefetch_count
		end

	global: INTEGER
			-- Access member `global`
		require
			exists: exists
		do
			Result := c_global (item)
		ensure
			result_correct: Result = c_global (item)
		end

	set_global (a_value: INTEGER) 
			-- Change the value of member `global` to `a_value`.
		require
			exists: exists
		do
			set_c_global (item, a_value)
		ensure
			global_set: a_value = global
		end

feature {NONE} -- Implementation wrapper for struct struct amqp_basic_qos_t_

	sizeof_external: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"sizeof(struct amqp_basic_qos_t_)"
		end

	c_prefetch_size (an_item: POINTER): NATURAL
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_basic_qos_t_*)$an_item)->prefetch_size
			]"
		end

	set_c_prefetch_size (an_item: POINTER; a_value: NATURAL) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_basic_qos_t_*)$an_item)->prefetch_size =  (uint32_t)$a_value
			]"
		ensure
			prefetch_size_set: a_value = c_prefetch_size (an_item)
		end

	c_prefetch_count (an_item: POINTER): NATURAL
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_basic_qos_t_*)$an_item)->prefetch_count
			]"
		end

	set_c_prefetch_count (an_item: POINTER; a_value: NATURAL) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_basic_qos_t_*)$an_item)->prefetch_count =  (uint16_t)$a_value
			]"
		ensure
			prefetch_count_set: a_value = c_prefetch_count (an_item)
		end

	c_global (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_basic_qos_t_*)$an_item)->global
			]"
		end

	set_c_global (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_basic_qos_t_*)$an_item)->global =  (amqp_boolean_t)$a_value
			]"
		ensure
			global_set: a_value = c_global (an_item)
		end

end
