clea_exercises Cookbook
=========================
This cookbook installs CLEA.

Requirements
------------
#### platform
- `Windows` - XP or below.

Attributes
----------

Usage
-----
#### clea_exercises::win

Just include `clea_exercises::win` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[clea_exercises::win]"
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