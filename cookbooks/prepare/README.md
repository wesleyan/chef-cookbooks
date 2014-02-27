prepare Cookbook
================
This cookbook does a ton of pre-configuration that I need to document.

Requirements
------------
#### platform
- `OS X` - 10.8.x or greater.

Attributes
----------

Usage
-----
#### prepare::mac

Just include `prepare:` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[prepare::mac]"
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
