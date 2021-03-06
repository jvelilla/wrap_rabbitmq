note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class AMQP_CHANNEL_OPEN_T__STRUCT_API

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

	out_of_band: POINTER
			-- Access member `out_of_band`
		require
			exists: exists
		do
			Result := c_out_of_band (item) 
		ensure
		end

	set_out_of_band (a_value: POINTER )
			-- Set member `out_of_band`
		require
			a_value_not_void: a_value /= default_pointer
			exists: exists
		do
			set_c_out_of_band (item, a_value)
		ensure
			out_of_band_set: out_of_band = a_value 		end

feature {NONE} -- Implementation wrapper for struct struct amqp_channel_open_t_

	sizeof_external: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"sizeof(struct amqp_channel_open_t_)"
		end

	c_out_of_band (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				&((struct amqp_channel_open_t_*)$an_item)->out_of_band
			]"
		end

	set_c_out_of_band (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <amqp.h>"
		alias
			"[
				((struct amqp_channel_open_t_*)$an_item)->out_of_band =  *(amqp_bytes_t*)$a_value
			]"
		end

end
