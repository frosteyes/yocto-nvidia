# Change configs based on https://www.lauterbach.com/frames.html?referencecards.html

FILESEXTRAPATHS:prepend := "${THISDIR}/linux-tegra:"

SRC_URI:append = " file://kernel-settings-for-lauterbach.cfg"
