#++--++
#
# wls_profile::sysctl
#
# @summary This class is the default implementation for making sure the OS sysctl settings on your system are set correctly for WebLogic.
# Using hiera, you can customize some of the aspects of this process.
# 
# When these customizations aren't enough, you can replace the class with your own class. See [wls_profile::weblogic](./weblogic.html) for an explanation on how to do this.
#
# @param [Hash] list
#    The required sysctl parameters for WebLogic.
#    The defaults are:
#    ```yaml
#    wls_profile::weblogic::sysctl::list:
#      'kernel.msgmnb':                 
#        value: 65536
#      'kernel.msgmax':                 
#        value: 65536
#      'kernel.shmmax':                 
#        value: 2588483584
#      'kernel.shmall':                 
#        value: 2097152
#      'fs.file-max':                   
#        value: 6815744
#      'net.ipv4.tcp_keepalive_time':   
#        value: 1800
#      'net.ipv4.tcp_keepalive_intvl':  
#        value: 30
#      'net.ipv4.tcp_keepalive_probes': 
#        value: 5
#      'net.ipv4.tcp_fin_timeout':      
#        value: 30
#      'kernel.shmmni':                 
#        value: 4096
#      'fs.aio-max-nr':                 
#        value: 1048576
#      'kernel.sem':                    
#        value: '250 32000 100 128'
#      'net.ipv4.ip_local_port_range':  
#        value: '9000 65500'
#      'net.core.rmem_default':         
#        value: 262144
#      'net.core.rmem_max':             
#        value: 4194304
#      'net.core.wmem_default':         
#        value: 262144
#      'net.core.wmem_max':             
#        value: 1048576
#    ```
#
#--++--
class wls_profile::weblogic::sysctl(
  Hash $list
) inherits wls_profile {
  echo {'WebLogic Sysctl':
    withpath => false,
  }

  $defaults = {
    ensure  => 'present',
    persist => true,
  }
  create_resources(sysctl, $list, $defaults)
}
