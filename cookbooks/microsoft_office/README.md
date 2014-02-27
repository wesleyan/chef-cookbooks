microsoft_office Cookbook
=========================
This cookbook installs Microsoft Office 2011 on OS X, 2013 on Windows

Requirements
------------
#### platform
- `OS X` - 10.6.8 or greater
- `Windows` - 7 or greater

Attributes
----------

Usage
-----
#### microsoft_office::mac

Just include `microsoft_office` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[microsoft_office::mac]"
  ]
}
```

#### microsoft_office::win

Just include `microsoft_office` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[microsoft_office::win]"
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