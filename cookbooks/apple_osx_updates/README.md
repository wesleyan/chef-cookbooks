apple_osx_updates Cookbook
====================
This cookbook installs the latest system updates for OS X

Requirements
------------
#### platform
- `OS X` - 10.8.3, as that's our base and this is not a combo updater.

Attributes
----------

Usage
-----
#### apple_osx_updates::mac

Just include `apple_osx_updates:` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[apple_osx_updates::mac]"
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
