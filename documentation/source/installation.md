To install these modules, you can use a `Puppetfile`

```
mod 'enterprisemodules/wls_profile'               ,'0.1.0'
```

Then use the `librarian-puppet` or `r10K` to install the software.

You can also install the software using the `puppet module`  command:

```
puppet module install enterprisemodules-wls_profile
```

<%- include_attributes [
]%>
