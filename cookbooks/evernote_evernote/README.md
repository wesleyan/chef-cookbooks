evernote_evernote Cookbook
====================
This cookbook installs Evernote's Evernote note taking software on OS X.

Requirements
------------
#### platform
- `OS X` - 10.6.6 or greater.

Attributes
----------

Usage
-----
#### evernote_evernote::mac

Just include `evernote_evernote:` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[evernote_evernote::mac]"
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
Max Dietz <mdietz@wesleyan.edu>
