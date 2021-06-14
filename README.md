# Admin sites AMI

Admin sites AMI based on RHEL 6.10 Base AMI.

Things this does:

- Uses RHEL6 base for the packer build
- Creates users, groups and directories
- Downloads and moves any required dependencies such as perl
- Contains config files for Apache for each site
- Contains deployment scripts for each site to be used in userdata.
