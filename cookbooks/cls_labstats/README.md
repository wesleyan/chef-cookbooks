cls_labstats Cookbook
====================
This cookbook installs the Computerlab Solutions LabStats client on OS X and Windows.

Requirements
------------
#### platform
- `OS X` - 10.6.8 or greater.
- 'Windows' - 7 or greater.

Attributes
----------

Usage
-----
#### cls_labstats::mac

Just include `cls_labstats` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[cls_labstats::mac]"
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
