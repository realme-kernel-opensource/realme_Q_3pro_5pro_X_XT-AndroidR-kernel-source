ccflags-y += -Idrivers/media/platform/msm/camera/cam_utils
ccflags-y += -Idrivers/media/platform/msm/camera/cam_cpas/include
ccflags-y += -Idrivers/media/platform/msm/camera/cam_sensor_module/cam_sensor_io
ccflags-y += -Idrivers/media/platform/msm/camera/cam_sensor_module/cam_res_mgr
ccflags-y += -Idrivers/media/platform/msm/camera/cam_sensor_module/cam_sensor_utils
ccflags-y += -Idrivers/media/platform/msm/camera/cam_req_mgr
ccflags-y += -Idrivers/media/platform/msm/camera/cam_sensor_module/cam_cci
ccflags-y += -Idrivers/media/platform/msm/camera/cam_smmu/
#ifdef VENDOR_EDIT
ccflags-y += -Idrivers/media/platform/msm/camera/cam_sensor_module/cam_ois/lc898123f40_update
obj-$(CONFIG_SPECTRA_CAMERA) += lc898123f40_update/
#endif

obj-$(CONFIG_SPECTRA_CAMERA) += cam_ois_dev.o cam_ois_core.o cam_ois_soc.o
