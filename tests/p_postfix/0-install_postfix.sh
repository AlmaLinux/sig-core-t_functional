#!/bin/bash
# Author: Athmane Madjoudj <athmanem@gmail.com>

t_Log "Running $0 - remove unused MTAs and install postfix"

# Remove other MTAs
t_ServiceControl sendmail stop
t_ServiceControl exim stop
sleep 3
t_RemovePackage sendmail exim

# Postfix
t_InstallPackage postfix
t_ServiceControl postfix start
