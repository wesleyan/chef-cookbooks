videolan_vlc Cookbook
====================
This cookbook installs VideoLAN's VLC media player on both OS X and Windows

Requirements
------------
#### platform
- `OS X` - 10.6.8 or above.
- `Windows` - 7 or above.


Attributes
----------

Usage
-----
#### videolan_vlc::mac

Just include `videolan_vlc:` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[videolan_vlc::mac]"
  ]
}
```

#### videolan_vlc::win

Just include `videolan_vlc:` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[videolan_vlc::win]"
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
