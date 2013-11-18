microsoft_internet_explorer Cookbook
=========================
This cookbook installs microsoft_internet_explorer.

Requirements
------------
#### platform
- `Windows` - 7 SP1 or above.

Attributes
----------

Usage
-----
#### microsoft_internet_explorer::win

Just include `microsoft_internet_explorer::win` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[microsoft_internet_explorer::win]"
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