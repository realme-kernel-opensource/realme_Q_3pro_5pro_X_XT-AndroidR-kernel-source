// SPDX-License-Identifier: GPL-2.0-only
/*
 * Copyright (C) 2018-2020 Oplus. All rights reserved.
 */
#include <linux/uaccess.h>
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/kernel.h>
#include <linux/proc_fs.h>
#include <linux/fs.h>
#include <linux/seq_file.h>
#include <linux/io.h>
#include <linux/err.h>

#include "oppo_pmic_info.h"

#ifdef CONFIG_QCOM_SMEM
#include <linux/soc/qcom/smem.h>
#elif CONFIG_MSM_SMEM
#include <soc/qcom/smem.h>
#endif

#define SMEM_PMIC_INFO	134

static struct PMICHistoryStruct *format = NULL;

void init_pmic_history_smem(void)
{
#ifdef CONFIG_QCOM_SMEM
	size_t smem_size=0;

	format = qcom_smem_get(QCOM_SMEM_HOST_ANY,
			SMEM_PMIC_INFO,
			&smem_size);
#elif CONFIG_MSM_SMEM
	unsigned int  smem_size;

	format = smem_get_entry(SMEM_PMIC_INFO,
		&smem_size,
		0,
		SMEM_ANY_HOST_FLAG);
#endif

    if (IS_ERR(format) || !smem_size) {
        format = NULL;
    }
}


struct PMICHistoryStruct *get_pmic_history(void)
{
        if (format == NULL) {
            init_pmic_history_smem();
        }
        return format;
}

MODULE_DESCRIPTION("OPPO ocp status");
MODULE_LICENSE("GPL v2");
MODULE_AUTHOR("Lee <>");