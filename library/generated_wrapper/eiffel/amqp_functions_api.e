note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class AMQP_FUNCTIONS_API


feature -- Access

	amqp_version_number: NATURAL
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_version_number ();
			]"
		end

	amqp_version: POINTER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_version ();
			]"
		end

	amqp_pool_alloc (pool: AMQP_POOL_T__STRUCT_API; amount: NATURAL): POINTER 
		do
			Result := c_amqp_pool_alloc (pool.item, amount)
		ensure
			instance_free: class
		end

	amqp_pool_alloc_bytes (pool: AMQP_POOL_T__STRUCT_API; amount: NATURAL; output: AMQP_BYTES_T__STRUCT_API) 
		do
			c_amqp_pool_alloc_bytes (pool.item, amount, output.item)
		ensure
			instance_free: class
		end

	amqp_cstring_bytes (cstr: POINTER): POINTER
		external
			"C inline use <amqp.h>"

		alias
			"[
				amqp_bytes_t *result = (amqp_bytes_t*) malloc (sizeof(amqp_bytes_t));
				*result = amqp_cstring_bytes ((char const*)$cstr);
				return result;
			]"
		end

	amqp_bytes_malloc_dup (src: AMQP_BYTES_T__STRUCT_API): detachable AMQP_BYTES_T__STRUCT_API 
		do
			if attached c_amqp_bytes_malloc_dup (src.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	amqp_bytes_malloc (amount: NATURAL): POINTER
		external
			"C inline use <amqp.h>"

		alias
			"[
				amqp_bytes_t *result = (amqp_bytes_t*) malloc (sizeof(amqp_bytes_t));
				*result = amqp_bytes_malloc ((size_t)$amount);
				return result;
			]"
		end

	amqp_bytes_free (bytes: AMQP_BYTES_T__STRUCT_API) 
		do
			c_amqp_bytes_free (bytes.item)
		ensure
			instance_free: class
		end

	amqp_new_connection: detachable AMQP_CONNECTION_STATE_T__STRUCT_API 
		do
			if attached c_amqp_new_connection as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	amqp_get_sockfd (state: AMQP_CONNECTION_STATE_T__STRUCT_API): INTEGER 
		do
			Result := c_amqp_get_sockfd (state.item)
		ensure
			instance_free: class
		end

	amqp_set_sockfd (state: AMQP_CONNECTION_STATE_T__STRUCT_API; sockfd: INTEGER) 
		do
			c_amqp_set_sockfd (state.item, sockfd)
		ensure
			instance_free: class
		end

	amqp_tune_connection (state: AMQP_CONNECTION_STATE_T__STRUCT_API; channel_max: INTEGER; frame_max: INTEGER; heartbeat: INTEGER): INTEGER 
		do
			Result := c_amqp_tune_connection (state.item, channel_max, frame_max, heartbeat)
		ensure
			instance_free: class
		end

	amqp_get_channel_max (state: AMQP_CONNECTION_STATE_T__STRUCT_API): INTEGER 
		do
			Result := c_amqp_get_channel_max (state.item)
		ensure
			instance_free: class
		end

	amqp_get_frame_max (state: AMQP_CONNECTION_STATE_T__STRUCT_API): INTEGER 
		do
			Result := c_amqp_get_frame_max (state.item)
		ensure
			instance_free: class
		end

	amqp_get_heartbeat (state: AMQP_CONNECTION_STATE_T__STRUCT_API): INTEGER 
		do
			Result := c_amqp_get_heartbeat (state.item)
		ensure
			instance_free: class
		end

	amqp_destroy_connection (state: AMQP_CONNECTION_STATE_T__STRUCT_API): INTEGER 
		do
			Result := c_amqp_destroy_connection (state.item)
		ensure
			instance_free: class
		end

	amqp_handle_input (state: AMQP_CONNECTION_STATE_T__STRUCT_API; received_data: AMQP_BYTES_T__STRUCT_API; decoded_frame: AMQP_FRAME_T__STRUCT_API): INTEGER 
		do
			Result := c_amqp_handle_input (state.item, received_data.item, decoded_frame.item)
		ensure
			instance_free: class
		end

	amqp_release_buffers_ok (state: AMQP_CONNECTION_STATE_T__STRUCT_API): INTEGER 
		do
			Result := c_amqp_release_buffers_ok (state.item)
		ensure
			instance_free: class
		end

	amqp_release_buffers (state: AMQP_CONNECTION_STATE_T__STRUCT_API) 
		do
			c_amqp_release_buffers (state.item)
		ensure
			instance_free: class
		end

	amqp_maybe_release_buffers (state: AMQP_CONNECTION_STATE_T__STRUCT_API) 
		do
			c_amqp_maybe_release_buffers (state.item)
		ensure
			instance_free: class
		end

	amqp_maybe_release_buffers_on_channel (state: AMQP_CONNECTION_STATE_T__STRUCT_API; channel: NATURAL) 
		do
			c_amqp_maybe_release_buffers_on_channel (state.item, channel)
		ensure
			instance_free: class
		end

	amqp_send_frame (state: AMQP_CONNECTION_STATE_T__STRUCT_API; frame: AMQP_FRAME_T__STRUCT_API): INTEGER 
		do
			Result := c_amqp_send_frame (state.item, frame.item)
		ensure
			instance_free: class
		end

	amqp_table_entry_cmp (entry1: POINTER; entry2: POINTER): INTEGER 
		do
			Result := c_amqp_table_entry_cmp (entry1, entry2)
		ensure
			instance_free: class
		end

	amqp_open_socket (hostname: POINTER; portnumber: INTEGER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_open_socket ((char const*)$hostname, (int)$portnumber);
			]"
		end

	amqp_send_header (state: AMQP_CONNECTION_STATE_T__STRUCT_API): INTEGER 
		do
			Result := c_amqp_send_header (state.item)
		ensure
			instance_free: class
		end

	amqp_frames_enqueued (state: AMQP_CONNECTION_STATE_T__STRUCT_API): INTEGER 
		do
			Result := c_amqp_frames_enqueued (state.item)
		ensure
			instance_free: class
		end

	amqp_simple_wait_frame (state: AMQP_CONNECTION_STATE_T__STRUCT_API; decoded_frame: AMQP_FRAME_T__STRUCT_API): INTEGER 
		do
			Result := c_amqp_simple_wait_frame (state.item, decoded_frame.item)
		ensure
			instance_free: class
		end

	amqp_simple_wait_frame_noblock (state: AMQP_CONNECTION_STATE_T__STRUCT_API; decoded_frame: AMQP_FRAME_T__STRUCT_API; tv: TIMEVAL_STRUCT_API): INTEGER 
		do
			Result := c_amqp_simple_wait_frame_noblock (state.item, decoded_frame.item, tv.item)
		ensure
			instance_free: class
		end

	amqp_simple_wait_method (state: AMQP_CONNECTION_STATE_T__STRUCT_API; expected_channel: NATURAL; expected_method: NATURAL; output: AMQP_METHOD_T__STRUCT_API): INTEGER 
		do
			Result := c_amqp_simple_wait_method (state.item, expected_channel, expected_method, output.item)
		ensure
			instance_free: class
		end

	amqp_send_method (state: AMQP_CONNECTION_STATE_T__STRUCT_API; channel: NATURAL; id: NATURAL; decoded: POINTER): INTEGER 
		do
			Result := c_amqp_send_method (state.item, channel, id, decoded)
		ensure
			instance_free: class
		end

	amqp_simple_rpc (state: AMQP_CONNECTION_STATE_T__STRUCT_API; channel: NATURAL; request_id: NATURAL; expected_reply_ids: POINTER; decoded_request_method: POINTER): detachable AMQP_RPC_REPLY_T__STRUCT_API 
		do
			if attached c_amqp_simple_rpc (state.item, channel, request_id, expected_reply_ids, decoded_request_method) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	amqp_simple_rpc_decoded (state: AMQP_CONNECTION_STATE_T__STRUCT_API; channel: NATURAL; request_id: NATURAL; reply_id: NATURAL; decoded_request_method: POINTER): POINTER 
		do
			Result := c_amqp_simple_rpc_decoded (state.item, channel, request_id, reply_id, decoded_request_method)
		ensure
			instance_free: class
		end

	amqp_get_rpc_reply (state: AMQP_CONNECTION_STATE_T__STRUCT_API): detachable AMQP_RPC_REPLY_T__STRUCT_API 
		do
			if attached c_amqp_get_rpc_reply (state.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	amqp_login (state: AMQP_CONNECTION_STATE_T__STRUCT_API; vhost: STRING_8; channel_max: INTEGER; frame_max: INTEGER; heartbeat: INTEGER; sasl_method: INTEGER): detachable AMQP_RPC_REPLY_T__STRUCT_API 
		local
			vhost_c_string: C_STRING
		do
			create vhost_c_string.make (vhost)
			if attached c_amqp_login (state.item, vhost_c_string.item, channel_max, frame_max, heartbeat, sasl_method) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	amqp_login_with_properties (state: AMQP_CONNECTION_STATE_T__STRUCT_API; vhost: STRING_8; channel_max: INTEGER; frame_max: INTEGER; heartbeat: INTEGER; properties: AMQP_TABLE_T__STRUCT_API; sasl_method: INTEGER): detachable AMQP_RPC_REPLY_T__STRUCT_API 
		local
			vhost_c_string: C_STRING
		do
			create vhost_c_string.make (vhost)
			if attached c_amqp_login_with_properties (state.item, vhost_c_string.item, channel_max, frame_max, heartbeat, properties.item, sasl_method) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	amqp_basic_publish (state: AMQP_CONNECTION_STATE_T__STRUCT_API; channel: NATURAL; exchange: AMQP_BYTES_T__STRUCT_API; routing_key: AMQP_BYTES_T__STRUCT_API; mandatory: INTEGER; immediate: INTEGER; properties: AMQP_BASIC_PROPERTIES_T__STRUCT_API; body: AMQP_BYTES_T__STRUCT_API): INTEGER 
		do
			Result := c_amqp_basic_publish (state.item, channel, exchange.item, routing_key.item, mandatory, immediate, properties.item, body.item)
		ensure
			instance_free: class
		end

	amqp_channel_close (state: AMQP_CONNECTION_STATE_T__STRUCT_API; channel: NATURAL; code: INTEGER): detachable AMQP_RPC_REPLY_T__STRUCT_API 
		do
			if attached c_amqp_channel_close (state.item, channel, code) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	amqp_connection_close (state: AMQP_CONNECTION_STATE_T__STRUCT_API; code: INTEGER): detachable AMQP_RPC_REPLY_T__STRUCT_API 
		do
			if attached c_amqp_connection_close (state.item, code) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	amqp_basic_ack (state: AMQP_CONNECTION_STATE_T__STRUCT_API; channel: NATURAL; delivery_tag: NATURAL_64; multiple: INTEGER): INTEGER 
		do
			Result := c_amqp_basic_ack (state.item, channel, delivery_tag, multiple)
		ensure
			instance_free: class
		end

	amqp_basic_get (state: AMQP_CONNECTION_STATE_T__STRUCT_API; channel: NATURAL; queue: AMQP_BYTES_T__STRUCT_API; no_ack: INTEGER): detachable AMQP_RPC_REPLY_T__STRUCT_API 
		do
			if attached c_amqp_basic_get (state.item, channel, queue.item, no_ack) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	amqp_basic_reject (state: AMQP_CONNECTION_STATE_T__STRUCT_API; channel: NATURAL; delivery_tag: NATURAL_64; requeue: INTEGER): INTEGER 
		do
			Result := c_amqp_basic_reject (state.item, channel, delivery_tag, requeue)
		ensure
			instance_free: class
		end

	amqp_basic_nack (state: AMQP_CONNECTION_STATE_T__STRUCT_API; channel: NATURAL; delivery_tag: NATURAL_64; multiple: INTEGER; requeue: INTEGER): INTEGER 
		do
			Result := c_amqp_basic_nack (state.item, channel, delivery_tag, multiple, requeue)
		ensure
			instance_free: class
		end

	amqp_data_in_buffer (state: AMQP_CONNECTION_STATE_T__STRUCT_API): INTEGER 
		do
			Result := c_amqp_data_in_buffer (state.item)
		ensure
			instance_free: class
		end

	amqp_error_string (err: INTEGER): POINTER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_error_string ((int)$err);
			]"
		end

	amqp_error_string2 (err: INTEGER): POINTER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_error_string2 ((int)$err);
			]"
		end

	amqp_decode_table (encoded: AMQP_BYTES_T__STRUCT_API; pool: AMQP_POOL_T__STRUCT_API; output: AMQP_TABLE_T__STRUCT_API; offset: POINTER): INTEGER 
		do
			Result := c_amqp_decode_table (encoded.item, pool.item, output.item, offset)
		ensure
			instance_free: class
		end

	amqp_encode_table (encoded: AMQP_BYTES_T__STRUCT_API; input: AMQP_TABLE_T__STRUCT_API; offset: POINTER): INTEGER 
		do
			Result := c_amqp_encode_table (encoded.item, input.item, offset)
		ensure
			instance_free: class
		end

	amqp_table_clone (original: AMQP_TABLE_T__STRUCT_API; a_clone: AMQP_TABLE_T__STRUCT_API; pool: AMQP_POOL_T__STRUCT_API): INTEGER 
		do
			Result := c_amqp_table_clone (original.item, a_clone.item, pool.item)
		ensure
			instance_free: class
		end

	amqp_read_message (state: AMQP_CONNECTION_STATE_T__STRUCT_API; channel: NATURAL; message: AMQP_MESSAGE_T__STRUCT_API; flags: INTEGER): detachable AMQP_RPC_REPLY_T__STRUCT_API 
		do
			if attached c_amqp_read_message (state.item, channel, message.item, flags) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	amqp_destroy_message (message: AMQP_MESSAGE_T__STRUCT_API) 
		do
			c_amqp_destroy_message (message.item)
		ensure
			instance_free: class
		end

	amqp_consume_message (state: AMQP_CONNECTION_STATE_T__STRUCT_API; envelope: AMQP_ENVELOPE_T__STRUCT_API; timeout: TIMEVAL_STRUCT_API; flags: INTEGER): detachable AMQP_RPC_REPLY_T__STRUCT_API 
		do
			if attached c_amqp_consume_message (state.item, envelope.item, timeout.item, flags) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	amqp_destroy_envelope (envelope: AMQP_ENVELOPE_T__STRUCT_API) 
		do
			c_amqp_destroy_envelope (envelope.item)
		ensure
			instance_free: class
		end

	amqp_default_connection_info (parsed: AMQP_CONNECTION_INFO_STRUCT_API) 
		do
			c_amqp_default_connection_info (parsed.item)
		ensure
			instance_free: class
		end

	amqp_parse_url (url: STRING_8; parsed: AMQP_CONNECTION_INFO_STRUCT_API): INTEGER 
		local
			url_c_string: C_STRING
		do
			create url_c_string.make (url)
			Result := c_amqp_parse_url (url_c_string.item, parsed.item)
		ensure
			instance_free: class
		end

	amqp_socket_open (self: AMQP_SOCKET_T__STRUCT_API; host: STRING_8; port: INTEGER): INTEGER 
		local
			host_c_string: C_STRING
		do
			create host_c_string.make (host)
			Result := c_amqp_socket_open (self.item, host_c_string.item, port)
		ensure
			instance_free: class
		end

	amqp_socket_open_noblock (self: AMQP_SOCKET_T__STRUCT_API; host: STRING_8; port: INTEGER; timeout: TIMEVAL_STRUCT_API): INTEGER 
		local
			host_c_string: C_STRING
		do
			create host_c_string.make (host)
			Result := c_amqp_socket_open_noblock (self.item, host_c_string.item, port, timeout.item)
		ensure
			instance_free: class
		end

	amqp_socket_get_sockfd (self: AMQP_SOCKET_T__STRUCT_API): INTEGER 
		do
			Result := c_amqp_socket_get_sockfd (self.item)
		ensure
			instance_free: class
		end

	amqp_get_socket (state: AMQP_CONNECTION_STATE_T__STRUCT_API): detachable AMQP_SOCKET_T__STRUCT_API 
		do
			if attached c_amqp_get_socket (state.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	amqp_get_server_properties (state: AMQP_CONNECTION_STATE_T__STRUCT_API): detachable AMQP_TABLE_T__STRUCT_API 
		do
			if attached c_amqp_get_server_properties (state.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	amqp_get_client_properties (state: AMQP_CONNECTION_STATE_T__STRUCT_API): detachable AMQP_TABLE_T__STRUCT_API 
		do
			if attached c_amqp_get_client_properties (state.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	amqp_get_handshake_timeout (state: AMQP_CONNECTION_STATE_T__STRUCT_API): detachable TIMEVAL_STRUCT_API 
		do
			if attached c_amqp_get_handshake_timeout (state.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	amqp_set_handshake_timeout (state: AMQP_CONNECTION_STATE_T__STRUCT_API; timeout: TIMEVAL_STRUCT_API): INTEGER 
		do
			Result := c_amqp_set_handshake_timeout (state.item, timeout.item)
		ensure
			instance_free: class
		end

	amqp_get_rpc_timeout (state: AMQP_CONNECTION_STATE_T__STRUCT_API): detachable TIMEVAL_STRUCT_API 
		do
			if attached c_amqp_get_rpc_timeout (state.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	amqp_set_rpc_timeout (state: AMQP_CONNECTION_STATE_T__STRUCT_API; timeout: TIMEVAL_STRUCT_API): INTEGER 
		do
			Result := c_amqp_set_rpc_timeout (state.item, timeout.item)
		ensure
			instance_free: class
		end

feature -- Externals

	c_amqp_pool_alloc (pool: POINTER; amount: NATURAL): POINTER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_pool_alloc ((amqp_pool_t*)$pool, (size_t)$amount);
			]"
		end

	c_amqp_pool_alloc_bytes (pool: POINTER; amount: NATURAL; output: POINTER)
		external
			"C inline use <amqp.h>"
		alias
			"[
				amqp_pool_alloc_bytes ((amqp_pool_t*)$pool, (size_t)$amount, (amqp_bytes_t*)$output);
			]"
		end

	c_amqp_bytes_malloc_dup (src: POINTER): POINTER
		external
			"C inline use <amqp.h>"

		alias
			"[
				amqp_bytes_t *result = (amqp_bytes_t*) malloc (sizeof(amqp_bytes_t));
				*result = amqp_bytes_malloc_dup (*(amqp_bytes_t*)$src);
				return result;
			]"
		end

	c_amqp_bytes_free (bytes: POINTER)
		external
			"C inline use <amqp.h>"
		alias
			"[
				amqp_bytes_free (*(amqp_bytes_t*)$bytes);
			]"
		end

	c_amqp_new_connection: POINTER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_new_connection ();
			]"
		end

	c_amqp_get_sockfd (state: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_get_sockfd ((amqp_connection_state_t)$state);
			]"
		end

	c_amqp_set_sockfd (state: POINTER; sockfd: INTEGER)
		external
			"C inline use <amqp.h>"
		alias
			"[
				amqp_set_sockfd ((amqp_connection_state_t)$state, (int)$sockfd);
			]"
		end

	c_amqp_tune_connection (state: POINTER; channel_max: INTEGER; frame_max: INTEGER; heartbeat: INTEGER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_tune_connection ((amqp_connection_state_t)$state, (int)$channel_max, (int)$frame_max, (int)$heartbeat);
			]"
		end

	c_amqp_get_channel_max (state: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_get_channel_max ((amqp_connection_state_t)$state);
			]"
		end

	c_amqp_get_frame_max (state: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_get_frame_max ((amqp_connection_state_t)$state);
			]"
		end

	c_amqp_get_heartbeat (state: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_get_heartbeat ((amqp_connection_state_t)$state);
			]"
		end

	c_amqp_destroy_connection (state: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_destroy_connection ((amqp_connection_state_t)$state);
			]"
		end

	c_amqp_handle_input (state: POINTER; received_data: POINTER; decoded_frame: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_handle_input ((amqp_connection_state_t)$state, *(amqp_bytes_t*)$received_data, (amqp_frame_t*)$decoded_frame);
			]"
		end

	c_amqp_release_buffers_ok (state: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_release_buffers_ok ((amqp_connection_state_t)$state);
			]"
		end

	c_amqp_release_buffers (state: POINTER)
		external
			"C inline use <amqp.h>"
		alias
			"[
				amqp_release_buffers ((amqp_connection_state_t)$state);
			]"
		end

	c_amqp_maybe_release_buffers (state: POINTER)
		external
			"C inline use <amqp.h>"
		alias
			"[
				amqp_maybe_release_buffers ((amqp_connection_state_t)$state);
			]"
		end

	c_amqp_maybe_release_buffers_on_channel (state: POINTER; channel: NATURAL)
		external
			"C inline use <amqp.h>"
		alias
			"[
				amqp_maybe_release_buffers_on_channel ((amqp_connection_state_t)$state, (amqp_channel_t)$channel);
			]"
		end

	c_amqp_send_frame (state: POINTER; frame: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_send_frame ((amqp_connection_state_t)$state, (amqp_frame_t const*)$frame);
			]"
		end

	c_amqp_table_entry_cmp (entry1: POINTER; entry2: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_table_entry_cmp ((void const*)$entry1, (void const*)$entry2);
			]"
		end

	c_amqp_send_header (state: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_send_header ((amqp_connection_state_t)$state);
			]"
		end

	c_amqp_frames_enqueued (state: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_frames_enqueued ((amqp_connection_state_t)$state);
			]"
		end

	c_amqp_simple_wait_frame (state: POINTER; decoded_frame: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_simple_wait_frame ((amqp_connection_state_t)$state, (amqp_frame_t*)$decoded_frame);
			]"
		end

	c_amqp_simple_wait_frame_noblock (state: POINTER; decoded_frame: POINTER; tv: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_simple_wait_frame_noblock ((amqp_connection_state_t)$state, (amqp_frame_t*)$decoded_frame, (struct timeval const*)$tv);
			]"
		end

	c_amqp_simple_wait_method (state: POINTER; expected_channel: NATURAL; expected_method: NATURAL; output: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_simple_wait_method ((amqp_connection_state_t)$state, (amqp_channel_t)$expected_channel, (amqp_method_number_t)$expected_method, (amqp_method_t*)$output);
			]"
		end

	c_amqp_send_method (state: POINTER; channel: NATURAL; id: NATURAL; decoded: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_send_method ((amqp_connection_state_t)$state, (amqp_channel_t)$channel, (amqp_method_number_t)$id, (void*)$decoded);
			]"
		end

	c_amqp_simple_rpc (state: POINTER; channel: NATURAL; request_id: NATURAL; expected_reply_ids: POINTER; decoded_request_method: POINTER): POINTER
		external
			"C inline use <amqp.h>"

		alias
			"[
				amqp_rpc_reply_t *result = (amqp_rpc_reply_t*) malloc (sizeof(amqp_rpc_reply_t));
				*result = amqp_simple_rpc ((amqp_connection_state_t)$state, (amqp_channel_t)$channel, (amqp_method_number_t)$request_id, (amqp_method_number_t*)$expected_reply_ids, (void*)$decoded_request_method);
				return result;
			]"
		end

	c_amqp_simple_rpc_decoded (state: POINTER; channel: NATURAL; request_id: NATURAL; reply_id: NATURAL; decoded_request_method: POINTER): POINTER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_simple_rpc_decoded ((amqp_connection_state_t)$state, (amqp_channel_t)$channel, (amqp_method_number_t)$request_id, (amqp_method_number_t)$reply_id, (void*)$decoded_request_method);
			]"
		end

	c_amqp_get_rpc_reply (state: POINTER): POINTER
		external
			"C inline use <amqp.h>"

		alias
			"[
				amqp_rpc_reply_t *result = (amqp_rpc_reply_t*) malloc (sizeof(amqp_rpc_reply_t));
				*result = amqp_get_rpc_reply ((amqp_connection_state_t)$state);
				return result;
			]"
		end

	c_amqp_login (state: POINTER; vhost: POINTER; channel_max: INTEGER; frame_max: INTEGER; heartbeat: INTEGER; sasl_method: INTEGER): POINTER
		external
			"C inline use <amqp.h>"

		alias
			"[
				amqp_rpc_reply_t *result = (amqp_rpc_reply_t*) malloc (sizeof(amqp_rpc_reply_t));
				*result = amqp_login ((amqp_connection_state_t)$state, (char const*)$vhost, (int)$channel_max, (int)$frame_max, (int)$heartbeat, (amqp_sasl_method_enum)$sasl_method);
				return result;
			]"
		end

	c_amqp_login_with_properties (state: POINTER; vhost: POINTER; channel_max: INTEGER; frame_max: INTEGER; heartbeat: INTEGER; properties: POINTER; sasl_method: INTEGER): POINTER
		external
			"C inline use <amqp.h>"

		alias
			"[
				amqp_rpc_reply_t *result = (amqp_rpc_reply_t*) malloc (sizeof(amqp_rpc_reply_t));
				*result = amqp_login_with_properties ((amqp_connection_state_t)$state, (char const*)$vhost, (int)$channel_max, (int)$frame_max, (int)$heartbeat, (amqp_table_t const*)$properties, (amqp_sasl_method_enum)$sasl_method);
				return result;
			]"
		end

	c_amqp_basic_publish (state: POINTER; channel: NATURAL; exchange: POINTER; routing_key: POINTER; mandatory: INTEGER; immediate: INTEGER; properties: POINTER; body: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_basic_publish ((amqp_connection_state_t)$state, (amqp_channel_t)$channel, *(amqp_bytes_t*)$exchange, *(amqp_bytes_t*)$routing_key, (amqp_boolean_t)$mandatory, (amqp_boolean_t)$immediate, (struct amqp_basic_properties_t_ const*)$properties, *(amqp_bytes_t*)$body);
			]"
		end

	c_amqp_channel_close (state: POINTER; channel: NATURAL; code: INTEGER): POINTER
		external
			"C inline use <amqp.h>"

		alias
			"[
				amqp_rpc_reply_t *result = (amqp_rpc_reply_t*) malloc (sizeof(amqp_rpc_reply_t));
				*result = amqp_channel_close ((amqp_connection_state_t)$state, (amqp_channel_t)$channel, (int)$code);
				return result;
			]"
		end

	c_amqp_connection_close (state: POINTER; code: INTEGER): POINTER
		external
			"C inline use <amqp.h>"

		alias
			"[
				amqp_rpc_reply_t *result = (amqp_rpc_reply_t*) malloc (sizeof(amqp_rpc_reply_t));
				*result = amqp_connection_close ((amqp_connection_state_t)$state, (int)$code);
				return result;
			]"
		end

	c_amqp_basic_ack (state: POINTER; channel: NATURAL; delivery_tag: NATURAL_64; multiple: INTEGER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_basic_ack ((amqp_connection_state_t)$state, (amqp_channel_t)$channel, (uint64_t)$delivery_tag, (amqp_boolean_t)$multiple);
			]"
		end

	c_amqp_basic_get (state: POINTER; channel: NATURAL; queue: POINTER; no_ack: INTEGER): POINTER
		external
			"C inline use <amqp.h>"

		alias
			"[
				amqp_rpc_reply_t *result = (amqp_rpc_reply_t*) malloc (sizeof(amqp_rpc_reply_t));
				*result = amqp_basic_get ((amqp_connection_state_t)$state, (amqp_channel_t)$channel, *(amqp_bytes_t*)$queue, (amqp_boolean_t)$no_ack);
				return result;
			]"
		end

	c_amqp_basic_reject (state: POINTER; channel: NATURAL; delivery_tag: NATURAL_64; requeue: INTEGER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_basic_reject ((amqp_connection_state_t)$state, (amqp_channel_t)$channel, (uint64_t)$delivery_tag, (amqp_boolean_t)$requeue);
			]"
		end

	c_amqp_basic_nack (state: POINTER; channel: NATURAL; delivery_tag: NATURAL_64; multiple: INTEGER; requeue: INTEGER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_basic_nack ((amqp_connection_state_t)$state, (amqp_channel_t)$channel, (uint64_t)$delivery_tag, (amqp_boolean_t)$multiple, (amqp_boolean_t)$requeue);
			]"
		end

	c_amqp_data_in_buffer (state: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_data_in_buffer ((amqp_connection_state_t)$state);
			]"
		end

	c_amqp_decode_table (encoded: POINTER; pool: POINTER; output: POINTER; offset: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_decode_table (*(amqp_bytes_t*)$encoded, (amqp_pool_t*)$pool, (amqp_table_t*)$output, (size_t*)$offset);
			]"
		end

	c_amqp_encode_table (encoded: POINTER; input: POINTER; offset: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_encode_table (*(amqp_bytes_t*)$encoded, (amqp_table_t*)$input, (size_t*)$offset);
			]"
		end

	c_amqp_table_clone (original: POINTER; a_clone: POINTER; pool: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_table_clone ((amqp_table_t const*)$original, (amqp_table_t*)$a_clone, (amqp_pool_t*)$pool);
			]"
		end

	c_amqp_read_message (state: POINTER; channel: NATURAL; message: POINTER; flags: INTEGER): POINTER
		external
			"C inline use <amqp.h>"

		alias
			"[
				amqp_rpc_reply_t *result = (amqp_rpc_reply_t*) malloc (sizeof(amqp_rpc_reply_t));
				*result = amqp_read_message ((amqp_connection_state_t)$state, (amqp_channel_t)$channel, (amqp_message_t*)$message, (int)$flags);
				return result;
			]"
		end

	c_amqp_destroy_message (message: POINTER)
		external
			"C inline use <amqp.h>"
		alias
			"[
				amqp_destroy_message ((amqp_message_t*)$message);
			]"
		end

	c_amqp_consume_message (state: POINTER; envelope: POINTER; timeout: POINTER; flags: INTEGER): POINTER
		external
			"C inline use <amqp.h>"

		alias
			"[
				amqp_rpc_reply_t *result = (amqp_rpc_reply_t*) malloc (sizeof(amqp_rpc_reply_t));
				*result = amqp_consume_message ((amqp_connection_state_t)$state, (amqp_envelope_t*)$envelope, (struct timeval const*)$timeout, (int)$flags);
				return result;
			]"
		end

	c_amqp_destroy_envelope (envelope: POINTER)
		external
			"C inline use <amqp.h>"
		alias
			"[
				amqp_destroy_envelope ((amqp_envelope_t*)$envelope);
			]"
		end

	c_amqp_default_connection_info (parsed: POINTER)
		external
			"C inline use <amqp.h>"
		alias
			"[
				amqp_default_connection_info ((struct amqp_connection_info*)$parsed);
			]"
		end

	c_amqp_parse_url (url: POINTER; parsed: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_parse_url ((char*)$url, (struct amqp_connection_info*)$parsed);
			]"
		end

	c_amqp_socket_open (self: POINTER; host: POINTER; port: INTEGER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_socket_open ((amqp_socket_t*)$self, (char const*)$host, (int)$port);
			]"
		end

	c_amqp_socket_open_noblock (self: POINTER; host: POINTER; port: INTEGER; timeout: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_socket_open_noblock ((amqp_socket_t*)$self, (char const*)$host, (int)$port, (struct timeval const*)$timeout);
			]"
		end

	c_amqp_socket_get_sockfd (self: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_socket_get_sockfd ((amqp_socket_t*)$self);
			]"
		end

	c_amqp_get_socket (state: POINTER): POINTER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_get_socket ((amqp_connection_state_t)$state);
			]"
		end

	c_amqp_get_server_properties (state: POINTER): POINTER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_get_server_properties ((amqp_connection_state_t)$state);
			]"
		end

	c_amqp_get_client_properties (state: POINTER): POINTER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_get_client_properties ((amqp_connection_state_t)$state);
			]"
		end

	c_amqp_get_handshake_timeout (state: POINTER): POINTER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_get_handshake_timeout ((amqp_connection_state_t)$state);
			]"
		end

	c_amqp_set_handshake_timeout (state: POINTER; timeout: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_set_handshake_timeout ((amqp_connection_state_t)$state, (struct timeval const*)$timeout);
			]"
		end

	c_amqp_get_rpc_timeout (state: POINTER): POINTER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_get_rpc_timeout ((amqp_connection_state_t)$state);
			]"
		end

	c_amqp_set_rpc_timeout (state: POINTER; timeout: POINTER): INTEGER
		external
			"C inline use <amqp.h>"
		alias
			"[
				return amqp_set_rpc_timeout ((amqp_connection_state_t)$state, (struct timeval const*)$timeout);
			]"
		end

feature -- Externals Address

end