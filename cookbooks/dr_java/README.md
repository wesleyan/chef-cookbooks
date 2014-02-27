dr_java Cookbook
==========================
Installs Dr. Java on Windows.

Requirements
------------
#### platform
- `Windows` - 8 or greater.

Attributes
----------

Usage
-----
#### dr_java::win

Just include `dr_java::win` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[dr_java::win]"
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
