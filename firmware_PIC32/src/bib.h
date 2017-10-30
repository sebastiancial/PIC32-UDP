/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.h

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#ifndef _BIB_H    /* Guard against multiple inclusion */
#define _BIB_H


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "system_config.h"
#include "system_definitions.h"
#include "system/random/sys_random.h"
#include "../framework/tcpip/udp.h"

int Nap_odb()
{
    int Napiecie_int;  
    Napiecie_int = (int)SYS_RANDOM_PseudoGet();
        
    return Napiecie_int; 
        
}


char *Nap()
{
 
   

    //for(;;)
    //{
        uint8_t *Napiecie_str;
        // Generacja losowych liczb
        //int Napiecie_int=Nap_odb()/10000000;
       // char napi[4];
       //  sprintf(napi,"%d",Napiecie_int);
        //Napiecie_str=napi;
        //Koniec Generacji
        
       UDP_PORT port=8889; 
       const char* addr_str="169.254.67.115";
       IPV4_ADDR* addr;
       TCPIP_Helper_StringToIPAddress( addr_str,  addr);
       uint16_t wDataLen=8;
       UDP_SOCKET hUDP;
       
    //próba udp
    //TCPIP_UDP_ServerOpen(IP_ADDRESS_TYPE_IPV4,  8889,(IP_MULTI_ADDRESS*) &addr);
    hUDP=TCPIP_UDP_ClientOpen(IP_ADDRESS_TYPE_IPV4, 8890, (IP_MULTI_ADDRESS*) &addr);
    TCPIP_UDP_GetIsReady(hUDP);
    TCPIP_UDP_ArrayGet(hUDP, Napiecie_str, wDataLen);
    TCPIP_UDP_Discard( hUDP);
    SYS_CONSOLE_PRINT("%s", Napiecie_str);
    TCPIP_UDP_Close(hUDP);
        
    //koniec próba udp    
      
        
        
        return Napiecie_str; 
    
    //}
       
}

/*
int Nap_odb()
{
    
    SYS_MODULE_OBJ  objectHandle;
    SYS_TMR_INIT    initConfig;

    // Populate the timer initialization structure
    initConfig.moduleInit.value     = SYS_MODULE_POWER_RUN_FULL;
    initConfig.drvIndex             = DRV_TMR_INDEX_0;
    initConfig.tmrFreq              = 1000;    
      
int Napiecie_int;
uint8_t stam;
bool handle;


switch(stam)
{
    case 0:
        objectHandle=SYS_TMR_Initialize (SYS_TMR_INDEX_0, (SYS_MODULE_INIT*)&initConfig);
        handle = SYS_TMR_DelayMS (500);
        stam++;
    break;
    
    case 1:
        if (true == SYS_TMR_DelayStatusGet(handle))
        {
            stam++;
            Napiecie_int = (int)SYS_RANDOM_PseudoGet();
        
            return Napiecie_int; 
            SYS_TMR_Deinitialize(objectHandle);
   
        }
    else
    {
            stam++;
    }
break;
    
}  
    
}
*/




#endif /* _EXAMPLE_FILE_NAME_H */



/* *****************************************************************************
 End of File
 */
