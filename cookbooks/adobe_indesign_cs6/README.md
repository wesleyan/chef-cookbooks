adobe_indesign_cs6 Cookbook
===========================
This cookbook installs Adobe InDesign CS6 on OS X and Windows.

Requirements
------------
#### platform
- `OS X` - 10.6.8 or greater.
- `Windows` - 7 or greater.

Attributes
----------

Usage
-----
#### adobe_indesign_cs6::mac

Just include `adobe_indesign_cs6:` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[adobe_indesign_cs6::mac]"
  ]
}
```

#### adobe_indesign_cs6::win

Just include `adobe_indesign_cs6:` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[adobe_indesign_cs6::win]"
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