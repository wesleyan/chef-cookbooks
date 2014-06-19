sissa_psyscopex Cookbook
========================
This cookbook installs PsyScope X on OS X.

Requirements
------------
#### platform
- `OS X` - 10.6.8 or greater.

Attributes
----------

Usage
-----
#### sissa_psyscopex::mac

Just include `sissa_psyscopex:` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[sissa_psyscopex::mac]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Robert Christensen <rchristensen@wesleyan.edu>
Max Dietz <mdietz@wesleyan.edu>

