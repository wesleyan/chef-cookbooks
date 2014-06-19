Description
===========
Installs the trio of iWork applications and all associated updates

Requirements
------------
#### platform
- `OS X` - 10.9 or greater.

Attributes
----------

Usage
-----
#### apple_iwork::mac

Just include `apple_iwork:` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[apple_iwork::mac]"
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
