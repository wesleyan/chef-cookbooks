eset_nod32 Cookbook
===================
This cookbook installs ESET NOD32 on OS X & Windows.

Requirements
------------
#### platform
- `OS X` - 10.6.8 or greater.
- `Windows` - XP or greater.

Attributes
----------

Usage
-----
#### eset_nod32::mac

Just include `eset_nod32` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[eset_nod32::mac]"
  ]
}
```

#### eset_nod32::win

Just include `eset_nod32` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[eset_nod32::win]"
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