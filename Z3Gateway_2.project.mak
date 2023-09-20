####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 14                                              #
####################################################################

BASE_SDK_PATH = C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/gecko_sdk
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_4.2.3

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DPLATFORM_HEADER="platform-header.h"' \
 '-DEZSP_HOST=1' \
 '-DGATEWAY_APP=1' \
 '-DUC_BUILD=1' \
 '-DEZSP_ASH=1' \
 '-DEZSP_UART=1' \
 '-DUSE_ZAP_CONFIG=1' \
 '-DEZSP_APPLICATION_HAS_MFGLIB_HANDLER=1' \
 '-DCONFIGURATION_HEADER="app/framework/util/config.h"'

ASM_DEFS += \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DPLATFORM_HEADER="platform-header.h"' \
 '-DEZSP_HOST=1' \
 '-DGATEWAY_APP=1' \
 '-DUC_BUILD=1' \
 '-DEZSP_ASH=1' \
 '-DEZSP_UART=1' \
 '-DUSE_ZAP_CONFIG=1' \
 '-DEZSP_APPLICATION_HAS_MFGLIB_HANDLER=1' \
 '-DCONFIGURATION_HEADER="app/framework/util/config.h"'

INCLUDES += \
 -Iconfig \
 -Iautogen \
 -I$(COPIED_SDK_PATH)/platform/service/cli/inc \
 -I$(COPIED_SDK_PATH)/platform/service/cli/src \
 -I$(COPIED_SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(COPIED_SDK_PATH)/platform/emlib/inc \
 -I$(COPIED_SDK_PATH)/platform/emlib/host/inc \
 -I$(COPIED_SDK_PATH)/platform/common/inc \
 -I$(COPIED_SDK_PATH)/platform/service/iostream/inc \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_common_ash/inc \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_hal/inc \
 -I$(COPIED_SDK_PATH)/util/third_party/printf \
 -I$(COPIED_SDK_PATH)/util/third_party/printf/inc \
 -I$(COPIED_SDK_PATH)/util/silicon_labs/silabs_core \
 -I$(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue \
 -I$(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager \
 -I$(COPIED_SDK_PATH)/platform/service/system/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning \
 -I$(COPIED_SDK_PATH)/. \
 -I$(COPIED_SDK_PATH)/protocol/zigbee \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/gateway \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/platform/host \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/include \
 -I$(COPIED_SDK_PATH)/platform/radio/mac \
 -I$(COPIED_SDK_PATH)/platform/service/token_manager/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/find-and-bind-target \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/gp \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_host/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/config \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/zll \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/core \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_printf/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-simple \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/xncp-test-harness \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/include \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/counters \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core

GROUP_START =
GROUP_END =

PROJECT_LIBS = \
 -lpthread \
 -lc \
 -lm

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -std=c99 \
 -Wall \
 -Wextra \
 -Os \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -Wno-missing-braces \
 -Wno-format

CXX_FLAGS += \
 -std=c++11 \
 -Wall \
 -Wextra \
 -Os \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -Wno-missing-braces \
 -Wno-format

ASM_FLAGS += \

LD_FLAGS += \


####################################################################
# Pre/Post Build Rules                                             #
####################################################################
pre-build:
	# No pre-build defined

post-build: $(OUTPUT_DIR)/$(PROJECTNAME).out
	# No post-build defined

####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o: $(COPIED_SDK_PATH)/platform/common/src/sl_string.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_string.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_string.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_command.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_command.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_command.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_input.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_input.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_input.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_io.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_io.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_io.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.o: $(COPIED_SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/crc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/crc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/crc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/micro_host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/micro_host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/micro_host.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/random.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/random.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/random.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/system-timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/system-timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/system-timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.o: $(COPIED_SDK_PATH)/platform/service/legacy_host/src/token.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_host/src/token.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_host/src/token.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o: $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.o: $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_def.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_def.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_def.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/find-and-bind-target/find-and-bind-target-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/find-and-bind-target/find-and-bind-target-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/find-and-bind-target/find-and-bind-target-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/find-and-bind-target/find-and-bind-target-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/find-and-bind-target/find-and-bind-target-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/find-and-bind-target/find-and-bind-target-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/find-and-bind-target/find-and-bind-target.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/find-and-bind-target/find-and-bind-target.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/find-and-bind-target/find-and-bind-target.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/find-and-bind-target/find-and-bind-target.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/find-and-bind-target/find-and-bind-target.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/find-and-bind-target/find-and-bind-target.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-common/ota-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common/ota-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common/ota-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common/ota-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-common/ota-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-common/ota-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/time-server/time-server.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server/time-server.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server/time-server.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server/time-server.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/time-server/time-server.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/time-server/time-server.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/library.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/library.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/library.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-uart.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-uart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-uart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-uart.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-uart.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-uart.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/gp/gp-util.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/gp/gp-util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/gp/gp-util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/gp/gp-util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/gp/gp-util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/gp/gp-util.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.o: $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o: $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o: $(COPIED_SDK_PATH)/util/third_party/printf/printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/printf/printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/printf/printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o: $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o

$(OUTPUT_DIR)/project/app.o: app.c
	@$(POSIX_TOOL_PATH)echo 'Building app.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app.c
CDEPS += $(OUTPUT_DIR)/project/app.d
OBJS += $(OUTPUT_DIR)/project/app.o

$(OUTPUT_DIR)/project/autogen/sl_cli_command_table.o: autogen/sl_cli_command_table.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cli_command_table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cli_command_table.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cli_command_table.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cli_command_table.o

$(OUTPUT_DIR)/project/autogen/sl_cli_instances.o: autogen/sl_cli_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cli_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cli_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cli_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cli_instances.o

$(OUTPUT_DIR)/project/autogen/sl_cluster_service_gen.o: autogen/sl_cluster_service_gen.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cluster_service_gen.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cluster_service_gen.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cluster_service_gen.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cluster_service_gen.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_event_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o: autogen/sl_iostream_handles.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_handles.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_handles.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o

$(OUTPUT_DIR)/project/autogen/sli_cli_hooks.o: autogen/sli_cli_hooks.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sli_cli_hooks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sli_cli_hooks.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sli_cli_hooks.d
OBJS += $(OUTPUT_DIR)/project/autogen/sli_cli_hooks.o

$(OUTPUT_DIR)/project/autogen/zap-cli.o: autogen/zap-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zap-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zap-cli.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zap-cli.d
OBJS += $(OUTPUT_DIR)/project/autogen/zap-cli.o

$(OUTPUT_DIR)/project/autogen/zap-cluster-command-parser.o: autogen/zap-cluster-command-parser.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zap-cluster-command-parser.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zap-cluster-command-parser.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zap-cluster-command-parser.d
OBJS += $(OUTPUT_DIR)/project/autogen/zap-cluster-command-parser.o

$(OUTPUT_DIR)/project/autogen/zap-event.o: autogen/zap-event.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zap-event.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zap-event.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zap-event.d
OBJS += $(OUTPUT_DIR)/project/autogen/zap-event.o

$(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.o: autogen/zigbee_common_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_common_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_common_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_host_callback_dispatcher.o: autogen/zigbee_host_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_host_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_host_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_host_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_host_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.o: autogen/zigbee_stack_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_stack_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_stack_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_zcl_callback_dispatcher.o: autogen/zigbee_zcl_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_zcl_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_zcl_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_zcl_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_zcl_callback_dispatcher.o

$(OUTPUT_DIR)/project/main.o: main.c
	@$(POSIX_TOOL_PATH)echo 'Building main.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA