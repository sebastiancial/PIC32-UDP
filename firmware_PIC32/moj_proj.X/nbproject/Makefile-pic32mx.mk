#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic32mx.mk)" "nbproject/Makefile-local-pic32mx.mk"
include nbproject/Makefile-local-pic32mx.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mx
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/moj_proj.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/moj_proj.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/pic32mx/framework/system/clk/src/sys_clk_static.c ../src/system_config/pic32mx/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mx/system_init.c ../src/system_config/pic32mx/system_interrupt.c ../src/system_config/pic32mx/system_exceptions.c ../src/system_config/pic32mx/system_tasks.c ../src/app.c ../src/main.c ../src/custom_http_app.c ../src/http_print.c ../src/mpfs_img2.c ../../../../bsp/pic32mx_eth_sk/bsp_sys_init.c ../../../../framework/crypto/src/random.c ../../../../framework/crypto/src/arc4.c ../../../../framework/crypto/src/crypto.c ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c ../../../../framework/driver/nvm/src/dynamic/drv_nvm.c ../../../../framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c ../../../../framework/system/command/src/sys_command.c ../../../../framework/system/console/src/sys_console.c ../../../../framework/system/console/src/sys_console_usb_cdc.c ../../../../framework/system/devcon/src/sys_devcon.c ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c ../../../../framework/system/fs/src/dynamic/sys_fs.c ../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c ../../../../framework/system/fs/mpfs/src/mpfs.c ../../../../framework/system/int/src/sys_int_pic32.c ../../../../framework/system/ports/src/sys_ports.c ../../../../framework/system/random/src/sys_random.c ../../../../framework/system/reset/src/sys_reset.c ../../../../framework/system/tmr/src/sys_tmr.c ../../../../framework/tcpip/src/common/sys_fs_wrapper.c ../../../../framework/tcpip/src/common/big_int.c ../../../../framework/tcpip/src/common/big_int_helper_c32.S ../../../../framework/tcpip/src/common/hashes.c ../../../../framework/tcpip/src/common/helpers.c ../../../../framework/tcpip/src/common/lfsr.c ../../../../framework/tcpip/src/tcp.c ../../../../framework/tcpip/src/udp.c ../../../../framework/tcpip/src/arp.c ../../../../framework/tcpip/src/dhcp.c ../../../../framework/tcpip/src/dns.c ../../../../framework/tcpip/src/http.c ../../../../framework/tcpip/src/icmp.c ../../../../framework/tcpip/src/nbns.c ../../../../framework/tcpip/src/sntp.c ../../../../framework/tcpip/src/zero_conf_helper.c ../../../../framework/tcpip/src/zero_conf_link_local.c ../../../../framework/tcpip/src/tcpip_announce.c ../../../../framework/tcpip/src/hash_fnv.c ../../../../framework/tcpip/src/oahash.c ../../../../framework/tcpip/src/tcpip_heap_alloc.c ../../../../framework/tcpip/src/tcpip_helpers.c ../../../../framework/tcpip/src/tcpip_helper_c32.S ../../../../framework/tcpip/src/tcpip_manager.c ../../../../framework/tcpip/src/tcpip_notify.c ../../../../framework/tcpip/src/tcpip_packet.c ../../../../framework/tcpip/src/ipv4.c ../../../../framework/usb/src/dynamic/usb_device.c ../../../../framework/usb/src/dynamic/usb_device_cdc.c ../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1482089478/sys_clk_static.o ${OBJECTDIR}/_ext/148571690/sys_ports_static.o ${OBJECTDIR}/_ext/435813987/system_init.o ${OBJECTDIR}/_ext/435813987/system_interrupt.o ${OBJECTDIR}/_ext/435813987/system_exceptions.o ${OBJECTDIR}/_ext/435813987/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/custom_http_app.o ${OBJECTDIR}/_ext/1360937237/http_print.o ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o ${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o ${OBJECTDIR}/_ext/1886890887/random.o ${OBJECTDIR}/_ext/1886890887/arc4.o ${OBJECTDIR}/_ext/1886890887/crypto.o ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o ${OBJECTDIR}/_ext/732687875/drv_ethphy.o ${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o ${OBJECTDIR}/_ext/571308596/drv_nvm.o ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o ${OBJECTDIR}/_ext/185269848/drv_tmr.o ${OBJECTDIR}/_ext/764219029/drv_usbfs.o ${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o ${OBJECTDIR}/_ext/425903153/sys_command.o ${OBJECTDIR}/_ext/30809027/sys_console.o ${OBJECTDIR}/_ext/30809027/sys_console_usb_cdc.o ${OBJECTDIR}/_ext/1271179505/sys_devcon.o ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/2104899551/sys_fs.o ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o ${OBJECTDIR}/_ext/850537704/mpfs.o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ${OBJECTDIR}/_ext/77319752/sys_ports.o ${OBJECTDIR}/_ext/1283840359/sys_random.o ${OBJECTDIR}/_ext/813494389/sys_reset.o ${OBJECTDIR}/_ext/1264926591/sys_tmr.o ${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o ${OBJECTDIR}/_ext/1136935090/big_int.o ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o ${OBJECTDIR}/_ext/1136935090/hashes.o ${OBJECTDIR}/_ext/1136935090/helpers.o ${OBJECTDIR}/_ext/1136935090/lfsr.o ${OBJECTDIR}/_ext/1408260596/tcp.o ${OBJECTDIR}/_ext/1408260596/udp.o ${OBJECTDIR}/_ext/1408260596/arp.o ${OBJECTDIR}/_ext/1408260596/dhcp.o ${OBJECTDIR}/_ext/1408260596/dns.o ${OBJECTDIR}/_ext/1408260596/http.o ${OBJECTDIR}/_ext/1408260596/icmp.o ${OBJECTDIR}/_ext/1408260596/nbns.o ${OBJECTDIR}/_ext/1408260596/sntp.o ${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o ${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o ${OBJECTDIR}/_ext/1408260596/hash_fnv.o ${OBJECTDIR}/_ext/1408260596/oahash.o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o ${OBJECTDIR}/_ext/1408260596/ipv4.o ${OBJECTDIR}/_ext/610166344/usb_device.o ${OBJECTDIR}/_ext/610166344/usb_device_cdc.o ${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1482089478/sys_clk_static.o.d ${OBJECTDIR}/_ext/148571690/sys_ports_static.o.d ${OBJECTDIR}/_ext/435813987/system_init.o.d ${OBJECTDIR}/_ext/435813987/system_interrupt.o.d ${OBJECTDIR}/_ext/435813987/system_exceptions.o.d ${OBJECTDIR}/_ext/435813987/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d ${OBJECTDIR}/_ext/1360937237/http_print.o.d ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d ${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o.d ${OBJECTDIR}/_ext/1886890887/random.o.d ${OBJECTDIR}/_ext/1886890887/arc4.o.d ${OBJECTDIR}/_ext/1886890887/crypto.o.d ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d ${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d ${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o.d ${OBJECTDIR}/_ext/571308596/drv_nvm.o.d ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o.d ${OBJECTDIR}/_ext/185269848/drv_tmr.o.d ${OBJECTDIR}/_ext/764219029/drv_usbfs.o.d ${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o.d ${OBJECTDIR}/_ext/425903153/sys_command.o.d ${OBJECTDIR}/_ext/30809027/sys_console.o.d ${OBJECTDIR}/_ext/30809027/sys_console_usb_cdc.o.d ${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/2104899551/sys_fs.o.d ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o.d ${OBJECTDIR}/_ext/850537704/mpfs.o.d ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d ${OBJECTDIR}/_ext/77319752/sys_ports.o.d ${OBJECTDIR}/_ext/1283840359/sys_random.o.d ${OBJECTDIR}/_ext/813494389/sys_reset.o.d ${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d ${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o.d ${OBJECTDIR}/_ext/1136935090/big_int.o.d ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.d ${OBJECTDIR}/_ext/1136935090/hashes.o.d ${OBJECTDIR}/_ext/1136935090/helpers.o.d ${OBJECTDIR}/_ext/1136935090/lfsr.o.d ${OBJECTDIR}/_ext/1408260596/tcp.o.d ${OBJECTDIR}/_ext/1408260596/udp.o.d ${OBJECTDIR}/_ext/1408260596/arp.o.d ${OBJECTDIR}/_ext/1408260596/dhcp.o.d ${OBJECTDIR}/_ext/1408260596/dns.o.d ${OBJECTDIR}/_ext/1408260596/http.o.d ${OBJECTDIR}/_ext/1408260596/icmp.o.d ${OBJECTDIR}/_ext/1408260596/nbns.o.d ${OBJECTDIR}/_ext/1408260596/sntp.o.d ${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o.d ${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d ${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d ${OBJECTDIR}/_ext/1408260596/oahash.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d ${OBJECTDIR}/_ext/1408260596/ipv4.o.d ${OBJECTDIR}/_ext/610166344/usb_device.o.d ${OBJECTDIR}/_ext/610166344/usb_device_cdc.o.d ${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1482089478/sys_clk_static.o ${OBJECTDIR}/_ext/148571690/sys_ports_static.o ${OBJECTDIR}/_ext/435813987/system_init.o ${OBJECTDIR}/_ext/435813987/system_interrupt.o ${OBJECTDIR}/_ext/435813987/system_exceptions.o ${OBJECTDIR}/_ext/435813987/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/custom_http_app.o ${OBJECTDIR}/_ext/1360937237/http_print.o ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o ${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o ${OBJECTDIR}/_ext/1886890887/random.o ${OBJECTDIR}/_ext/1886890887/arc4.o ${OBJECTDIR}/_ext/1886890887/crypto.o ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o ${OBJECTDIR}/_ext/732687875/drv_ethphy.o ${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o ${OBJECTDIR}/_ext/571308596/drv_nvm.o ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o ${OBJECTDIR}/_ext/185269848/drv_tmr.o ${OBJECTDIR}/_ext/764219029/drv_usbfs.o ${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o ${OBJECTDIR}/_ext/425903153/sys_command.o ${OBJECTDIR}/_ext/30809027/sys_console.o ${OBJECTDIR}/_ext/30809027/sys_console_usb_cdc.o ${OBJECTDIR}/_ext/1271179505/sys_devcon.o ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/2104899551/sys_fs.o ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o ${OBJECTDIR}/_ext/850537704/mpfs.o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ${OBJECTDIR}/_ext/77319752/sys_ports.o ${OBJECTDIR}/_ext/1283840359/sys_random.o ${OBJECTDIR}/_ext/813494389/sys_reset.o ${OBJECTDIR}/_ext/1264926591/sys_tmr.o ${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o ${OBJECTDIR}/_ext/1136935090/big_int.o ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o ${OBJECTDIR}/_ext/1136935090/hashes.o ${OBJECTDIR}/_ext/1136935090/helpers.o ${OBJECTDIR}/_ext/1136935090/lfsr.o ${OBJECTDIR}/_ext/1408260596/tcp.o ${OBJECTDIR}/_ext/1408260596/udp.o ${OBJECTDIR}/_ext/1408260596/arp.o ${OBJECTDIR}/_ext/1408260596/dhcp.o ${OBJECTDIR}/_ext/1408260596/dns.o ${OBJECTDIR}/_ext/1408260596/http.o ${OBJECTDIR}/_ext/1408260596/icmp.o ${OBJECTDIR}/_ext/1408260596/nbns.o ${OBJECTDIR}/_ext/1408260596/sntp.o ${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o ${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o ${OBJECTDIR}/_ext/1408260596/hash_fnv.o ${OBJECTDIR}/_ext/1408260596/oahash.o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o ${OBJECTDIR}/_ext/1408260596/ipv4.o ${OBJECTDIR}/_ext/610166344/usb_device.o ${OBJECTDIR}/_ext/610166344/usb_device_cdc.o ${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o

# Source Files
SOURCEFILES=../src/system_config/pic32mx/framework/system/clk/src/sys_clk_static.c ../src/system_config/pic32mx/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mx/system_init.c ../src/system_config/pic32mx/system_interrupt.c ../src/system_config/pic32mx/system_exceptions.c ../src/system_config/pic32mx/system_tasks.c ../src/app.c ../src/main.c ../src/custom_http_app.c ../src/http_print.c ../src/mpfs_img2.c ../../../../bsp/pic32mx_eth_sk/bsp_sys_init.c ../../../../framework/crypto/src/random.c ../../../../framework/crypto/src/arc4.c ../../../../framework/crypto/src/crypto.c ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c ../../../../framework/driver/nvm/src/dynamic/drv_nvm.c ../../../../framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c ../../../../framework/system/command/src/sys_command.c ../../../../framework/system/console/src/sys_console.c ../../../../framework/system/console/src/sys_console_usb_cdc.c ../../../../framework/system/devcon/src/sys_devcon.c ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c ../../../../framework/system/fs/src/dynamic/sys_fs.c ../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c ../../../../framework/system/fs/mpfs/src/mpfs.c ../../../../framework/system/int/src/sys_int_pic32.c ../../../../framework/system/ports/src/sys_ports.c ../../../../framework/system/random/src/sys_random.c ../../../../framework/system/reset/src/sys_reset.c ../../../../framework/system/tmr/src/sys_tmr.c ../../../../framework/tcpip/src/common/sys_fs_wrapper.c ../../../../framework/tcpip/src/common/big_int.c ../../../../framework/tcpip/src/common/big_int_helper_c32.S ../../../../framework/tcpip/src/common/hashes.c ../../../../framework/tcpip/src/common/helpers.c ../../../../framework/tcpip/src/common/lfsr.c ../../../../framework/tcpip/src/tcp.c ../../../../framework/tcpip/src/udp.c ../../../../framework/tcpip/src/arp.c ../../../../framework/tcpip/src/dhcp.c ../../../../framework/tcpip/src/dns.c ../../../../framework/tcpip/src/http.c ../../../../framework/tcpip/src/icmp.c ../../../../framework/tcpip/src/nbns.c ../../../../framework/tcpip/src/sntp.c ../../../../framework/tcpip/src/zero_conf_helper.c ../../../../framework/tcpip/src/zero_conf_link_local.c ../../../../framework/tcpip/src/tcpip_announce.c ../../../../framework/tcpip/src/hash_fnv.c ../../../../framework/tcpip/src/oahash.c ../../../../framework/tcpip/src/tcpip_heap_alloc.c ../../../../framework/tcpip/src/tcpip_helpers.c ../../../../framework/tcpip/src/tcpip_helper_c32.S ../../../../framework/tcpip/src/tcpip_manager.c ../../../../framework/tcpip/src/tcpip_notify.c ../../../../framework/tcpip/src/tcpip_packet.c ../../../../framework/tcpip/src/ipv4.c ../../../../framework/usb/src/dynamic/usb_device.c ../../../../framework/usb/src/dynamic/usb_device_cdc.c ../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32mx.mk dist/${CND_CONF}/${IMAGE_TYPE}/moj_proj.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o: ../../../../framework/tcpip/src/common/big_int_helper_c32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.ok ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.d" "${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o ../../../../framework/tcpip/src/common/big_int_helper_c32.S    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PIC32MXSK=1
	
${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o: ../../../../framework/tcpip/src/tcpip_helper_c32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o ../../../../framework/tcpip/src/tcpip_helper_c32.S    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PIC32MXSK=1
	
else
${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o: ../../../../framework/tcpip/src/common/big_int_helper_c32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.ok ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.d" "${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o ../../../../framework/tcpip/src/common/big_int_helper_c32.S    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o: ../../../../framework/tcpip/src/tcpip_helper_c32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o ../../../../framework/tcpip/src/tcpip_helper_c32.S    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.asm.d",--gdwarf-2
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1482089478/sys_clk_static.o: ../src/system_config/pic32mx/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1482089478" 
	@${RM} ${OBJECTDIR}/_ext/1482089478/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482089478/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1482089478/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1482089478/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/1482089478/sys_clk_static.o ../src/system_config/pic32mx/framework/system/clk/src/sys_clk_static.c     
	
${OBJECTDIR}/_ext/148571690/sys_ports_static.o: ../src/system_config/pic32mx/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/148571690" 
	@${RM} ${OBJECTDIR}/_ext/148571690/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/148571690/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/148571690/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/148571690/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/148571690/sys_ports_static.o ../src/system_config/pic32mx/framework/system/ports/src/sys_ports_static.c     
	
${OBJECTDIR}/_ext/435813987/system_init.o: ../src/system_config/pic32mx/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/435813987" 
	@${RM} ${OBJECTDIR}/_ext/435813987/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/435813987/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/435813987/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/435813987/system_init.o.d" -o ${OBJECTDIR}/_ext/435813987/system_init.o ../src/system_config/pic32mx/system_init.c     
	
${OBJECTDIR}/_ext/435813987/system_interrupt.o: ../src/system_config/pic32mx/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/435813987" 
	@${RM} ${OBJECTDIR}/_ext/435813987/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/435813987/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/435813987/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/435813987/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/435813987/system_interrupt.o ../src/system_config/pic32mx/system_interrupt.c     
	
${OBJECTDIR}/_ext/435813987/system_exceptions.o: ../src/system_config/pic32mx/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/435813987" 
	@${RM} ${OBJECTDIR}/_ext/435813987/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/435813987/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/435813987/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/435813987/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/435813987/system_exceptions.o ../src/system_config/pic32mx/system_exceptions.c     
	
${OBJECTDIR}/_ext/435813987/system_tasks.o: ../src/system_config/pic32mx/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/435813987" 
	@${RM} ${OBJECTDIR}/_ext/435813987/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/435813987/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/435813987/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/435813987/system_tasks.o.d" -o ${OBJECTDIR}/_ext/435813987/system_tasks.o ../src/system_config/pic32mx/system_tasks.c     
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c     
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c     
	
${OBJECTDIR}/_ext/1360937237/custom_http_app.o: ../src/custom_http_app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d" -o ${OBJECTDIR}/_ext/1360937237/custom_http_app.o ../src/custom_http_app.c     
	
${OBJECTDIR}/_ext/1360937237/http_print.o: ../src/http_print.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/http_print.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1360937237/http_print.o.d" -o ${OBJECTDIR}/_ext/1360937237/http_print.o ../src/http_print.c     
	
${OBJECTDIR}/_ext/1360937237/mpfs_img2.o: ../src/mpfs_img2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d" -o ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o ../src/mpfs_img2.c     
	
${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o: ../../../../bsp/pic32mx_eth_sk/bsp_sys_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1837361561" 
	@${RM} ${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o.d" -o ${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o ../../../../bsp/pic32mx_eth_sk/bsp_sys_init.c     
	
${OBJECTDIR}/_ext/1886890887/random.o: ../../../../framework/crypto/src/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/random.o.d" -o ${OBJECTDIR}/_ext/1886890887/random.o ../../../../framework/crypto/src/random.c     
	
${OBJECTDIR}/_ext/1886890887/arc4.o: ../../../../framework/crypto/src/arc4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/arc4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/arc4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/arc4.o.d" -o ${OBJECTDIR}/_ext/1886890887/arc4.o ../../../../framework/crypto/src/arc4.c     
	
${OBJECTDIR}/_ext/1886890887/crypto.o: ../../../../framework/crypto/src/crypto.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/crypto.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/crypto.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/crypto.o.d" -o ${OBJECTDIR}/_ext/1886890887/crypto.o ../../../../framework/crypto/src/crypto.c     
	
${OBJECTDIR}/_ext/1908841681/drv_ethmac.o: ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1908841681" 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c     
	
${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o: ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1908841681" 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c     
	
${OBJECTDIR}/_ext/732687875/drv_ethphy.o: ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/732687875" 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_ethphy.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/732687875/drv_ethphy.o ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c     
	
${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o: ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/732687875" 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o.d 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o.d" -o ${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c     
	
${OBJECTDIR}/_ext/571308596/drv_nvm.o: ../../../../framework/driver/nvm/src/dynamic/drv_nvm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/571308596" 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/571308596/drv_nvm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/571308596/drv_nvm.o.d" -o ${OBJECTDIR}/_ext/571308596/drv_nvm.o ../../../../framework/driver/nvm/src/dynamic/drv_nvm.c     
	
${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o: ../../../../framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/571308596" 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o.d" -o ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o ../../../../framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c     
	
${OBJECTDIR}/_ext/185269848/drv_tmr.o: ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/185269848" 
	@${RM} ${OBJECTDIR}/_ext/185269848/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/185269848/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/185269848/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/185269848/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/185269848/drv_tmr.o ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c     
	
${OBJECTDIR}/_ext/764219029/drv_usbfs.o: ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/764219029" 
	@${RM} ${OBJECTDIR}/_ext/764219029/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/764219029/drv_usbfs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/764219029/drv_usbfs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/764219029/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/764219029/drv_usbfs.o ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c     
	
${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o: ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/764219029" 
	@${RM} ${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c     
	
${OBJECTDIR}/_ext/425903153/sys_command.o: ../../../../framework/system/command/src/sys_command.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/425903153" 
	@${RM} ${OBJECTDIR}/_ext/425903153/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/425903153/sys_command.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/425903153/sys_command.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/425903153/sys_command.o.d" -o ${OBJECTDIR}/_ext/425903153/sys_command.o ../../../../framework/system/command/src/sys_command.c     
	
${OBJECTDIR}/_ext/30809027/sys_console.o: ../../../../framework/system/console/src/sys_console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/30809027" 
	@${RM} ${OBJECTDIR}/_ext/30809027/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/30809027/sys_console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/30809027/sys_console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/30809027/sys_console.o.d" -o ${OBJECTDIR}/_ext/30809027/sys_console.o ../../../../framework/system/console/src/sys_console.c     
	
${OBJECTDIR}/_ext/30809027/sys_console_usb_cdc.o: ../../../../framework/system/console/src/sys_console_usb_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/30809027" 
	@${RM} ${OBJECTDIR}/_ext/30809027/sys_console_usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/30809027/sys_console_usb_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/30809027/sys_console_usb_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/30809027/sys_console_usb_cdc.o.d" -o ${OBJECTDIR}/_ext/30809027/sys_console_usb_cdc.o ../../../../framework/system/console/src/sys_console_usb_cdc.c     
	
${OBJECTDIR}/_ext/1271179505/sys_devcon.o: ../../../../framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1271179505" 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1271179505/sys_devcon.o ../../../../framework/system/devcon/src/sys_devcon.c     
	
${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o: ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1271179505" 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c     
	
${OBJECTDIR}/_ext/2104899551/sys_fs.o: ../../../../framework/system/fs/src/dynamic/sys_fs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2104899551" 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2104899551/sys_fs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/2104899551/sys_fs.o.d" -o ${OBJECTDIR}/_ext/2104899551/sys_fs.o ../../../../framework/system/fs/src/dynamic/sys_fs.c     
	
${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o: ../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2104899551" 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o ../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c     
	
${OBJECTDIR}/_ext/850537704/mpfs.o: ../../../../framework/system/fs/mpfs/src/mpfs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850537704" 
	@${RM} ${OBJECTDIR}/_ext/850537704/mpfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/850537704/mpfs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/850537704/mpfs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/850537704/mpfs.o.d" -o ${OBJECTDIR}/_ext/850537704/mpfs.o ../../../../framework/system/fs/mpfs/src/mpfs.c     
	
${OBJECTDIR}/_ext/122796885/sys_int_pic32.o: ../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/122796885" 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ../../../../framework/system/int/src/sys_int_pic32.c     
	
${OBJECTDIR}/_ext/77319752/sys_ports.o: ../../../../framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/77319752" 
	@${RM} ${OBJECTDIR}/_ext/77319752/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/77319752/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/77319752/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/77319752/sys_ports.o.d" -o ${OBJECTDIR}/_ext/77319752/sys_ports.o ../../../../framework/system/ports/src/sys_ports.c     
	
${OBJECTDIR}/_ext/1283840359/sys_random.o: ../../../../framework/system/random/src/sys_random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1283840359" 
	@${RM} ${OBJECTDIR}/_ext/1283840359/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283840359/sys_random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1283840359/sys_random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1283840359/sys_random.o.d" -o ${OBJECTDIR}/_ext/1283840359/sys_random.o ../../../../framework/system/random/src/sys_random.c     
	
${OBJECTDIR}/_ext/813494389/sys_reset.o: ../../../../framework/system/reset/src/sys_reset.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/813494389" 
	@${RM} ${OBJECTDIR}/_ext/813494389/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/813494389/sys_reset.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/813494389/sys_reset.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/813494389/sys_reset.o.d" -o ${OBJECTDIR}/_ext/813494389/sys_reset.o ../../../../framework/system/reset/src/sys_reset.c     
	
${OBJECTDIR}/_ext/1264926591/sys_tmr.o: ../../../../framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1264926591" 
	@${RM} ${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1264926591/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1264926591/sys_tmr.o ../../../../framework/system/tmr/src/sys_tmr.c     
	
${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o: ../../../../framework/tcpip/src/common/sys_fs_wrapper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o.d" -o ${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o ../../../../framework/tcpip/src/common/sys_fs_wrapper.c     
	
${OBJECTDIR}/_ext/1136935090/big_int.o: ../../../../framework/tcpip/src/common/big_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/big_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/big_int.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/big_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1136935090/big_int.o.d" -o ${OBJECTDIR}/_ext/1136935090/big_int.o ../../../../framework/tcpip/src/common/big_int.c     
	
${OBJECTDIR}/_ext/1136935090/hashes.o: ../../../../framework/tcpip/src/common/hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/hashes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/hashes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1136935090/hashes.o.d" -o ${OBJECTDIR}/_ext/1136935090/hashes.o ../../../../framework/tcpip/src/common/hashes.c     
	
${OBJECTDIR}/_ext/1136935090/helpers.o: ../../../../framework/tcpip/src/common/helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1136935090/helpers.o.d" -o ${OBJECTDIR}/_ext/1136935090/helpers.o ../../../../framework/tcpip/src/common/helpers.c     
	
${OBJECTDIR}/_ext/1136935090/lfsr.o: ../../../../framework/tcpip/src/common/lfsr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/lfsr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/lfsr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/lfsr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1136935090/lfsr.o.d" -o ${OBJECTDIR}/_ext/1136935090/lfsr.o ../../../../framework/tcpip/src/common/lfsr.c     
	
${OBJECTDIR}/_ext/1408260596/tcp.o: ../../../../framework/tcpip/src/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcp.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcp.o ../../../../framework/tcpip/src/tcp.c     
	
${OBJECTDIR}/_ext/1408260596/udp.o: ../../../../framework/tcpip/src/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/udp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/udp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/udp.o.d" -o ${OBJECTDIR}/_ext/1408260596/udp.o ../../../../framework/tcpip/src/udp.c     
	
${OBJECTDIR}/_ext/1408260596/arp.o: ../../../../framework/tcpip/src/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/arp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/arp.o.d" -o ${OBJECTDIR}/_ext/1408260596/arp.o ../../../../framework/tcpip/src/arp.c     
	
${OBJECTDIR}/_ext/1408260596/dhcp.o: ../../../../framework/tcpip/src/dhcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dhcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/dhcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/dhcp.o.d" -o ${OBJECTDIR}/_ext/1408260596/dhcp.o ../../../../framework/tcpip/src/dhcp.c     
	
${OBJECTDIR}/_ext/1408260596/dns.o: ../../../../framework/tcpip/src/dns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dns.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/dns.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/dns.o.d" -o ${OBJECTDIR}/_ext/1408260596/dns.o ../../../../framework/tcpip/src/dns.c     
	
${OBJECTDIR}/_ext/1408260596/http.o: ../../../../framework/tcpip/src/http.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/http.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/http.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/http.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/http.o.d" -o ${OBJECTDIR}/_ext/1408260596/http.o ../../../../framework/tcpip/src/http.c     
	
${OBJECTDIR}/_ext/1408260596/icmp.o: ../../../../framework/tcpip/src/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/icmp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/icmp.o.d" -o ${OBJECTDIR}/_ext/1408260596/icmp.o ../../../../framework/tcpip/src/icmp.c     
	
${OBJECTDIR}/_ext/1408260596/nbns.o: ../../../../framework/tcpip/src/nbns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/nbns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/nbns.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/nbns.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/nbns.o.d" -o ${OBJECTDIR}/_ext/1408260596/nbns.o ../../../../framework/tcpip/src/nbns.c     
	
${OBJECTDIR}/_ext/1408260596/sntp.o: ../../../../framework/tcpip/src/sntp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/sntp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/sntp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/sntp.o.d" -o ${OBJECTDIR}/_ext/1408260596/sntp.o ../../../../framework/tcpip/src/sntp.c     
	
${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o: ../../../../framework/tcpip/src/zero_conf_helper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o.d" -o ${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o ../../../../framework/tcpip/src/zero_conf_helper.c     
	
${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o: ../../../../framework/tcpip/src/zero_conf_link_local.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o.d" -o ${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o ../../../../framework/tcpip/src/zero_conf_link_local.c     
	
${OBJECTDIR}/_ext/1408260596/tcpip_announce.o: ../../../../framework/tcpip/src/tcpip_announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o ../../../../framework/tcpip/src/tcpip_announce.c     
	
${OBJECTDIR}/_ext/1408260596/hash_fnv.o: ../../../../framework/tcpip/src/hash_fnv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/hash_fnv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1408260596/hash_fnv.o ../../../../framework/tcpip/src/hash_fnv.c     
	
${OBJECTDIR}/_ext/1408260596/oahash.o: ../../../../framework/tcpip/src/oahash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/oahash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/oahash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/oahash.o.d" -o ${OBJECTDIR}/_ext/1408260596/oahash.o ../../../../framework/tcpip/src/oahash.c     
	
${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o: ../../../../framework/tcpip/src/tcpip_heap_alloc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o ../../../../framework/tcpip/src/tcpip_heap_alloc.c     
	
${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o: ../../../../framework/tcpip/src/tcpip_helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o ../../../../framework/tcpip/src/tcpip_helpers.c     
	
${OBJECTDIR}/_ext/1408260596/tcpip_manager.o: ../../../../framework/tcpip/src/tcpip_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o ../../../../framework/tcpip/src/tcpip_manager.c     
	
${OBJECTDIR}/_ext/1408260596/tcpip_notify.o: ../../../../framework/tcpip/src/tcpip_notify.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o ../../../../framework/tcpip/src/tcpip_notify.c     
	
${OBJECTDIR}/_ext/1408260596/tcpip_packet.o: ../../../../framework/tcpip/src/tcpip_packet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o ../../../../framework/tcpip/src/tcpip_packet.c     
	
${OBJECTDIR}/_ext/1408260596/ipv4.o: ../../../../framework/tcpip/src/ipv4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/ipv4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/ipv4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/ipv4.o.d" -o ${OBJECTDIR}/_ext/1408260596/ipv4.o ../../../../framework/tcpip/src/ipv4.c     
	
${OBJECTDIR}/_ext/610166344/usb_device.o: ../../../../framework/usb/src/dynamic/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/610166344" 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/610166344/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/610166344/usb_device.o.d" -o ${OBJECTDIR}/_ext/610166344/usb_device.o ../../../../framework/usb/src/dynamic/usb_device.c     
	
${OBJECTDIR}/_ext/610166344/usb_device_cdc.o: ../../../../framework/usb/src/dynamic/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/610166344" 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/610166344/usb_device_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/610166344/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/610166344/usb_device_cdc.o ../../../../framework/usb/src/dynamic/usb_device_cdc.c     
	
${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o: ../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/610166344" 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o ../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c     
	
else
${OBJECTDIR}/_ext/1482089478/sys_clk_static.o: ../src/system_config/pic32mx/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1482089478" 
	@${RM} ${OBJECTDIR}/_ext/1482089478/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482089478/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1482089478/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1482089478/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/1482089478/sys_clk_static.o ../src/system_config/pic32mx/framework/system/clk/src/sys_clk_static.c     
	
${OBJECTDIR}/_ext/148571690/sys_ports_static.o: ../src/system_config/pic32mx/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/148571690" 
	@${RM} ${OBJECTDIR}/_ext/148571690/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/148571690/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/148571690/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/148571690/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/148571690/sys_ports_static.o ../src/system_config/pic32mx/framework/system/ports/src/sys_ports_static.c     
	
${OBJECTDIR}/_ext/435813987/system_init.o: ../src/system_config/pic32mx/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/435813987" 
	@${RM} ${OBJECTDIR}/_ext/435813987/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/435813987/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/435813987/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/435813987/system_init.o.d" -o ${OBJECTDIR}/_ext/435813987/system_init.o ../src/system_config/pic32mx/system_init.c     
	
${OBJECTDIR}/_ext/435813987/system_interrupt.o: ../src/system_config/pic32mx/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/435813987" 
	@${RM} ${OBJECTDIR}/_ext/435813987/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/435813987/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/435813987/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/435813987/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/435813987/system_interrupt.o ../src/system_config/pic32mx/system_interrupt.c     
	
${OBJECTDIR}/_ext/435813987/system_exceptions.o: ../src/system_config/pic32mx/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/435813987" 
	@${RM} ${OBJECTDIR}/_ext/435813987/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/435813987/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/435813987/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/435813987/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/435813987/system_exceptions.o ../src/system_config/pic32mx/system_exceptions.c     
	
${OBJECTDIR}/_ext/435813987/system_tasks.o: ../src/system_config/pic32mx/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/435813987" 
	@${RM} ${OBJECTDIR}/_ext/435813987/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/435813987/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/435813987/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/435813987/system_tasks.o.d" -o ${OBJECTDIR}/_ext/435813987/system_tasks.o ../src/system_config/pic32mx/system_tasks.c     
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c     
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c     
	
${OBJECTDIR}/_ext/1360937237/custom_http_app.o: ../src/custom_http_app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d" -o ${OBJECTDIR}/_ext/1360937237/custom_http_app.o ../src/custom_http_app.c     
	
${OBJECTDIR}/_ext/1360937237/http_print.o: ../src/http_print.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/http_print.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1360937237/http_print.o.d" -o ${OBJECTDIR}/_ext/1360937237/http_print.o ../src/http_print.c     
	
${OBJECTDIR}/_ext/1360937237/mpfs_img2.o: ../src/mpfs_img2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d" -o ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o ../src/mpfs_img2.c     
	
${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o: ../../../../bsp/pic32mx_eth_sk/bsp_sys_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1837361561" 
	@${RM} ${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o.d" -o ${OBJECTDIR}/_ext/1837361561/bsp_sys_init.o ../../../../bsp/pic32mx_eth_sk/bsp_sys_init.c     
	
${OBJECTDIR}/_ext/1886890887/random.o: ../../../../framework/crypto/src/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/random.o.d" -o ${OBJECTDIR}/_ext/1886890887/random.o ../../../../framework/crypto/src/random.c     
	
${OBJECTDIR}/_ext/1886890887/arc4.o: ../../../../framework/crypto/src/arc4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/arc4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/arc4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/arc4.o.d" -o ${OBJECTDIR}/_ext/1886890887/arc4.o ../../../../framework/crypto/src/arc4.c     
	
${OBJECTDIR}/_ext/1886890887/crypto.o: ../../../../framework/crypto/src/crypto.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/crypto.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/crypto.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1886890887/crypto.o.d" -o ${OBJECTDIR}/_ext/1886890887/crypto.o ../../../../framework/crypto/src/crypto.c     
	
${OBJECTDIR}/_ext/1908841681/drv_ethmac.o: ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1908841681" 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c     
	
${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o: ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1908841681" 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c     
	
${OBJECTDIR}/_ext/732687875/drv_ethphy.o: ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/732687875" 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_ethphy.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/732687875/drv_ethphy.o ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c     
	
${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o: ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/732687875" 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o.d 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o.d" -o ${OBJECTDIR}/_ext/732687875/drv_extphy_dp83848.o ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_dp83848.c     
	
${OBJECTDIR}/_ext/571308596/drv_nvm.o: ../../../../framework/driver/nvm/src/dynamic/drv_nvm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/571308596" 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/571308596/drv_nvm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/571308596/drv_nvm.o.d" -o ${OBJECTDIR}/_ext/571308596/drv_nvm.o ../../../../framework/driver/nvm/src/dynamic/drv_nvm.c     
	
${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o: ../../../../framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/571308596" 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o.d" -o ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o ../../../../framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c     
	
${OBJECTDIR}/_ext/185269848/drv_tmr.o: ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/185269848" 
	@${RM} ${OBJECTDIR}/_ext/185269848/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/185269848/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/185269848/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/185269848/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/185269848/drv_tmr.o ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c     
	
${OBJECTDIR}/_ext/764219029/drv_usbfs.o: ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/764219029" 
	@${RM} ${OBJECTDIR}/_ext/764219029/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/764219029/drv_usbfs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/764219029/drv_usbfs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/764219029/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/764219029/drv_usbfs.o ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c     
	
${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o: ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/764219029" 
	@${RM} ${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/764219029/drv_usbfs_device.o ../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c     
	
${OBJECTDIR}/_ext/425903153/sys_command.o: ../../../../framework/system/command/src/sys_command.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/425903153" 
	@${RM} ${OBJECTDIR}/_ext/425903153/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/425903153/sys_command.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/425903153/sys_command.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/425903153/sys_command.o.d" -o ${OBJECTDIR}/_ext/425903153/sys_command.o ../../../../framework/system/command/src/sys_command.c     
	
${OBJECTDIR}/_ext/30809027/sys_console.o: ../../../../framework/system/console/src/sys_console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/30809027" 
	@${RM} ${OBJECTDIR}/_ext/30809027/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/30809027/sys_console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/30809027/sys_console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/30809027/sys_console.o.d" -o ${OBJECTDIR}/_ext/30809027/sys_console.o ../../../../framework/system/console/src/sys_console.c     
	
${OBJECTDIR}/_ext/30809027/sys_console_usb_cdc.o: ../../../../framework/system/console/src/sys_console_usb_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/30809027" 
	@${RM} ${OBJECTDIR}/_ext/30809027/sys_console_usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/30809027/sys_console_usb_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/30809027/sys_console_usb_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/30809027/sys_console_usb_cdc.o.d" -o ${OBJECTDIR}/_ext/30809027/sys_console_usb_cdc.o ../../../../framework/system/console/src/sys_console_usb_cdc.c     
	
${OBJECTDIR}/_ext/1271179505/sys_devcon.o: ../../../../framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1271179505" 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1271179505/sys_devcon.o ../../../../framework/system/devcon/src/sys_devcon.c     
	
${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o: ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1271179505" 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c     
	
${OBJECTDIR}/_ext/2104899551/sys_fs.o: ../../../../framework/system/fs/src/dynamic/sys_fs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2104899551" 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2104899551/sys_fs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/2104899551/sys_fs.o.d" -o ${OBJECTDIR}/_ext/2104899551/sys_fs.o ../../../../framework/system/fs/src/dynamic/sys_fs.c     
	
${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o: ../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2104899551" 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o ../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c     
	
${OBJECTDIR}/_ext/850537704/mpfs.o: ../../../../framework/system/fs/mpfs/src/mpfs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850537704" 
	@${RM} ${OBJECTDIR}/_ext/850537704/mpfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/850537704/mpfs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/850537704/mpfs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/850537704/mpfs.o.d" -o ${OBJECTDIR}/_ext/850537704/mpfs.o ../../../../framework/system/fs/mpfs/src/mpfs.c     
	
${OBJECTDIR}/_ext/122796885/sys_int_pic32.o: ../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/122796885" 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ../../../../framework/system/int/src/sys_int_pic32.c     
	
${OBJECTDIR}/_ext/77319752/sys_ports.o: ../../../../framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/77319752" 
	@${RM} ${OBJECTDIR}/_ext/77319752/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/77319752/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/77319752/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/77319752/sys_ports.o.d" -o ${OBJECTDIR}/_ext/77319752/sys_ports.o ../../../../framework/system/ports/src/sys_ports.c     
	
${OBJECTDIR}/_ext/1283840359/sys_random.o: ../../../../framework/system/random/src/sys_random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1283840359" 
	@${RM} ${OBJECTDIR}/_ext/1283840359/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283840359/sys_random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1283840359/sys_random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1283840359/sys_random.o.d" -o ${OBJECTDIR}/_ext/1283840359/sys_random.o ../../../../framework/system/random/src/sys_random.c     
	
${OBJECTDIR}/_ext/813494389/sys_reset.o: ../../../../framework/system/reset/src/sys_reset.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/813494389" 
	@${RM} ${OBJECTDIR}/_ext/813494389/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/813494389/sys_reset.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/813494389/sys_reset.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/813494389/sys_reset.o.d" -o ${OBJECTDIR}/_ext/813494389/sys_reset.o ../../../../framework/system/reset/src/sys_reset.c     
	
${OBJECTDIR}/_ext/1264926591/sys_tmr.o: ../../../../framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1264926591" 
	@${RM} ${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1264926591/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1264926591/sys_tmr.o ../../../../framework/system/tmr/src/sys_tmr.c     
	
${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o: ../../../../framework/tcpip/src/common/sys_fs_wrapper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o.d" -o ${OBJECTDIR}/_ext/1136935090/sys_fs_wrapper.o ../../../../framework/tcpip/src/common/sys_fs_wrapper.c     
	
${OBJECTDIR}/_ext/1136935090/big_int.o: ../../../../framework/tcpip/src/common/big_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/big_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/big_int.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/big_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1136935090/big_int.o.d" -o ${OBJECTDIR}/_ext/1136935090/big_int.o ../../../../framework/tcpip/src/common/big_int.c     
	
${OBJECTDIR}/_ext/1136935090/hashes.o: ../../../../framework/tcpip/src/common/hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/hashes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/hashes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1136935090/hashes.o.d" -o ${OBJECTDIR}/_ext/1136935090/hashes.o ../../../../framework/tcpip/src/common/hashes.c     
	
${OBJECTDIR}/_ext/1136935090/helpers.o: ../../../../framework/tcpip/src/common/helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1136935090/helpers.o.d" -o ${OBJECTDIR}/_ext/1136935090/helpers.o ../../../../framework/tcpip/src/common/helpers.c     
	
${OBJECTDIR}/_ext/1136935090/lfsr.o: ../../../../framework/tcpip/src/common/lfsr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/lfsr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/lfsr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/lfsr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1136935090/lfsr.o.d" -o ${OBJECTDIR}/_ext/1136935090/lfsr.o ../../../../framework/tcpip/src/common/lfsr.c     
	
${OBJECTDIR}/_ext/1408260596/tcp.o: ../../../../framework/tcpip/src/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcp.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcp.o ../../../../framework/tcpip/src/tcp.c     
	
${OBJECTDIR}/_ext/1408260596/udp.o: ../../../../framework/tcpip/src/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/udp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/udp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/udp.o.d" -o ${OBJECTDIR}/_ext/1408260596/udp.o ../../../../framework/tcpip/src/udp.c     
	
${OBJECTDIR}/_ext/1408260596/arp.o: ../../../../framework/tcpip/src/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/arp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/arp.o.d" -o ${OBJECTDIR}/_ext/1408260596/arp.o ../../../../framework/tcpip/src/arp.c     
	
${OBJECTDIR}/_ext/1408260596/dhcp.o: ../../../../framework/tcpip/src/dhcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dhcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/dhcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/dhcp.o.d" -o ${OBJECTDIR}/_ext/1408260596/dhcp.o ../../../../framework/tcpip/src/dhcp.c     
	
${OBJECTDIR}/_ext/1408260596/dns.o: ../../../../framework/tcpip/src/dns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dns.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/dns.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/dns.o.d" -o ${OBJECTDIR}/_ext/1408260596/dns.o ../../../../framework/tcpip/src/dns.c     
	
${OBJECTDIR}/_ext/1408260596/http.o: ../../../../framework/tcpip/src/http.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/http.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/http.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/http.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/http.o.d" -o ${OBJECTDIR}/_ext/1408260596/http.o ../../../../framework/tcpip/src/http.c     
	
${OBJECTDIR}/_ext/1408260596/icmp.o: ../../../../framework/tcpip/src/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/icmp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/icmp.o.d" -o ${OBJECTDIR}/_ext/1408260596/icmp.o ../../../../framework/tcpip/src/icmp.c     
	
${OBJECTDIR}/_ext/1408260596/nbns.o: ../../../../framework/tcpip/src/nbns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/nbns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/nbns.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/nbns.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/nbns.o.d" -o ${OBJECTDIR}/_ext/1408260596/nbns.o ../../../../framework/tcpip/src/nbns.c     
	
${OBJECTDIR}/_ext/1408260596/sntp.o: ../../../../framework/tcpip/src/sntp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/sntp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/sntp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/sntp.o.d" -o ${OBJECTDIR}/_ext/1408260596/sntp.o ../../../../framework/tcpip/src/sntp.c     
	
${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o: ../../../../framework/tcpip/src/zero_conf_helper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o.d" -o ${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o ../../../../framework/tcpip/src/zero_conf_helper.c     
	
${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o: ../../../../framework/tcpip/src/zero_conf_link_local.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o.d" -o ${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o ../../../../framework/tcpip/src/zero_conf_link_local.c     
	
${OBJECTDIR}/_ext/1408260596/tcpip_announce.o: ../../../../framework/tcpip/src/tcpip_announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o ../../../../framework/tcpip/src/tcpip_announce.c     
	
${OBJECTDIR}/_ext/1408260596/hash_fnv.o: ../../../../framework/tcpip/src/hash_fnv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/hash_fnv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1408260596/hash_fnv.o ../../../../framework/tcpip/src/hash_fnv.c     
	
${OBJECTDIR}/_ext/1408260596/oahash.o: ../../../../framework/tcpip/src/oahash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/oahash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/oahash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/oahash.o.d" -o ${OBJECTDIR}/_ext/1408260596/oahash.o ../../../../framework/tcpip/src/oahash.c     
	
${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o: ../../../../framework/tcpip/src/tcpip_heap_alloc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o ../../../../framework/tcpip/src/tcpip_heap_alloc.c     
	
${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o: ../../../../framework/tcpip/src/tcpip_helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o ../../../../framework/tcpip/src/tcpip_helpers.c     
	
${OBJECTDIR}/_ext/1408260596/tcpip_manager.o: ../../../../framework/tcpip/src/tcpip_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o ../../../../framework/tcpip/src/tcpip_manager.c     
	
${OBJECTDIR}/_ext/1408260596/tcpip_notify.o: ../../../../framework/tcpip/src/tcpip_notify.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o ../../../../framework/tcpip/src/tcpip_notify.c     
	
${OBJECTDIR}/_ext/1408260596/tcpip_packet.o: ../../../../framework/tcpip/src/tcpip_packet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o ../../../../framework/tcpip/src/tcpip_packet.c     
	
${OBJECTDIR}/_ext/1408260596/ipv4.o: ../../../../framework/tcpip/src/ipv4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/ipv4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/ipv4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/1408260596/ipv4.o.d" -o ${OBJECTDIR}/_ext/1408260596/ipv4.o ../../../../framework/tcpip/src/ipv4.c     
	
${OBJECTDIR}/_ext/610166344/usb_device.o: ../../../../framework/usb/src/dynamic/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/610166344" 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/610166344/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/610166344/usb_device.o.d" -o ${OBJECTDIR}/_ext/610166344/usb_device.o ../../../../framework/usb/src/dynamic/usb_device.c     
	
${OBJECTDIR}/_ext/610166344/usb_device_cdc.o: ../../../../framework/usb/src/dynamic/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/610166344" 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/610166344/usb_device_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/610166344/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/610166344/usb_device_cdc.o ../../../../framework/usb/src/dynamic/usb_device_cdc.c     
	
${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o: ../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/610166344" 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mx" -I"../src/pic32mx" -I"../../../../framework" -I"../src/system_config/pic32mx/framework" -I"../../../../bsp/pic32mx_eth_sk" -MMD -MF "${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/610166344/usb_device_cdc_acm.o ../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c     
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/moj_proj.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../bin/framework/peripheral/PIC32MX795F512L_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PIC32MXSK=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/moj_proj.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\bin\framework\peripheral\PIC32MX795F512L_peripherals.a            -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PIC32MXSK=1,--defsym=_min_heap_size=44960,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/moj_proj.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../bin/framework/peripheral/PIC32MX795F512L_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/moj_proj.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\bin\framework\peripheral\PIC32MX795F512L_peripherals.a        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=44960,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/moj_proj.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic32mx
	${RM} -r dist/pic32mx

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
