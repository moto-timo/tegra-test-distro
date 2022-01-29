EXTRADEPS = "bootfiles"
EXTRADEPS_append_cryptparts = " custom-flash-layout"
EXTRADEPS_append_jetson-nano-devkit-sb = " custom-flash-layout"
EXTRADEPS_append_jetson-nano-devkit = " custom-flash-layout"
EXTRADEPS_append_jetson-nano-devkit-emmc = " custom-flash-layout"
EXTRADEPS_append_jetson-tx2-devkit = " custom-flash-layout"
EXTRADEPS_append_jetson-agx-xavier-devkit = " custom-flash-layout"
DEPENDS += "${EXTRADEPS}"
PARTITION_FILE_cryptparts = "${STAGING_DATADIR}/custom-flash-layout/${PARTITION_LAYOUT_TEMPLATE}"
PARTITION_FILE_jetson-tx2-devkit = "${STAGING_DATADIR}/custom-flash-layout/${PARTITION_LAYOUT_TEMPLATE}"
PARTITION_FILE_jetson-nano-devkit-emmc = "${STAGING_DATADIR}/custom-flash-layout/${PARTITION_LAYOUT_TEMPLATE}"
PARTITION_FILE_jetson-agx-xavier-devkit = "${STAGING_DATADIR}/custom-flash-layout/${PARTITION_LAYOUT_TEMPLATE}"
MENDER_PARTITION_FILE_cryptparts = "${STAGING_DATADIR}/custom-flash-layout/${PARTITION_LAYOUT_TEMPLATE}"
PARTITION_FILE_jetson-nano-devkit-sb = "${STAGING_DATADIR}/custom-flash-layout/${PARTITION_LAYOUT_TEMPLATE}"
PARTITION_FILE_jetson-nano-devkit = "${STAGING_DATADIR}/custom-flash-layout/${PARTITION_LAYOUT_TEMPLATE}"
MENDER_PARTITION_FILE_jetson-nano-devkit-sb = "${STAGING_DATADIR}/custom-flash-layout/${PARTITION_LAYOUT_TEMPLATE}"
CBOOTOPTION_FILE = "${STAGING_DATADIR}/bootfiles/cbo.dts"

do_install_append_cryptparts() {
    rm ${D}${datadir}/tegraflash/eks.img
    install -m 0644 ${STAGING_DATADIR}/bootfiles/eks.img ${D}${datadir}/tegraflash/
}
