declare -p | sudo tee "${NIX_SHIM_DIR}"/vars.txt >/dev/null

declare -g NIX_CHROOT="${HOME}/chroot-ubuntu"
declare -g NIX_CHROOT_TARBALL='/tmp/focal.tgz'

mkdir "${NIX_CHROOT}"

time sudo debootstrap --make-tarball="${NIX_CHROOT_TARBALL}" focal "${NIX_CHROOT}"       # real    1m32.023s
time sudo debootstrap --unpack-tarball="${NIX_CHROOT_TARBALL}" focal "${NIX_CHROOT}"     # real    3m34.842s

sudo mkdir -p "${NIX_CHROOT}/workspaces/"
sudo mount --bind "/workspaces/" "${NIX_CHROOT}/workspaces/"
sudo mount --bind "/proc/" "${NIX_CHROOT}/proc/"
sudo mount --bind "/dev/pts/" "${NIX_CHROOT}/dev/pts/"
mount -l | grep chroot
