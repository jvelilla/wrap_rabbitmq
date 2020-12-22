-- enum wrapper
class AMQP_DELIVERY_MODE_ENUM_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = amqp_delivery_nonpersistent or a_value = amqp_delivery_persistent
		end

	amqp_delivery_nonpersistent: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_DELIVERY_NONPERSISTENT"
		end

	amqp_delivery_persistent: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_DELIVERY_PERSISTENT"
		end

end
