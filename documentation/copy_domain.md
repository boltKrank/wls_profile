---
title: copy domain
keywords: documentation
layout: documentation
sidebar: wls_profile_sidebar
toc: false
---
## Overview

This class is the default implementation to copy the packed domain from the Admin Server, unpack it on the current machine and start the nodemanager.

Using hiera, you can customize some of the aspects of this process.

When these customizations aren't enough, you can replace the class with your own class. See [wls_profile::node](./node.html) for an explanation on how to do this.






## Attributes



Attribute Name                                          | Short Description                                                                        |
------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
[adminserver_address](#copy_domain_adminserver_address) | The address the admin server process will run and listen on.                             |
[adminserver_port](#copy_domain_adminserver_port)       | The IP port the admin server process will run and listen on.                             |
[domain_name](#copy_domain_domain_name)                 | The name of the WebLogic domain.                                                         |
[domains_dir](#copy_domain_domains_dir)                 | The top-level directory where the domain directories will reside in.                     |
[jdk_home](#copy_domain_jdk_home)                       | The location where the JDK is installed.                                                 |
[log_dir](#copy_domain_log_dir)                         | The directory used for log files.                                                        |
[middleware_home](#copy_domain_middleware_home)         | The Oracle middleware home directory.                                                    |
[nodemanager_address](#copy_domain_nodemanager_address) | The IP address the nodemanager will run and listen on.                                   |
[nodemanager_wait](#copy_domain_nodemanager_wait)       | The time in seconds Puppet waits for the nodemanager to start before declaring an error. |
[os_group](#copy_domain_os_group)                       | The os group to use for WebLogic.                                                        |
[os_user](#copy_domain_os_user)                         | The os user to use for WebLogic.                                                         |
[version](#copy_domain_version)                         | The version of WebLogic you want to use.                                                 |
[weblogic_home](#copy_domain_weblogic_home)             | The directory used as WebLogic home
                                                     |
[weblogic_password](#copy_domain_weblogic_password)     | The password for the WebLogic account.                                                   |
[weblogic_user](#copy_domain_weblogic_user)             | The WebLogic user account to bear all administration rights.                             |




### domain_name<a name='copy_domain_domain_name'>

The name of the WebLogic domain. This will be used both as the REAL WebLogic domain name, and also be used by Puppet as a designator for Puppet resources. (e.g. the name before the slash `my_domain/wls_queue1`).

The change the domain name, use the hiera key: `wls_profile::domain_name`. This will make sure the correct domain name gets used in all classes.

The default value is: `MYDOMAIN`
Type: `String[1]`


[Back to overview of copy_domain](#attributes)

### version<a name='copy_domain_version'>

The version of WebLogic you want to use.

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `wls_profile::version` to change it to your requested value.

Valid values are:

  - `1036`
  - `1111`
  - `1112`
  - `1211`
  - `1212`
  - `1213`
  - `1221`
  - `12211`
  - `12212`
  - `12213`

Default value: `12213`
Type: `Wls_install::Versions`

Default:`$wls_profile::weblogic_version`

[Back to overview of copy_domain](#attributes)

### weblogic_home<a name='copy_domain_weblogic_home'>

The directory used as WebLogic home

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `wls_profile::weblogic_home` to change it to your requested value.

Default value: `/opt/oracle/middleware12/wlserver`

Type: `Stdlib::Absolutepath`


[Back to overview of copy_domain](#attributes)

### log_dir<a name='copy_domain_log_dir'>

The directory used for log files.

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `wls_profile::log_dir` to change it to your requested value.

Default value: `/opt/oracle/domains/log`
Type: `Stdlib::Absolutepath`


[Back to overview of copy_domain](#attributes)

### middleware_home<a name='copy_domain_middleware_home'>

The Oracle middleware home directory.

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `wls_profile::middleware_home` to change it to your requested value.

Default value: `/opt/oracle/middleware12`
Type: `Stdlib::Absolutepath`


[Back to overview of copy_domain](#attributes)

### jdk_home<a name='copy_domain_jdk_home'>

The location where the JDK is installed.

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `wls_profile::jdk_home` to change it to your requested value.

The default value is: `/usr/java/jdk1.8.0_152`
Type: `Stdlib::Absolutepath`


[Back to overview of copy_domain](#attributes)

### domains_dir<a name='copy_domain_domains_dir'>

The top-level directory where the domain directories will reside in. 

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `wls_profile::domains_dir` to change it to your requested value.


The default value is:  `/opt/oracle/domains`
Type: `Stdlib::Absolutepath`


[Back to overview of copy_domain](#attributes)

### os_user<a name='copy_domain_os_user'>

The os user to use for WebLogic.

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `wls_profile::basic_domain::os_user` to change it to your requested value.

Default value: `oracle`
Type: `String[1]`


[Back to overview of copy_domain](#attributes)

### os_group<a name='copy_domain_os_group'>

The os group to use for WebLogic.

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `wls_profile::basic_domain::os_group` to change it to your requested value.

Default value: `dba`
Type: `String[1]`


[Back to overview of copy_domain](#attributes)

### adminserver_address<a name='copy_domain_adminserver_address'>

The address the admin server process will run and listen on. 

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `wls_profile::adminserver_address` to change it to your requested value.

The default value is: The fact `fqdn`
Type: `String[1]`


[Back to overview of copy_domain](#attributes)

### adminserver_port<a name='copy_domain_adminserver_port'>

The IP port the admin server process will run and listen on. 

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `wls_profile::adminserver_port` to change it to your requested value.

The default value is:  `7001`
Type: `Integer`

Default:`$wls_profile::adminserver_port`

[Back to overview of copy_domain](#attributes)

### nodemanager_address<a name='copy_domain_nodemanager_address'>

The IP address the nodemanager will run and listen on.

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `wls_profile::basic_domain::wls_domain::log_dir` to change it to your requested value.

Default value: `::fqdn`
Type: `String[1]`


[Back to overview of copy_domain](#attributes)

### nodemanager_wait<a name='copy_domain_nodemanager_wait'>

The time in seconds Puppet waits for the nodemanager to start before declaring an error.

Default value: `20`
Type: `Integer`


[Back to overview of copy_domain](#attributes)

### weblogic_user<a name='copy_domain_weblogic_user'>

The WebLogic user account to bear all administration rights.

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `wls_profile::weblogic_user` to change it to your requested value.

Default value: `weblogic`
Type: `String[1]`


[Back to overview of copy_domain](#attributes)

### weblogic_password<a name='copy_domain_weblogic_password'>

The password for the WebLogic account.

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `wls_profile::weblogic_password` to change it to your requested value.

Default value: `Welcome01`
Type: `String[1]`


[Back to overview of copy_domain](#attributes)
