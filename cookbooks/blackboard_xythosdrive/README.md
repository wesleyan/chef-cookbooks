Description
===========
Installs Blackboard's XythosDrive client, preconfigured for WesFiles

Requirements
------------
#### platform
- `OS X` - 10.6.8 or greater.

Attributes
----------

Usage
-----
#### blackboard_xythosdrive::mac

Just include `blackboard_xythosdrive:` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[blackboard_xythosdrive::mac]"
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