# Login

Some scripts for how I set up my laptops. Full disk encryption, decrypted
on startup via TPM, and fingerprint readers.

Very much stolen from the internet, I am not an authority here.

## Decrypt on startup

```bash
# Clevis is the tool that does this
sudo apt install clevis clevis-tpm2 clevis-luks clevis-initramfs clevis-systemd
# Figure out which partition is encrypted
lsblk
# Bind your LUKS partition to the TPM2 chip using PCR measurements
# (like PCRs 0, 1, 2, 3, and 7 for secure boot and system state):
sudo clevis luks bind -d /dev/nvme0n1p3 tpm2 '{"pcr_bank":"sha256","pcr_ids":"0,1,2,3,7"}'
# Update your initial RAM filesystem so the boot
# process includes the decryption hooks:
sudo update-initramfs -u -k all
# Enable the Clevis password-prompt helper service:
sudo systemctl enable clevis-luks-askpass.path
```

## Fingerprint reader

```bash
sudo apt install fprintd libpam-fprintd
fprintd-enroll
sudo pam-auth-update
```
