#++--++
#
# wls_profile::groups_and_users
#
# @summary This class is the default implementation for creating the required OS users and groups for the installation of WebLogic.
# Using hiera, you can customize some of the aspects of this process.
# 
# When these customizations aren't enough, you can replace the class with your own class. See [wls_profile::weblogic](./weblogic.html) for an explanation on how to do this.
#
# @param [Hash] users
#    The OS users to create for WebLogic.
#    The default value is:
#    ```yaml
#    wls_profile::weblogic::groups_and_users::users:
#      oracle:
#        uid:        54321
#        gid:        dba
#        groups:
#        - dba
#        shell:      /bin/bash
#        password:   '$1$DSJ51vh6$4XzzwyIOk6Bi/54kglGk3.'
#        home:       /home/oracle
#        comment:    This user oracle was created by Puppet
#        managehome: true
#    ```
#
# @param [Hash] groups
#    The list of groups to create for WebLogic.
#    The default value is:
#    ```yaml
#    wls_profile::weblogic::groups_and_users::groups:
#      dba:
#        gid:  54321,
#    ```
#
#--++--
class wls_profile::weblogic::groups_and_users(
  Hash  $users,
  Hash  $groups,
) inherits wls_profile {
  echo {'Weblogic Groups and Users':
    withpath => false,
  }
  $defaults = { 'ensure' => 'present'}
  create_resources('user', $users, $defaults )
  create_resources('group', $groups, $defaults)
}
