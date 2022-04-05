# Change configs based on https://www.lauterbach.com/frames.html?referencecards.html

FILESEXTRAPATHS:prepend := "${THISDIR}/linux-tegra:"

SRC_URI:append = " file://kernel-settings-for-lauterbach.cfg"

# Lauterbach need the unstripped vmlinux to enable os awareness
# So we can't use KERNEL_ALT_IMAGETYPE in machine.
# Instead just copy from build folder to deploy below.
copy_vmlinux_to_deploy() {
    cp ${B}/vmlinux $deployDir/vmlinux-${KERNEL_IMAGE_NAME}
    ln -sf vmlinux-${KERNEL_IMAGE_NAME} $deployDir/vmlinux
}
do_deploy:append:() {
    copy_vmlinux_to_deploy
}
