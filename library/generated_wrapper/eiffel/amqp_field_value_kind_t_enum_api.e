-- enum wrapper
class AMQP_FIELD_VALUE_KIND_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = amqp_field_kind_boolean or a_value = amqp_field_kind_i8 or a_value = amqp_field_kind_u8 or a_value = amqp_field_kind_i16 or a_value = amqp_field_kind_u16 or a_value = amqp_field_kind_i32 or a_value = amqp_field_kind_u32 or a_value = amqp_field_kind_i64 or a_value = amqp_field_kind_u64 or a_value = amqp_field_kind_f32 or a_value = amqp_field_kind_f64 or a_value = amqp_field_kind_decimal or a_value = amqp_field_kind_utf8 or a_value = amqp_field_kind_array or a_value = amqp_field_kind_timestamp or a_value = amqp_field_kind_table or a_value = amqp_field_kind_void or a_value = amqp_field_kind_bytes
		end

	amqp_field_kind_boolean: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_FIELD_KIND_BOOLEAN"
		end

	amqp_field_kind_i8: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_FIELD_KIND_I8"
		end

	amqp_field_kind_u8: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_FIELD_KIND_U8"
		end

	amqp_field_kind_i16: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_FIELD_KIND_I16"
		end

	amqp_field_kind_u16: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_FIELD_KIND_U16"
		end

	amqp_field_kind_i32: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_FIELD_KIND_I32"
		end

	amqp_field_kind_u32: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_FIELD_KIND_U32"
		end

	amqp_field_kind_i64: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_FIELD_KIND_I64"
		end

	amqp_field_kind_u64: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_FIELD_KIND_U64"
		end

	amqp_field_kind_f32: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_FIELD_KIND_F32"
		end

	amqp_field_kind_f64: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_FIELD_KIND_F64"
		end

	amqp_field_kind_decimal: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_FIELD_KIND_DECIMAL"
		end

	amqp_field_kind_utf8: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_FIELD_KIND_UTF8"
		end

	amqp_field_kind_array: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_FIELD_KIND_ARRAY"
		end

	amqp_field_kind_timestamp: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_FIELD_KIND_TIMESTAMP"
		end

	amqp_field_kind_table: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_FIELD_KIND_TABLE"
		end

	amqp_field_kind_void: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_FIELD_KIND_VOID"
		end

	amqp_field_kind_bytes: INTEGER 
		external
			"C inline use <amqp.h>"
		alias
			"AMQP_FIELD_KIND_BYTES"
		end

end
