# Cpanel-auto-SPF

The /usr/local/cpanel/Cpanel/SPF.pm file handles the SPF installation script that runs "/usr/local/cpanel/bin/spf_installer username" and is also used in cPanel > Email Authentication area for setting the IP for the SPF record. First, make a backup of the file:

Code:
```
cp /usr/local/cpanel/Cpanel/SPF.pm /usr/local/cpanel/Cpanel/SPF.pm.bak
```
Next, if you revise the lines that have this:

Code:
```
my $mainip     = Cpanel::DIp::getmainserverip();
```
To have this instead:
Code:
```
my $mainip     = 'externalIP#';
```
By replacing externalIP# with the IP such as let's say it is 192.12.12.12, you'd get the following:

Code:
```
my $mainip     = '192.12.12.12';
```
This will then use the hard-coded IP when installing the SPF records. This will occur for all parked, addon, and subdomains on the account for the SPF installation. Whenever the user in cPanel > Email Authentication area enables SPF records, the hard-coded IP will be used.
