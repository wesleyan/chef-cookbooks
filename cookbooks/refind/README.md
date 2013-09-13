blackmagic_atem Cookbook
====================
This cookbook installs rEFInd on OS X.

Requirements
------------
#### platform
- `OS X`
- `Linux`

Attributes
----------

Usage
-----
#### rEFInd::mac

Just include `rEFInd::mac` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[refind::mac]"
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
Max Dietz <mdietz@wesleyan.edu>
