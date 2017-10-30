/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
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


// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************


#define __APP_C__ 
#include "app.h"
#include "ext.h" 


// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

int16_t wMaxGet, wMaxPut, wCurrentChunk;
uint8_t AppBuffer[4];
uint8_t AppBuffer2[4];
IPV4_ADDR addrw;
char pcip[]="192.168.1.102";
float Napiecie_int;
float Napiecie_to_fix;
int sxed ;
char portc[4];
uint16_t port;
char check[4]; 
char charbuff[4];
 
BSP_LED_STATE LEDstate1 = BSP_LED_STATE_OFF;
BSP_LED_STATE LEDstate2 = BSP_LED_STATE_OFF;
BSP_LED_STATE LEDstate3 = BSP_LED_STATE_OFF;
 // *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/
APP_DATA __attribute__ ((coherent, aligned(4))) appData;

APP_DATA appData;





// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback funtions.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary local functions.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************


void Heartbeat(void);
void Singleshot( uintptr_t context, uint32_t currTick );


void APP_Initialize ( void )
{
    appData.state =APP_TCPIP_WAIT_INIT;

}




void APP_Tasks ( void )
{
   
    
    static SYS_TMR_HANDLE blinkLedTMRHandle;
    static SYS_TMR_HANDLE res;
 
   
    /* Check the application's current state. */
    switch ( appData.state )
    {
        SYS_STATUS          tcpipStat;
        const char          *netName, *netBiosName;
        static IPV4_ADDR    dwLastIP[2] = { {-1}, {-1} };
        IPV4_ADDR           ipAddr;
        int                 i, nNets;
        TCPIP_NET_HANDLE    netH;
       
        case APP_TCPIP_WAIT_INIT:
            
             if (SYS_FS_Mount(SYS_FS_NVM_VOL,LOCAL_WEBSITE_PATH_FS, MPFS2,0, NULL) == 0)
            {
                blinkLedTMRHandle = SYS_TMR_CallbackPeriodic(500,1,(SYS_TMR_CALLBACK)&Heartbeat);
                //zapis = SYS_TMR_CallbackPeriodic(1000,2,(SYS_TMR_CALLBACK)&Zapisusb);
                
            }else
            {
                //Waiting to Mount
            }
            
            tcpipStat = TCPIP_STACK_Status(sysObj.tcpip);
            if(tcpipStat < 0)
            {   // some error occurred
                SYS_CONSOLE_MESSAGE(" APP: TCP/IP stack initialization failed!\r\n");
                //appData.state = APP_TCPIP_ERROR;
                SYS_RESET_SoftwareReset();
            }
            else if(tcpipStat == SYS_STATUS_READY)
            {
                // now that the stack is ready we can check the 
                // available interfaces 
                nNets = TCPIP_STACK_NumberOfNetworksGet();
                for(i = 0; i < nNets; i++)
                {

                    netH = TCPIP_STACK_IndexToNet(i);
                    netName = TCPIP_STACK_NetNameGet(netH);
                    netBiosName = TCPIP_STACK_NetBIOSName(netH);


                }
                appData.state = APP_TCPIP_WAIT_FOR_IP;

            }
            break;


        case APP_TCPIP_WAIT_FOR_IP:
            // if the IP address of an interface has changed
            // display the new value on the system console
            nNets = TCPIP_STACK_NumberOfNetworksGet();

            for (i = 0; i < nNets; i++)
            {
                netH = TCPIP_STACK_IndexToNet(i);
                ipAddr.Val = TCPIP_STACK_NetAddress(netH);
                if(dwLastIP[i].Val != ipAddr.Val)
                {
                    dwLastIP[i].Val = ipAddr.Val;

                    SYS_CONSOLE_MESSAGE(TCPIP_STACK_NetNameGet(netH));
                    SYS_CONSOLE_MESSAGE(" IP Address: ");
                    SYS_CONSOLE_PRINT("%d.%d.%d.%d \r\n", ipAddr.v[0], ipAddr.v[1], ipAddr.v[2], ipAddr.v[3]);
                    if (ipAddr.v[0] != 0 && ipAddr.v[0] != 169) // Wait for a Valid IP
                    {
                        
                        appData.state = APP_TCPIP_OPENING_SERVER;
                        SYS_CONSOLE_MESSAGE("Waiting for command type: sendudppacket\r\n");

                    }
                }
            }
        break;
        

        case APP_TCPIP_OPENING_SERVER:
        
            
            appData.serverSocket = TCPIP_UDP_ServerOpen(IP_ADDRESS_TYPE_IPV4, 8888, 0);

            if (appData.serverSocket == INVALID_SOCKET)
            {
                SYS_CONSOLE_MESSAGE("Couldn't open server socket\r\n");
                appData.state = APP_TCPIP_ERROR;            
                break;
            }
            appData.state=APP_TCPIP_WAIT_FOR_CONNECTION;
        
        break;
        
        case APP_TCPIP_WAIT_FOR_CONNECTION:
        {
            if (!TCPIP_UDP_IsConnected(appData.serverSocket))
            {
                return;
            }
            else
            {
                // We got a connection
                appData.state = APP_TCPIP_SERVING_CONNECTION;
                SYS_CONSOLE_MESSAGE("Server Received a connection\r\n");
            }
        }
        break;
    
        case APP_TCPIP_SERVING_CONNECTION:
        {
             if (!TCPIP_UDP_IsConnected(appData.serverSocket))
            {
                
                appData.state = APP_TCPIP_CLOSING_CONNECTION;
                SYS_CONSOLE_MESSAGE("Server Connection was closed\r\n");
                break;
            }
             

            memset(AppBuffer, 0, 4);
            wMaxGet = TCPIP_UDP_GetIsReady(appData.serverSocket);	// Get UDP RX FIFO byte count
            wMaxPut = TCPIP_TCP_PutIsReady(appData.serverSocket);	// Get TCP TX FIFO free space
            
            if (wMaxGet == 0)
            {
                

                break;
            }
            
            if (wMaxPut < wMaxGet)
            {
                wMaxGet = wMaxPut;
            }
            
            int rxed = TCPIP_UDP_ArrayGet(appData.serverSocket, AppBuffer, 4);
            
            appData.state = APP_TCPIP_CLOSING_CONNECTION;

            TCPIP_UDP_Discard(appData.serverSocket);
        }
        break;
        
        case APP_TCPIP_CLOSING_CONNECTION:
        {
			// Close the socket connection.
            TCPIP_UDP_Close(appData.serverSocket);
            
            TCPIP_Helper_StringToIPAddress(&pcip[0], &addrw);
            strcpy(portc, "8890");
            port = atoi(portc);
            
            appData.state = APP_TCPIP_TAKING_CONNECTION;

        }
        break;
        
        case APP_TCPIP_TAKING_CONNECTION:
        {

            appData.clientSocket = TCPIP_UDP_ClientOpen(IP_ADDRESS_TYPE_IPV4, port, (IP_MULTI_ADDRESS*) &addrw);
            TCPIP_UDP_PutIsReady(appData.clientSocket);
            if (appData.clientSocket == INVALID_SOCKET)
            {
               SYS_CONSOLE_MESSAGE("Couldn't open client socket\r\n");
               appData.state = APP_TCPIP_ERROR;            
            }
            appData.state =APP_TCPIP_SOCKETING;
        }
        break;
        
        case APP_TCPIP_SOCKETING:
        {
             TCPIP_UDP_ArrayPutRaw(appData.clientSocket, (uint8_t*) AppBuffer, strlen(AppBuffer)); //LOL
        
        appData.state = APP_TCPIP_SENDING;            
        }
        
         case APP_TCPIP_SENDING:
        {
            TCPIP_UDP_Flush(appData.clientSocket);  
            appData.state = APP_TCPIP_CLOSING_CONNECTION2;            
        }
        case APP_TCPIP_CLOSING_CONNECTION2:
        {
            TCPIP_UDP_Close(appData.clientSocket);

            appData.state = APP_TCPIP_OPENING_SERVER2;

        }
        break;
        
        
        case APP_TCPIP_OPENING_SERVER2:
        
            
            appData.serverSocket = TCPIP_UDP_ServerOpen(IP_ADDRESS_TYPE_IPV4, 8889, 0);


            if (appData.serverSocket == INVALID_SOCKET)
            {
                SYS_CONSOLE_MESSAGE("Couldn't open server socket\r\n");         
                break;
            }
            appData.state=APP_TCPIP_WAIT_FOR_CONNECTION2;
        
        break;
        
        case APP_TCPIP_WAIT_FOR_CONNECTION2:
        {
            if (!TCPIP_UDP_IsConnected(appData.serverSocket))
            {
                return;
            }
            else
            {
                // We got a connection
                appData.state = APP_TCPIP_SERVING_CONNECTION2;
                SYS_CONSOLE_MESSAGE("Server Received a connection\r\n");
            }
        }
        break;
        
        case APP_TCPIP_SERVING_CONNECTION2:
        {
             if (!TCPIP_UDP_IsConnected(appData.serverSocket))
            {
                appData.state = APP_TCPIP_CLOSING_CONNECTION3;
                SYS_CONSOLE_MESSAGE("Server Connection was closed\r\n");
                break;
            }

            memset(AppBuffer2, 0, 4);
            wMaxGet = TCPIP_UDP_GetIsReady(appData.serverSocket);	// Get UDP RX FIFO byte count
            wMaxPut = TCPIP_TCP_PutIsReady(appData.serverSocket);	// Get TCP TX FIFO free space
            
            if (wMaxGet == 0)
            {

                break;

            }
            
            if (wMaxPut < wMaxGet)
            {
                wMaxGet = wMaxPut;
            }
            wCurrentChunk = sizeof(AppBuffer2);

            int rxed = TCPIP_UDP_ArrayGet(appData.serverSocket, AppBuffer2, 4);
            memset(check, 0, 4);
            strcpy(check, "1111");
            
            
            SYS_CONSOLE_PRINT("\tReceived a message of '%s' and length %d\r\n", AppBuffer2, rxed);
            if(!(strcmp( AppBuffer, check )))
            {
                appData.state = APP_TCPIP_ERROR;
            }
            else
            {

            char charbuff[4];
            charbuff[0] = AppBuffer[0];
            charbuff[1] = AppBuffer[1];
            charbuff[2] = AppBuffer[2];
            charbuff[3] = AppBuffer[3];
            //charbuff[4] = AppBuffer[4];
            //charbuff[5] = AppBuffer[5];               
                
            Napiecie_to_fix=atoi((const char *)charbuff);                
            Napiecie_int=Napiecie_to_fix*90/522+90;
                
            appData.state = APP_TCPIP_CLOSING_CONNECTION3;
  
            TCPIP_UDP_Discard(appData.serverSocket);

            }
        }
        break;
        
        case APP_TCPIP_CLOSING_CONNECTION3:
        {

            TCPIP_UDP_Close(appData.clientSocket);

            appData.state = APP_IDLE;

        }
        break;
        
        case APP_IDLE:
            /* The appliction comes here when the demo
             * has completed successfully. Switch on
             * green LED. */
          
            LEDstate3 ^= BSP_LED_STATE_ON;
            BSP_LEDStateSet(APP_TCPIP_LED_3, LEDstate3);   
            appData.state = APP_TCPIP_OPENING_SERVER;
            
        break;
        
        case APP_TCPIP_ERROR:
            
            //TCPIP_UDP_Discard(appData.serverSocket);
            TCPIP_UDP_Close(appData.serverSocket);            
            //TCPIP_UDP_Discard(appData.serverSocket);
            TCPIP_UDP_Close(appData.clientSocket);
            
            if(BSP_LED_STATE_OFF == BSP_LEDStateGet(APP_TCPIP_LED_1))
            {
                BSP_LEDStateSet(APP_TCPIP_LED_1,  BSP_LED_STATE_ON);
            }
            else
            {
                BSP_LEDStateSet(APP_TCPIP_LED_1,  BSP_LED_STATE_OFF);
            }    
         
            res=SYS_TMR_CallbackSingle (100, 0, (SYS_TMR_CALLBACK)&Singleshot); 

            
            
        break;
            
        default:
             appData.state = APP_TCPIP_ERROR; 
        break;
    }
}

void Heartbeat(void)
{
                LEDstate2 ^= BSP_LED_STATE_ON;
                // This is a temporary work-around for Harmony 1.1 release
                BSP_LEDStateSet(APP_TCPIP_LED_2, LEDstate2);
}

void Singleshot( uintptr_t context, uint32_t currTick )
{
            
    appData.state = APP_TCPIP_OPENING_SERVER;      
    //SYS_RESET_SoftwareReset();

           
}

//int  InitRng(void* in)
//{
//    return wc_InitRng(in);
//}


/*******************************************************************************
 End of File
 */
