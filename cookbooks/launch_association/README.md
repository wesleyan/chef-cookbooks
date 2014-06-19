Description
===========
Manages file type associations on OS X

Requirements
------------
#### platform
- `OS X` - 10.8.x or greater.

Attributes
----------

Usage
-----
#### launch_association::mac

Just include `launch_association:` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[launch_association::mac]"
  ]
}
```

And within your recipes that require file type associations:

```ruby
launch_association_set_file_handler "filename.filetype" do
	bundle_id "com.bundleid.of.application"
	all_users true
end
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
Jonathan Lyons <jclyons@wesleyan.edu>
Robert Christensen <rchristensen@wesleyan.edu> 