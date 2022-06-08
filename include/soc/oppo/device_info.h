/**********************************************************************
** Copyright 2008-2013 OPPO Mobile Comm Corp., Ltd, All rights reserved.
** VENDOR_EDIT :                                                                                             
** File : - SDM660_8.0_LA_2.0\android\kernel\msm-4.4\include\soc\device_info.h
** ModuleName:devinfo
** Author : wangjc
** Version : 1.0
** Date : 2013-10-23
** Descriptio : add interface to get device information.
** History :
**                  <time>         <author>             <desc>
**                2013-10-23	    wangjc	            init
**********************************************************************/

#ifndef _DEVICE_INFO_H
#define _DEVICE_INFO_H


/*dram type*/
/*
enum{
        DRAM_TYPE0 = 0,
        DRAM_TYPE1,
        DRAM_TYPE2,
        DRAM_TYPE3,
        DRAM_UNKNOWN,
};
*/

enum{
        MAINBOARD_RESOURCE0 = 0,
        MAINBOARD_RESOURCE1 = 1,
        MAINBOARD_RESOURCE2 = 2,
};

enum OPPO_PROJECT {
        OPPO_18041 = 18041,
        OPPO_18081 = 18081,
        OPPO_18085 = 18085,
        OPPO_18181 = 18181,
        OPPO_18097 = 18097,
        OPPO_18099 = 18099,
        OPPO_18383 = 18383,
        OPPO_19651 = 19651,
        OPPO_19691 = 19691,
        OPPO_18621 = 18621,
};

enum {
        OPERATOR_OPEN_MARKET                = 0x01,
        OPERATOR_CHINA_MOBILE               = 0x02,
        OPERATOR_FOREIGN                    = 0x05,
/*#ifdef VENDOR_EDIT*/
        OPERATOR_FOREIGN_WCDMA              = 0x06,   /*qifeng.liu 2014.08.07 FOR MAC*/
        OPERATOR_FOREIGN_RESERVED           = 0x07,    /*shaoming 2014/10/04 add for 14085's dual sim version*/
        OPERATOR_ALL_CHINA_CARRIER          = 0x08,    /*instead of TELECOM CARRIER because of history Tong.han@Bsp.Group.Tp add for all china carrier phone, 2015/03/23*/
        OPERATOR_ALL_CHINA_CARRIER_MOBILE   = 0x09,    /*rendong.shi@Bsp.Group.Tp add for all china carrier MOBILE phone, 2016/01/07*/
        OPERATOR_ALL_CHINA_CARRIER_UNICOM   = 0x0A,    /*rendong.shi@Bsp.Group.Tp add for all china carrier UNICOM  phone, 2016/01/07*/
        OPERATOR_FOREIGN_EUROPE             = 0x0B,    //wanghao@Bsp.Group.Tp add for foreign europe  phone, 2018/07/14
};

struct manufacture_info {
        char *version;
        char *manufacture;
        char *fw_path;
};

int register_device_proc(char *name, char *version, char *manufacture);
int register_devinfo(char *name, struct manufacture_info *info);


#endif /*_DEVICE_INFO_H*/
