chnm_zotero Cookbook
====================
This cookbook installs Zotero's standalone application and the connector plug-ins for major browsers.

Requirements
------------
#### platform
- `OS X` - 10.6.8 or greater.

Attributes
----------

Usage
-----
#### chnm_zotero::mac

Just include `chnm_zotero` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[chnm_zotero::mac]"
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
