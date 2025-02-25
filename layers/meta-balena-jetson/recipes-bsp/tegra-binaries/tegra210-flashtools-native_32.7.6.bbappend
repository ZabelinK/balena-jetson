FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = " file://P3448_A00_lpddr4_204Mhz_P987.cfg"

do_preconfigure:append () {
    # Copy our custom file over the original
    cp ${WORKDIR}/P3448_A00_lpddr4_204Mhz_P987.cfg \
       ${S}/bootloader/t210ref/BCT/P3448_A00_lpddr4_204Mhz_P987.cfg
}