macvim Cookbook
===============
This cookbook installs MacVim, a text editor.

Requirements
------------
#### platform
- `OS X` - 10.9 or above.

Attributes
----------

Usage
-----
#### macvim::mac

Just include `macvim::mac` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[macvim::mac]"
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