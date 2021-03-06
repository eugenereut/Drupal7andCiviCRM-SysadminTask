#!/bin/bash
# setup.sh - bash script runs Ansible playbooks
#
# maintained by:  Eugene Reut <eugene.reut@gmail.com>
# Please ALWAYS copy eugene.reut@gmail.com
# on emails.
#
# Copyright 2018 Eugene Reut
#
# This file is part of Devops/Sysadmin Task.
#
#    Devops/Sysadmin Task is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    Devops/Sysadmin Task is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with Devops/Sysadmin Task.  If not, see <https://www.gnu.org/licenses/>.

play1="frontend_server-init.yml"
play2="db_server-init.yml"
play3="db-users_create.yml"
play4="drupal-civicrm_init.yml"
play5="frontend_site-create.yml"

for i in $play1 $play2 $play3 $play4 $play5
do
    ansible-playbook $i
done
