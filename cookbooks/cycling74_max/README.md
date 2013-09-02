cycling74_max Cookbook
====================
This cookbook installs Cycling74's Max on OS X.

Requirements
------------
#### platform
- `OS X` - 10.6.8 or greater.

Attributes
----------

Usage
-----
#### cycling74_max::mac

Just include `cycling74_max:` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[cycling74_max::mac]"
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