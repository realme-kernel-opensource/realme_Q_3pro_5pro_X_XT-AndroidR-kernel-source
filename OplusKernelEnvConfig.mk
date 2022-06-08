# Copyright (C), 2008-2030, OPPO Mobile Comm Corp., Ltd
### All rights reserved.
###
### File: - OplusKernelEnvConfig.mk
### Description:
###     you can get the oplus feature variables set in android side in this file
###     this file will add global macro for common oplus added feature
###     BSP team can do customzation by referring the feature variables
### Version: 1.0
### Date: 2020-03-18
### Author: Liang.Sun
###
### ------------------------------- Revision History: ----------------------------
### <author>                        <date>       <version>   <desc>
### ------------------------------------------------------------------------------
### Liang.Sun@TECH.Build              2020-03-18   1.0         Create this moudle
##################################################################################

-include ./oplus_native_features.mk

###ifdef OPLUS_ARCH_INJECT
OPLUS_CONNECTIVITY_NATIVE_FEATURE_SET :=


ifeq ($(OPLUS_FEATURE_WIFI_MTUDETECT), yes)
OPLUS_CONNECTIVITY_NATIVE_FEATURE_SET += OPLUS_FEATURE_WIFI_MTUDETECT
endif

ifeq ($(OPLUS_FEATURE_WIFI_LIMMITBGSPEED), yes)
OPLUS_CONNECTIVITY_NATIVE_FEATURE_SET += OPLUS_FEATURE_WIFI_LIMMITBGSPEED
endif


$(foreach myfeature,$(OPLUS_CONNECTIVITY_NATIVE_FEATURE_SET),\
    $( \
        $(eval KBUILD_CFLAGS += -D$(myfeature)) \
        $(eval KBUILD_CPPFLAGS += -D$(myfeature)) \
        $(eval CFLAGS_KERNEL += -D$(myfeature)) \
        $(eval CFLAGS_MODULE += -D$(myfeature)) \
    ) \
)
###endif OPLUS_ARCH_INJECT

ALLOWED_MCROS := OPLUS_FEATURE_QCOM_PMICWD  \
OPLUS_FEATURE_PHOENIX  \
OPLUS_FEATURE_AGINGTEST  \
OPLUS_FEATURE_DATA_EVAL  \
OPLUS_FEATURE_DUMPDEVICE  \
OPLUS_FEATURE_SAUPWK  \
OPLUS_FEATURE_SAU  \
OPLUS_FEATURE_HEALTHINFO  \
OPLUS_BUG_COMPATIBILITY \
OPLUS_BUG_STABILITY \
OPLUS_BUG_DEBUG \
OPLUS_ARCH_INJECT \
OPLUS_ARCH_EXTENDS \
OPLUS_FEATURE_SSR  \
OPLUS_FEATURE_MM_FEEDBACK  \
CONFIG_OPLUS_FEATURE_MM_FEEDBACK \
OPLUS_FEATURE_AUDIO_FTM \
OPLUS_FEATURE_KTV \
OPLUS_FEATURE_SPEAKER_MUTE \
VENDOR_EDIT \
COLOROS_EDIT \
OPLUS_FEATURE_MODEM_MINIDUMP \
OPLUS_FEATURE_UIFIRST  \
OPLUS_FEATURE_CHG_BASIC  \
OPLUS_FEATURE_LOWMEM_DBG \
OPLUS_FEATURE_VIRTUAL_RESERVE_MEMORY \
OPLUS_FEATURE_GPU_MINIDUMP  \
OPLUS_FEATURE_POWERINFO_STANDBY \
OPLUS_FEATURE_POWERINFO_STANDBY_DEBUG \
OPLUS_FEATURE_POWERINFO_RPMH \
OPLUS_FEATURE_THEIA \
OPLUS_FEATURE_HANS_FREEZE  \
OPLUS_FEATURE_LOWMEM_DBG \
OPLUS_FEATURE_DUMPDEVICE


$(foreach myfeature,$(ALLOWED_MCROS),\
         $(warning make $(myfeature) to be a macro here) \
         $(eval KBUILD_CFLAGS += -D$(myfeature)) \
         $(eval KBUILD_CPPFLAGS += -D$(myfeature)) \
         $(eval CFLAGS_KERNEL += -D$(myfeature)) \
         $(eval CFLAGS_MODULE += -D$(myfeature)) \
)

ifeq ($(OPLUS_FEATURE_QCOM_PMICWD),yes)
export OPLUS_FEATURE_QCOM_PMICWD=yes
export CONFIG_OPLUS_FEATURE_QCOM_PMICWD=y
KBUILD_CFLAGS += -DCONFIG_OPLUS_FEATURE_QCOM_PMICWD
endif

ifeq ($(OPLUS_FEATURE_DUMPDEVICE),yes)
export CONFIG_OPLUS_FEATURE_DUMP_DEVICE_INFO=y
KBUILD_CFLAGS += -DCONFIG_OPLUS_FEATURE_DUMP_DEVICE_INFO
endif

ifeq ($(OPLUS_FEATURE_SAUPWK),yes)
export CONFIG_OPLUS_FEATURE_SAUPWK=y
KBUILD_CFLAGS += -DCONFIG_OPLUS_FEATURE_SAUPWK
endif

ifeq ($(OPLUS_FEATURE_BRAND_SHOW_FLAG),realme)
export CONFIG_BRAND_SHOW_FLAG=realme
KBUILD_CFLAGS += -DCONFIG_BRAND_SHOW_FLAG
endif

ifeq ($(OPLUS_FEATURE_SHIPPING_API_LEVEL),28)
export CONFIG_SHIPPING_API_LEVEL=28
KBUILD_CFLAGS += -DCONFIG_SHIPPING_API_LEVEL
endif

ifeq ($(OPLUS_FEATURE_SECURE_KEVENTUPLOAD),yes)
export CONFIG_OPLUS_KEVENT_UPLOAD=y
KBUILD_CFLAGS += -DCONFIG_OPLUS_KEVENT_UPLOAD
KBUILD_CPPFLAGS += -DCONFIG_OPLUS_KEVENT_UPLOAD
CFLAGS_KERNEL += -DCONFIG_OPLUS_KEVENT_UPLOAD
CFLAGS_MODULE += -DCONFIG_OPLUS_KEVENT_UPLOAD
endif

