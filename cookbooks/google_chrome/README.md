google_chrome Cookbook
======================
This cookbook installs Google Chrome on OS X and Windows.

Requirements
------------
#### platform
- `OS X` - 10.6.8 or greater.
- `Windows` - 7.0 or greater.

Attributes
----------

Usage
-----
#### google_chrome::mac

Just include `google_chrome:` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[google_chrome::mac]"
  ]
}
```

#### google_chrome::win

Just include `google_chrome:` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[google_chrome::win]"
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