atlasti Cookbook
=========================
This cookbook installs atlasti.

Requirements
------------
#### platform
- `Windows` - Vista or above.

Attributes
----------

Usage
-----
#### atlasti::win

Just include `atlasti::win` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[atlasti::win]"
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
Robert Christensen <software@wesleyan.edu>

