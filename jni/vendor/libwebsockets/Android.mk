LOCAL_PATH := $(abspath $(call my-dir))
include $(CLEAR_VARS)

LOCAL_MODULE := libwebsockets

SOURCE_PATH := libwebsockets

LOCAL_SRC_FILES += \
	getdtablesize.c \

LOCAL_SRC_FILES += \
	$(SOURCE_PATH)/lib/base64-decode.c \
	$(SOURCE_PATH)/lib/handshake.c \
	$(SOURCE_PATH)/lib/libwebsockets.c \
	$(SOURCE_PATH)/lib/service.c \
	$(SOURCE_PATH)/lib/pollfd.c \
	$(SOURCE_PATH)/lib/output.c \
	$(SOURCE_PATH)/lib/parsers.c \
	$(SOURCE_PATH)/lib/context.c \
	$(SOURCE_PATH)/lib/sha-1.c \
	$(SOURCE_PATH)/lib/alloc.c \
	$(SOURCE_PATH)/lib/lws-plat-unix.c \
	$(SOURCE_PATH)/lib/server.c \
	$(SOURCE_PATH)/lib/server-handshake.c \
	$(SOURCE_PATH)/lib/getifaddrs.c \

LOCAL_CFLAGS += \
	'-DLWS_LIBRARY_VERSION="1.3.1"' \
	'-DLWS_LIBRARY_HASH="3a9f79e"' \
	-DLWS_NO_EXTENSIONS \
	-DLWS_NO_DAEMONIZE \
	-DLWS_NO_CLIENT \
	-DLWS_BUILTIN_GETIFADDRS \
	-DHAVE_BZERO=1 \
	-DHAVE_DLFCN_H=1 \
	-DHAVE_FCNTL_H=1 \
	-DHAVE_FORK=1 \
	-DHAVE_GETENV=1 \
	-DHAVE_IN6ADDR_H=0 \
	-DHAVE_INTTYPES_H=1 \
	-DHAVE_LIBSSL=0 \
	-DHAVE_MALLOC=1 \
	-DHAVE_MEMORY_H=1 \
	-DHAVE_MEMSET=1 \
	-DHAVE_NETINET_IN_H=1 \
	-DHAVE_REALLOC=1 \
	-DHAVE_SOCKET=1 \
	-DHAVE_STDINT_H=1 \
	-DHAVE_STDLIB_H=1 \
	-DHAVE_STRERROR=1 \
	-DHAVE_STRINGS_H=1 \
	-DHAVE_STRING_H=1 \
	-DHAVE_SYS_PRCTL_H=1 \
	-DHAVE_SYS_SOCKET_H=1 \
	-DHAVE_SYS_STAT_H=1 \
	-DHAVE_SYS_TYPES_H=1 \
	-DHAVE_UNISTD_H=1 \
	-DHAVE_VFORK=0 \
	-DHAVE_VFORK_H=0 \
	-DHAVE_WORKING_FORK=1 \
	-DHAVE_WORKING_VFORK=0 \
	-DHAVE_ZLIB_H=1 \
	-DSTDC_HEADERS=1 \

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/$(SOURCE_PATH)/lib \

LOCAL_EXPORT_C_INCLUDES += \
	$(LOCAL_PATH)/$(SOURCE_PATH)/lib \

include $(BUILD_STATIC_LIBRARY)
