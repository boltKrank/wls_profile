Use this value if you want to skip or use your own class for stage `wls_patches`.

## Use your own class

You can use hiera to set this value. Here is an example:

```yaml
wls_profile::weblogic::wls_patches:  my_module::my_class
```

## Skip

You can use hiera to set this value. Here is an example:

```yaml
wls_profile::weblogic::wls_patches:  skip
```
