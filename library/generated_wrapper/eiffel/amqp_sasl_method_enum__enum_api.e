-- enum wrapper
class AMQP_SASL_METHOD_ENUM__ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = amqp_sasl_method_undefined or a_value = amqp_sasl_method_plain or a_value = amqp_sasl_method_external
		end

	amqp_sasl_method_undefined: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_SASL_METHOD_UNDEFINED"
		end

	amqp_sasl_method_plain: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_SASL_METHOD_PLAIN"
		end

	amqp_sasl_method_external: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_SASL_METHOD_EXTERNAL"
		end

end
