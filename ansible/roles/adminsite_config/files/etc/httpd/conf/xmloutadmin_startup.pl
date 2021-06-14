warn "Executing xmloutadmin_startup.pl...\n";
sleep 1;

# Extend @INC if needed
use lib qw(/home/xmloutadm/MODULES/ /home/xmloutadm/htdocs/chd3admin/handlers);

# Make sure we are in a sane environment.
$ENV{MOD_PERL} or die "not running under mod_perl!";

### Recycle large Apache processes

use Apache2::SizeLimit;
$Apache2::SizeLimit::MAX_PROCESS_SIZE  = 50000; # 50MB
#$Apache2::SizeLimit::MIN_SHARE_SIZE    = 6000;  # 6MB
#$Apache2::SizeLimit::MAX_UNSHARED_SIZE = 5000;  # 5MB

$Apache2::SizeLimit::CHECK_EVERY_N_REQUESTS = 10;

# Place common modules here to be pre-loaded by the mod_perl enabled server
use ModPerl::Registry;
use Socket;

#use CGI;

# Set some ENV variables for Perl
#
warn "Setting Orcale Environment Variables\n";
$ENV{ORACLE_HOME}="/usr/lib/oracle/11.2/client64";
$ENV{NLS_LANG}="ENGLISH_UNITED KINGDOM.UTF8";
$ENV{TNS_ADMIN}="/usr/lib/oracle/11.2/client64/lib/";
$ENV{LC_ALL}="en_GB.UTF-8";

warn "xmloutadmin_startup.pl - done\n";
1;

