classic_shell Cookbook
=========================
This cookbook installs Classic Shell, an alternative desktop environment for Windows 8.1.

Requirements
------------
#### platform
- `Windows` - 8.1 or above.

Attributes
----------

Usage
-----
#### classic_shell::win

Just include `classic_shell::win` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[classic_shell::win]"
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
Max Dietz <mdietz@wesleyan.edu>