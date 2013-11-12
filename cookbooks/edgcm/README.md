edgcm Cookbook
=========================
This cookbook installs edgcm.

Requirements
------------
#### platform
- `Windows` - XP or above.

Attributes
----------

Usage
-----
#### edgcm::win

Just include `edgcm::win` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[edgcm::win]"
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