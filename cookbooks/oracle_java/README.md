oracle_java Cookbook
====================
This cookbook installs the latest Oracle Java Runtime Environment and the latest patchlevel of system Java from Apple on OS X, and the 32-bit JRE on Windows.

Requirements
------------
#### platform
- `OS X` - 10.8 or greater.
- `Windows` - Vista or greater.

Attributes
----------

Usage
-----
#### oracle_java::mac

Just include `oracle_java` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[oracle_java::mac]"
  ]
}
```

#### oracle_java::win

Just include `oracle_java` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[oracle_java::win]"
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