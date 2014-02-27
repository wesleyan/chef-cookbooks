designscience_mathtype Cookbook
=========================
This cookbook installs MathType, an equation editor.

Requirements
------------
#### platform
- `Windows` - XP or above.

Attributes
----------

Usage
-----
#### designscience_mathtype::win

Just include `designscience_mathtype::win` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[designscience_mathtype::win]"
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