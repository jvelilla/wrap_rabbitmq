note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class AMQP_CONNECTION_TUNE_OK_T__STRUCT_API

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

	channel_max: NATURAL
			-- Access member `channel_max`
		require
			exists: exists
		do
			Result := c_channel_max (item)
		ensure
			result_correct: Result = c_channel_max (item)
		end

	set_channel_max (a_value: NATURAL) 
			-- Change the value of member `channel_max` to `a_value`.
		require
			exists: exists
		do
			set_c_channel_max (item, a_value)
		ensure
			channel_max_set: a_value = channel_max
		end

	frame_max: NATURAL
			-- Access member `frame_max`
		require
			exists: exists
		do
			Result := c_frame_max (item)
		ensure
			result_correct: Result = c_frame_max (item)
		end

	set_frame_max (a_value: NATURAL) 
			-- Change the value of member `frame_max` to `a_value`.
		require
			exists: exists
		do
			set_c_frame_max (item, a_value)
		ensure
			frame_max_set: a_value = frame_max
		end

	heartbeat: NATURAL
			-- Access member `heartbeat`
		require
			exists: exists
		do
			Result := c_heartbeat (item)
		ensure
			result_correct: Result = c_heartbeat (item)
		end

	set_heartbeat (a_value: NATURAL) 
			-- Change the value of member `heartbeat` to `a_value`.
		require
			exists: exists
		do
			set_c_heartbeat (item, a_value)
		ensure
			heartbeat_set: a_value = heartbeat
		end

feature {NONE} -- Implementation wrapper for struct struct amqp_connection_tune_ok_t_

	sizeof_external: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"sizeof(struct amqp_connection_tune_ok_t_)"
		end

	c_channel_max (an_item: POINTER): NATURAL
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_connection_tune_ok_t_*)$an_item)->channel_max
			]"
		end

	set_c_channel_max (an_item: POINTER; a_value: NATURAL) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_connection_tune_ok_t_*)$an_item)->channel_max =  (uint16_t)$a_value
			]"
		ensure
			channel_max_set: a_value = c_channel_max (an_item)
		end

	c_frame_max (an_item: POINTER): NATURAL
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_connection_tune_ok_t_*)$an_item)->frame_max
			]"
		end

	set_c_frame_max (an_item: POINTER; a_value: NATURAL) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_connection_tune_ok_t_*)$an_item)->frame_max =  (uint32_t)$a_value
			]"
		ensure
			frame_max_set: a_value = c_frame_max (an_item)
		end

	c_heartbeat (an_item: POINTER): NATURAL
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_connection_tune_ok_t_*)$an_item)->heartbeat
			]"
		end

	set_c_heartbeat (an_item: POINTER; a_value: NATURAL) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_connection_tune_ok_t_*)$an_item)->heartbeat =  (uint16_t)$a_value
			]"
		ensure
			heartbeat_set: a_value = c_heartbeat (an_item)
		end

end
