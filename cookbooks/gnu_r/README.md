gnu_r Cookbook
====================
This cookbook installs the R statiscal programming for OS X and Windows.

Requirements
------------
#### platform
- `OS X` - 10.9 or greater.

- `Windows` - 7 or greater.

Attributes
----------

Usage
-----
#### gnu_r::mac

Just include `gnu_r:` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[gnu_r::mac]"
  ]
}
```

#### gnu_r::win

Just include `gnu_r:` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[gnu_r::win]"
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