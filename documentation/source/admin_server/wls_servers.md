Use this value if you want to skip or use your own class for stage `wls_servers`.

## Use your own class

You can use hiera to set this value. Here is an example:

```yaml
wls_profile::admin_server::wls_servers:  my_module::my_class
```

## Skip

You can use hiera to set this value. Here is an example:

```yaml
wls_profile::admin_server::wls_servers:  skip
```
