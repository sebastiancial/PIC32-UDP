/*******************************************************************************
  MPLAB Harmony System Configuration Header

  File Name:
    system_config.h

  Summary:
    Build-time configuration header for the system defined by this MPLAB Harmony
    project.

  Description:
    An MPLAB Project may have multiple configurations.  This file defines the
    build-time options for a single configuration.

  Remarks:
    This configuration header must not define any prototypes or data
    definitions (or include any files that do).  It only provides macro
    definitions for build-time configuration options that are not instantiated
    until used by another MPLAB Harmony module or application.
    
    Created with MPLAB Harmony Version 1.04
*******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2015 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED AS IS WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
*******************************************************************************/
// DOM-IGNORE-END

#ifndef _SYSTEM_CONFIG_H
#define _SYSTEM_CONFIG_H

/* This is a temporary workaround for an issue with the peripheral library "Exists"
   functions that causes superfluous warnings.  It "nulls" out the definition of
   The PLIB function attribute that causes the warning.  Once that issue has been
   resolved, this definition should be removed. */
#define _PLIB_UNSUPPORTED


// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
/*  This section Includes other configuration headers necessary to completely
    define this configuration.
*/

#include "bsp_config.h"

// *****************************************************************************
// *****************************************************************************
// Section: System Service Configuration
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Common System Service Configuration Options
*/
#define SYS_VERSION_STR           "1.04"
#define SYS_VERSION               10400

// *****************************************************************************
/* Clock System Service Configuration Options
*/
#define SYS_CLK_FREQ                        80000000ul
#define SYS_CLK_BUS_PERIPHERAL_1            80000000ul
#define SYS_CLK_UPLL_BEFORE_DIV2_FREQ       48000000ul
#define SYS_CLK_CONFIG_PRIMARY_XTAL         8000000ul
#define SYS_CLK_CONFIG_SECONDARY_XTAL       0ul
   
/*** Interrupt System Service Configuration ***/
#define SYS_INT                     true

/*** Ports System Service Configuration ***/
#define SYS_PORT_AD1PCFG        ~0xffff
#define SYS_PORT_CNPUE          0x0
#define SYS_PORT_CNEN           0x0

#define SYS_PORT_D_TRIS         0xfff8
#define SYS_PORT_D_LAT          0x0
#define SYS_PORT_D_ODC          0x0
/*** Timer System Service Configuration ***/
#define SYS_TMR_POWER_STATE             SYS_MODULE_POWER_RUN_FULL
#define SYS_TMR_DRIVER_INDEX            DRV_TMR_INDEX_0
#define SYS_TMR_MAX_CLIENT_OBJECTS      5
#define SYS_TMR_FREQUENCY               1000
#define SYS_TMR_FREQUENCY_TOLERANCE     10
#define SYS_TMR_UNIT_RESOLUTION         10000
#define SYS_TMR_CLIENT_TOLERANCE        10
#define SYS_TMR_INTERRUPT_NOTIFICATION  false

/*** Console System Service Configuration ***/

#define SYS_CONSOLE_OVERRIDE_STDIO
#define SYS_CONSOLE_DEVICE_MAX_INSTANCES        2
#define SYS_CONSOLE_INSTANCES_NUMBER            1
#define SYS_CONSOLE_USB_CDC_INSTANCE       USB_DEVICE_CDC_INDEX_0
#define SYS_CONSOLE_USB_CDC_COMM_BAUD_RATE 921600
#define SYS_CONSOLE_USB_CDC_RD_QUEUE_DEPTH 1
#define SYS_CONSOLE_USB_CDC_WR_QUEUE_DEPTH 128
#define SYS_CONSOLE_USB_CDC_READ_BUFFER_SIZE   64
#define SYS_CONSOLE_BUFFER_DMA_READY

 
/*** Command Processor System Service Configuration ***/
#define SYS_CMD_ENABLE
#define SYS_CMD_DEVICE_MAX_INSTANCES    SYS_CONSOLE_DEVICE_MAX_INSTANCES
#define SYS_CMD_PRINT_BUFFER_SIZE       512
#define SYS_CMD_BUFFER_DMA_READY
#define SYS_CMD_REMAP_SYS_CONSOLE_MESSAGE

/*** File System Service Configuration ***/

#define SYS_FS_MEDIA_NUMBER         	1

#define SYS_FS_VOLUME_NUMBER		1

#define SYS_FS_AUTOMOUNT_ENABLE		false
#define SYS_FS_MAX_FILES	    	25
#define SYS_FS_MAX_FILE_SYSTEM_TYPE 	1
#define SYS_FS_MEDIA_MAX_BLOCK_SIZE  	512
#define SYS_FS_MEDIA_MANAGER_BUFFER_SIZE 512


#define SYS_FS_MEDIA_TYPE_IDX0 				
#define SYS_FS_TYPE_IDX0 					








// *****************************************************************************
/* Random System Service Configuration Options
*/

#define SYS_RANDOM_CRYPTO_SEED_SIZE  32


// *****************************************************************************
// *****************************************************************************
// Section: Driver Configuration
// *****************************************************************************
// *****************************************************************************

/*** Timer Driver Configuration ***/
#define DRV_TMR_INSTANCES_NUMBER           1
#define DRV_TMR_CLIENTS_NUMBER             1
#define DRV_TMR_INTERRUPT_MODE             true

/*** Timer Driver 0 Configuration ***/
#define DRV_TMR_PERIPHERAL_ID_IDX0          TMR_ID_1
#define DRV_TMR_INTERRUPT_SOURCE_IDX0       INT_SOURCE_TIMER_1
#define DRV_TMR_INTERRUPT_VECTOR_IDX0       INT_VECTOR_T1
#define DRV_TMR_ISR_VECTOR_IDX0             _TIMER_1_VECTOR
#define DRV_TMR_INTERRUPT_PRIORITY_IDX0     INT_PRIORITY_LEVEL1
#define DRV_TMR_INTERRUPT_SUB_PRIORITY_IDX0 INT_SUBPRIORITY_LEVEL0
#define DRV_TMR_CLOCK_SOURCE_IDX0           DRV_TMR_CLKSOURCE_INTERNAL
#define DRV_TMR_PRESCALE_IDX0               TMR_PRESCALE_VALUE_256
#define DRV_TMR_OPERATION_MODE_IDX0         DRV_TMR_OPERATION_MODE_16_BIT
#define DRV_TMR_ASYNC_WRITE_ENABLE_IDX0     false
#define DRV_TMR_POWER_STATE_IDX0            SYS_MODULE_POWER_RUN_FULL

 
 
/*** NVM Driver Configuration ***/


#define DRV_NVM_INSTANCES_NUMBER     	1
#define DRV_NVM_CLIENTS_NUMBER        	1
#define DRV_NVM_BUFFER_OBJECT_NUMBER  	5

#define DRV_NVM_INTERRUPT_MODE        	true
#define DRV_NVM_INTERRUPT_SOURCE      	INT_SOURCE_FLASH_CONTROL

#define DRV_NVM_MEDIA_SIZE              64
#define DRV_NVM_MEDIA_START_ADDRESS     0x9D070000

#define DRV_NVM_ROW_SIZE                512
#define DRV_NVM_PAGE_SIZE             	4096
#define DRV_NVM_PROGRAM_UNLOCK_KEY1     0xAA996655
#define DRV_NVM_PROGRAM_UNLOCK_KEY2     0x556699AA

#define DRV_NVM_ERASE_WRITE_ENABLE


#define DRV_NVM_SYS_FS_REGISTER





// *****************************************************************************
// *****************************************************************************
// Section: Middleware & Other Library Configuration
// *****************************************************************************
// *****************************************************************************


#define HAVE_MCAPI
#define NO_MD5
#define NO_SHA
#define NO_SHA256
#define NO_AES
#define NO_RSA
#define NO_HMAC

/*** USB Driver Configuration ***/


/* Enables Device Support */
#define DRV_USBFS_DEVICE_SUPPORT      true

/* Disable Device Support */
#define DRV_USBFS_HOST_SUPPORT      false

/* Maximum USB driver instances */
#define DRV_USBFS_INSTANCES_NUMBER    1


/* Interrupt mode enabled */
#define DRV_USBFS_INTERRUPT_MODE      true


/* Number of Endpoints used */
#define DRV_USBFS_ENDPOINTS_NUMBER    3




/*** USB Device Stack Configuration ***/


/* The USB Device Layer will not initialize the USB Driver */
#define USB_DEVICE_DRIVER_INITIALIZE_EXPLICIT

/* Maximum device layer instances */
#define USB_DEVICE_INSTANCES_NUMBER     1

/* EP0 size in bytes */
#define USB_DEVICE_EP0_BUFFER_SIZE      64










/* Maximum instances of CDC function driver */
#define USB_DEVICE_CDC_INSTANCES_NUMBER     1










/* CDC Transfer Queue Size for both read and
   write. Applicable to all instances of the
   function driver */
#define USB_DEVICE_CDC_QUEUE_DEPTH_COMBINED 3




// *****************************************************************************
// *****************************************************************************
// Section: TCPIP Stack Configuration
// *****************************************************************************
// *****************************************************************************
#define TCPIP_STACK_USE_IPV4
#define TCPIP_STACK_USE_TCP
#define TCPIP_STACK_USE_UDP
#define TCPIP_STACK_USE_ICMP_CLIENT
#define TCPIP_STACK_DRAM_SIZE		        		39250
#define TCPIP_STACK_DRAM_RUN_LIMIT		    		2048
#define TCPIP_STACK_TICK_RATE		        		5

#define TCPIP_STACK_MALLOC_FUNC		    	malloc

#define TCPIP_STACK_CALLOC_FUNC		    	calloc

#define TCPIP_STACK_FREE_FUNC		    	free

/* Console and Debug Symbols */


/* TCP/IP stack event notification */
#define TCPIP_STACK_USE_EVENT_NOTIFICATION


/*** ARP Configuration ***/
#define TCPIP_ARP_CACHE_ENTRIES                 		5
#define TCPIP_ARP_CACHE_DELETE_OLD		        	true
#define TCPIP_ARP_CACHE_SOLVED_ENTRY_TMO			1200
#define TCPIP_ARP_CACHE_PENDING_ENTRY_TMO			60
#define TCPIP_ARP_CACHE_PENDING_RETRY_TMO			2
#define TCPIP_ARP_CACHE_PERMANENT_QUOTA		    		50
#define TCPIP_ARP_CACHE_PURGE_THRESHOLD		    		75
#define TCPIP_ARP_CACHE_PURGE_QUANTA		    		1
#define TCPIP_ARP_CACHE_ENTRY_RETRIES		    		3
#define TCPIP_ARP_GRATUITOUS_PROBE_COUNT			1
#define TCPIP_ARP_TASK_PROCESS_RATE		        	2


/*** DHCP Configuration ***/
#define TCPIP_STACK_USE_DHCP_CLIENT
#define TCPIP_DHCP_TIMEOUT		        		10
#define TCPIP_DHCP_TASK_TICK_RATE	    			5
#define TCPIP_DHCP_CLIENT_CONNECT_PORT  			68
#define TCPIP_DHCP_SERVER_LISTEN_PORT				67
#define TCPIP_DHCP_CLIENT_ENABLED             			true



/*** DHCP Server Configuration ***/


/*** DNS Client Configuration ***/
#define TCPIP_STACK_USE_DNS
#define TCPIP_DNS_CLIENT_SERVER_TMO					60
#define TCPIP_DNS_CLIENT_TASK_PROCESS_RATE			200
#define TCPIP_DNS_CLIENT_CACHE_ENTRIES				5
#define TCPIP_DNS_CLIENT_CACHE_ENTRY_TMO			0
#define TCPIP_DNS_CLIENT_CACHE_PER_IPV4_ADDRESS		5
#define TCPIP_DNS_CLIENT_CACHE_PER_IPV6_ADDRESS		1
#define TCPIP_DNS_CLIENT_OPEN_ADDRESS_TYPE			IP_ADDRESS_TYPE_IPV4
#define TCPIP_DNS_CLIENT_CACHE_DEFAULT_TTL_VAL		1200
#define TCPIP_DNS_CLIENT_CACHE_UNSOLVED_ENTRY_TMO	10
#define TCPIP_DNS_CLIENT_LOOKUP_RETRY_TMO			5
#define TCPIP_DNS_CLIENT_MAX_HOSTNAME_LEN			32
#define TCPIP_DNS_CLIENT_DELETE_OLD_ENTRIES			true



/*** DNS Server Configuration ***/


/*** FTP Configuration ***/


/*** HTTP Configuration ***/
#define TCPIP_STACK_USE_HTTP_SERVER
#define TCPIP_HTTP_MAX_HEADER_LEN		    		15
#define TCPIP_HTTP_CACHE_LEN		        		"600"
#define TCPIP_HTTP_TIMEOUT		            		45
#define TCPIP_HTTP_MAX_CONNECTIONS		    		4
#define TCPIP_HTTP_MAX_TLS_CONNECTIONS		  		0
#define TCPIP_HTTP_DEFAULT_FILE		        		"index.htm"
#define TCPIP_HTTPS_DEFAULT_FILE	        		"index.htm"
#define TCPIP_HTTP_DEFAULT_LEN		        		10
#define TCPIP_HTTP_MAX_DATA_LEN		        		100
#define TCPIP_HTTP_MIN_CALLBACK_FREE				16
#define TCPIP_HTTP_SKT_TX_BUFF_SIZE		    		0
#define TCPIP_HTTP_SKT_RX_BUFF_SIZE		    		0
#define TCPIP_HTTP_TLS_SKT_TX_BUFF_SIZE		                0
#define TCPIP_HTTP_TLS_SKT_RX_BUFF_SIZE		                0
#define TCPIP_HTTP_CONFIG_FLAGS		        		1
#define TCPIP_HTTP_FILE_UPLOAD_ENABLE
#define TCPIP_HTTP_FILE_UPLOAD_NAME				"mpfsupload"
#define TCPIP_HTTP_USE_POST
#define TCPIP_HTTP_USE_COOKIES
#define TCPIP_STACK_USE_BASE64_DECODE
#define TCPIP_HTTP_USE_AUTHENTICATION
#define TCPIP_HTTP_TASK_RATE					33


/*** ICMP Configuration ***/



/*** iperf Configuration ***/



/*** NBNS Configuration ***/
#define TCPIP_STACK_USE_NBNS
#define TCPIP_NBNS_TASK_TICK_RATE   110


/*** SMTP Configuration ***/


/*** SNTP Configuration ***/
#define TCPIP_STACK_USE_SNTP_CLIENT
#define TCPIP_NTP_DEFAULT_IF		        		"PIC32INT"
#define TCPIP_NTP_VERSION             			    	4
#define TCPIP_NTP_DEFAULT_CONNECTION_TYPE   			IP_ADDRESS_TYPE_IPV4
#define TCPIP_NTP_EPOCH		                		2208988800ul
#define TCPIP_NTP_REPLY_TIMEOUT		        		6
#define TCPIP_NTP_MAX_STRATUM		        		15
#define TCPIP_NTP_TIME_STAMP_TMO				660
#define TCPIP_NTP_SERVER		        		"pool.ntp.org"
#define TCPIP_NTP_SERVER_MAX_LENGTH				30
#define TCPIP_NTP_QUERY_INTERVAL				600
#define TCPIP_NTP_FAST_QUERY_INTERVAL	    			14
#define TCPIP_NTP_TASK_TICK_RATE				1100
#define TCPIP_NTP_RX_QUEUE_LIMIT				2





/*** TCP Configuration ***/
#define TCPIP_TCP_MAX_SEG_SIZE_TX		        	1460
#define TCPIP_TCP_MAX_SEG_SIZE_RX_LOCAL		    		1460
#define TCPIP_TCP_MAX_SEG_SIZE_RX_NON_LOCAL			536
#define TCPIP_TCP_SOCKET_DEFAULT_TX_SIZE			512
#define TCPIP_TCP_SOCKET_DEFAULT_RX_SIZE			512
#define TCPIP_TCP_START_TIMEOUT_VAL		        	1000
#define TCPIP_TCP_DELAYED_ACK_TIMEOUT		    		100
#define TCPIP_TCP_FIN_WAIT_2_TIMEOUT		    		5000
#define TCPIP_TCP_KEEP_ALIVE_TIMEOUT		    		10000
#define TCPIP_TCP_CLOSE_WAIT_TIMEOUT		    		200
#define TCPIP_TCP_MAX_RETRIES		            		5
#define TCPIP_TCP_MAX_UNACKED_KEEP_ALIVES			6
#define TCPIP_TCP_MAX_SYN_RETRIES		        	3
#define TCPIP_TCP_AUTO_TRANSMIT_TIMEOUT_VAL			40
#define TCPIP_TCP_WINDOW_UPDATE_TIMEOUT_VAL			200
#define TCPIP_TCP_MAX_SOCKETS		            		10
#define TCPIP_TCP_TASK_TICK_RATE		        	5


/*** announce Configuration ***/
#define TCPIP_STACK_USE_ANNOUNCE
#define TCPIP_ANNOUNCE_MAX_PAYLOAD 	512
#define TCPIP_ANNOUNCE_TASK_RATE    333


/*** TCPIP MAC Configuration ***/
#define TCPIP_EMAC_TX_DESCRIPTORS				8
#define TCPIP_EMAC_RX_DESCRIPTORS				10
#define TCPIP_EMAC_RX_DEDICATED_BUFFERS				4
#define TCPIP_EMAC_RX_INIT_BUFFERS				    0
#define TCPIP_EMAC_RX_LOW_THRESHOLD				    1
#define TCPIP_EMAC_RX_LOW_FILL				        2
#define TCPIP_EMAC_RX_BUFF_SIZE		    			1536
#define TCPIP_EMAC_RX_MAX_FRAME		    			1536
#define TCPIP_EMAC_RX_FRAGMENTS		    			1
#define TCPIP_EMAC_ETH_OPEN_FLAGS       			\
                                                    TCPIP_ETH_OPEN_AUTO |\
                                                    TCPIP_ETH_OPEN_FDUPLEX |\
                                                    TCPIP_ETH_OPEN_HDUPLEX |\
                                                    TCPIP_ETH_OPEN_100 |\
                                                    TCPIP_ETH_OPEN_10 |\
                                                    TCPIP_ETH_OPEN_MDIX_AUTO |\
                                                    0
#define TCPIP_EMAC_PHY_CONFIG_FLAGS     			\
                                                    DRV_ETHPHY_CFG_AUTO | \
                                                    0                                                    
#define TCPIP_EMAC_PHY_LINK_INIT_DELAY  			500
#define TCPIP_EMAC_PHY_ADDRESS		    			1
#define TCPIP_EMAC_INTERRUPT_MODE        			true
#define DRV_ETHPHY_INSTANCES_NUMBER				1
#define DRV_ETHPHY_CLIENTS_NUMBER				1
#define DRV_ETHPHY_INDEX		        		1
#define DRV_ETHPHY_PERIPHERAL_ID				1
#define DRV_ETHPHY_NEG_INIT_TMO		    			1
#define DRV_ETHPHY_NEG_DONE_TMO		    			2000
#define DRV_ETHPHY_RESET_CLR_TMO				500
#define DRV_ETHMAC_INSTANCES_NUMBER				1
#define DRV_ETHMAC_CLIENTS_NUMBER				1
#define DRV_ETHMAC_INDEX	    	    			1
#define DRV_ETHMAC_PERIPHERAL_ID				1
#define DRV_ETHMAC_INTERRUPT_VECTOR				INT_VECTOR_ETHERNET
#define DRV_ETHMAC_INTERRUPT_SOURCE				INT_SOURCE_ETH_1
#define DRV_ETHMAC_POWER_STATE		    			SYS_MODULE_POWER_RUN_FULL

#define DRV_ETHMAC_INTERRUPT_MODE        			true


/*** TCP/IP Reboot Configuration ***/


/*** telnet Configuration ***/


/*** UDP Configuration ***/
#define TCPIP_UDP_MAX_SOCKETS		                	10
#define TCPIP_UDP_SOCKET_DEFAULT_TX_SIZE		    	512
#define TCPIP_UDP_SOCKET_DEFAULT_TX_QUEUE_LIMIT    	 	3
#define TCPIP_UDP_SOCKET_DEFAULT_RX_QUEUE_LIMIT			3
#define TCPIP_UDP_SOCKET_POOL_BUFFERS		        	4
#define TCPIP_UDP_SOCKET_POOL_BUFFER_SIZE		    	512

#define TCPIP_UDP_USE_TX_CHECKSUM             			true

#define TCPIP_UDP_USE_RX_CHECKSUM             			true

#define TCPIP_STACK_USE_ZEROCONF_LINK_LOCAL
#define TCPIP_ZC_LL_PROBE_WAIT 1
#define TCPIP_ZC_LL_PROBE_MIN 1
#define TCPIP_ZC_LL_PROBE_MAX 2
#define TCPIP_ZC_LL_PROBE_NUM 3
#define TCPIP_ZC_LL_ANNOUNCE_WAIT 2
#define TCPIP_ZC_LL_ANNOUNCE_NUM 2
#define TCPIP_ZC_LL_ANNOUNCE_INTERVAL 2
#define TCPIP_ZC_LL_MAX_CONFLICTS 10
#define TCPIP_ZC_LL_RATE_LIMIT_INTERVAL 60
#define TCPIP_ZC_LL_DEFEND_INTERVAL 10
#define TCPIP_ZC_LL_IPV4_LLBASE 0xa9fe0100
#define TCPIP_ZC_LL_IPV4_LLBASE_MASK 0x0000FFFF
#define TCPIP_ZC_LL_TASK_TICK_RATE 333

/*** Network Configuration Index 0 ***/
#define TCPIP_NETWORK_DEFAULT_INTERFACE_NAME 			"PIC32INT"
#define TCPIP_IF_PIC32INT
#define TCPIP_NETWORK_DEFAULT_HOST_NAME 			"MCHPBOARD_E_SERV"
#define TCPIP_NETWORK_DEFAULT_MAC_ADDR 				"01:23:45:67:89:ab"
#define TCPIP_NETWORK_DEFAULT_IP_ADDRESS 			"192.168.1.101"
#define TCPIP_NETWORK_DEFAULT_IP_MASK 				"255.255.0.0"
#define TCPIP_NETWORK_DEFAULT_GATEWAY	 			"192.168.1.1"
#define TCPIP_NETWORK_DEFAULT_DNS 				"192.168.1.1"
#define TCPIP_NETWORK_DEFAULT_SECOND_DNS 			"8.8.8.8"
#define TCPIP_NETWORK_DEFAULT_POWER_MODE 			"full"
#define TCPIP_NETWORK_DEFAULT_INTERFACE_FLAGS   		 TCPIP_NETWORK_CONFIG_IP_STATIC
#define TCPIP_NETWORK_DEFAULT_IPV6_ADDRESS 			0
#define TCPIP_NETWORK_DEFAULT_IPV6_PREFIX_LENGTH 		0
#define TCPIP_NETWORK_DEFAULT_IPV6_GATEWAY 		        0

/*** tcpip_cmd Configuration ***/


/*** TCPIP SYS FS Wrapper ***/
#define SYS_FS_MAX_PATH						80
#define LOCAL_WEBSITE_PATH_FS				"/mnt/mchpSite1"
#define LOCAL_WEBSITE_PATH					"/mnt/mchpSite1/"
#define SYS_FS_DRIVE						"FLASH"
#define SYS_FS_NVM_VOL						"/dev/nvma1"
#define SYS_FS_FATFS_STRING					"FATFS"
#define SYS_FS_MPFS_STRING					"MPFS2"

/* BSP LED Re-directs */
#define APP_TCPIP_LED_1 BSP_LED_1
#define APP_TCPIP_LED_2 BSP_LED_2
#define APP_TCPIP_LED_3 BSP_LED_3

#define APP_TCPIP_SWITCH_1 BSP_SWITCH_1
#define APP_TCPIP_SWITCH_2 BSP_SWITCH_2
#define APP_TCPIP_SWITCH_3 BSP_SWITCH_3


#endif // _SYSTEM_CONFIG_H
/*******************************************************************************
 End of File
*/

