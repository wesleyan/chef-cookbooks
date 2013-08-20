mcneel_rhinoceros Cookbook
====================
This cookbook installs McNeel Rhinoceros 5 beta for OS X

Requirements
------------
#### platform
- `OS X` - 10.7 or greater

Attributes
----------

Usage
-----
#### mcneel_rhinoceros::mac

Just include `mcneel_rhinoceros` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[mcneel_rhinoceros::mac]"
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