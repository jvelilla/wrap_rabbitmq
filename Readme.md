# wrap_rabbitmq
`wrap_rabbitmq` is an Eiffel binding of [RabbitMQ C AMQP client library](https://github.com/alanxz/rabbitmq-c) 
using [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.

RabbitMQ C is a C-language AMQP client library for use with v2.0+ of the RabbitMQ broker.

## Requirements 

*  [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.
*  [RabbitMQ C AMQP client library](https://github.com/alanxz/rabbitmq-c) 


## Download and  Install


### Linux


### Windows
	
Building RabbitMQ - Using vcpkg
You can download and install RabbitMQ using the vcpkg dependency manager:

git clone https://github.com/Microsoft/vcpkg.git
cd vcpkg
./bootstrap-vcpkg.sh
./vcpkg integrate install
./vcpkg install librabbitmq

To learn more about how to install RabbitMQ-C read the following section [RabbitC Installation](https://github.com/alanxz/rabbitmq-c#building-and-installing)

## Status

Work in progress.


## Examples


### How to compile the C library glue code.

Before to use the examples you will need to compile the C glue code, go to 

	library/generated_wrapper/c/src

and run

	finish_freezing --library

It will copy the C lib `eif_librabbitmq.a` to `$ECF_CONFIG_PATH/C/spec/$(ISE_PLATFORM)/lib/`  or `eif_librabbitmq.lib`  to `$ECF_CONFIG_PATH/C/spec/$ISE_C_COMPILER/$ISE_PLATFORM/lib` 






