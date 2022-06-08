obj-$(CONFIG_POWER_AVS)		+= avs/
obj-$(CONFIG_POWER_RESET)	+= reset/
obj-$(CONFIG_POWER_SUPPLY)	+= supply/
obj-$(CONFIG_ARCH_QCOM)		+= qcom/
obj-$(CONFIG_ARCH_QCOM)		+= qcom/
obj-$(CONFIG_POWER_SUPPLY)	+= supply/


ifeq ($(CONFIG_BRAND_SHOW_FLAG), realme)
subdir-ccflags-y += -DOPLUS_CHG_SUSPEND_UI_SOC_OPT
endif

#ifdef OPLUS_FEATURE_CHG_BASIC
obj-$(CONFIG_OPLUS_SDM670R_CHARGER) += oplus/
#endif