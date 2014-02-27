chef_chefclient Cookbook
========================
This cookbook updates chef-client on OS X and Windows.

Requirements
------------
#### platform
- `OS X` - 10.8 or greater.
- `Windows` - Vista or greater.

Attributes
----------

Usage
-----
#### chef_chefclient::mac

Just include `chef_chefclient` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[chef_chefclient::mac]"
  ]
}
```

#### chef_chefclient::win

Just include `chef_chefclient` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[chef_chefclient::win]"
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