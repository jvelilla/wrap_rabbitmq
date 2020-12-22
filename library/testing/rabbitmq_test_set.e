note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	RABBITMQ_TEST_SET

inherit

	EQA_TEST_SET

feature -- Test routines

	test_version
			-- New test routine
		local
			l_version: NATURAL
			l_version_str: STRING
		do
			l_version := {AMQP_FUNCTIONS_API}.amqp_version_number
			assert ("Version", l_version > 0)
			l_version_str := (create {C_STRING}.make_by_pointer ({AMQP_FUNCTIONS_API}.amqp_version)).string
			assert ("Version", not l_version_str.is_empty)
		end
end


