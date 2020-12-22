-- enum wrapper
class AMQP_STATUS_ENUM__ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = amqp_status_ok or a_value = amqp_status_no_memory or a_value = amqp_status_bad_amqp_data or a_value = amqp_status_unknown_class or a_value = amqp_status_unknown_method or a_value = amqp_status_hostname_resolution_failed or a_value = amqp_status_incompatible_amqp_version or a_value = amqp_status_connection_closed or a_value = amqp_status_bad_url or a_value = amqp_status_socket_error or a_value = amqp_status_invalid_parameter or a_value = amqp_status_table_too_big or a_value = amqp_status_wrong_method or a_value = amqp_status_timeout or a_value = amqp_status_timer_failure or a_value = amqp_status_heartbeat_timeout or a_value = amqp_status_unexpected_state or a_value = amqp_status_socket_closed or a_value = amqp_status_socket_inuse or a_value = amqp_status_broker_unsupported_sasl_method or a_value = amqp_status_unsupported or a_value = amqp_status_next_value or a_value = amqp_status_tcp_error or a_value = amqp_status_tcp_socketlib_init_error or a_value = amqp_status_tcp_next_value or a_value = amqp_status_ssl_error or a_value = amqp_status_ssl_hostname_verify_failed or a_value = amqp_status_ssl_peer_verify_failed or a_value = amqp_status_ssl_connection_failed or a_value = amqp_status_ssl_next_value
		end

	amqp_status_ok: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_OK"
		end

	amqp_status_no_memory: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_NO_MEMORY"
		end

	amqp_status_bad_amqp_data: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_BAD_AMQP_DATA"
		end

	amqp_status_unknown_class: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_UNKNOWN_CLASS"
		end

	amqp_status_unknown_method: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_UNKNOWN_METHOD"
		end

	amqp_status_hostname_resolution_failed: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_HOSTNAME_RESOLUTION_FAILED"
		end

	amqp_status_incompatible_amqp_version: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_INCOMPATIBLE_AMQP_VERSION"
		end

	amqp_status_connection_closed: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_CONNECTION_CLOSED"
		end

	amqp_status_bad_url: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_BAD_URL"
		end

	amqp_status_socket_error: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_SOCKET_ERROR"
		end

	amqp_status_invalid_parameter: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_INVALID_PARAMETER"
		end

	amqp_status_table_too_big: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_TABLE_TOO_BIG"
		end

	amqp_status_wrong_method: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_WRONG_METHOD"
		end

	amqp_status_timeout: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_TIMEOUT"
		end

	amqp_status_timer_failure: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_TIMER_FAILURE"
		end

	amqp_status_heartbeat_timeout: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_HEARTBEAT_TIMEOUT"
		end

	amqp_status_unexpected_state: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_UNEXPECTED_STATE"
		end

	amqp_status_socket_closed: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_SOCKET_CLOSED"
		end

	amqp_status_socket_inuse: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_SOCKET_INUSE"
		end

	amqp_status_broker_unsupported_sasl_method: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_BROKER_UNSUPPORTED_SASL_METHOD"
		end

	amqp_status_unsupported: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_UNSUPPORTED"
		end

	amqp_status_next_value: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"_AMQP_STATUS_NEXT_VALUE"
		end

	amqp_status_tcp_error: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_TCP_ERROR"
		end

	amqp_status_tcp_socketlib_init_error: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_TCP_SOCKETLIB_INIT_ERROR"
		end

	amqp_status_tcp_next_value: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"_AMQP_STATUS_TCP_NEXT_VALUE"
		end

	amqp_status_ssl_error: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_SSL_ERROR"
		end

	amqp_status_ssl_hostname_verify_failed: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_SSL_HOSTNAME_VERIFY_FAILED"
		end

	amqp_status_ssl_peer_verify_failed: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_SSL_PEER_VERIFY_FAILED"
		end

	amqp_status_ssl_connection_failed: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_STATUS_SSL_CONNECTION_FAILED"
		end

	amqp_status_ssl_next_value: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"_AMQP_STATUS_SSL_NEXT_VALUE"
		end

end
