-- enum wrapper
class AMQP_RESPONSE_TYPE_ENUM__ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = amqp_response_none or a_value = amqp_response_normal or a_value = amqp_response_library_exception or a_value = amqp_response_server_exception
		end

	amqp_response_none: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_RESPONSE_NONE"
		end

	amqp_response_normal: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_RESPONSE_NORMAL"
		end

	amqp_response_library_exception: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_RESPONSE_LIBRARY_EXCEPTION"
		end

	amqp_response_server_exception: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_RESPONSE_SERVER_EXCEPTION"
		end

end
