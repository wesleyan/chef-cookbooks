
module Dock
  class DockItem
    attr_accessor :path
    path = ""
  end
  
  class DockApp < DockItem
  end
  
  class DockOther < DockItem
  end
  
  class DockFile < DockOther
  end
  
  class DockFolder < DockOther
    attr_accessor :show_as, :display_as, :arrangement, :contents, :tile_type, :arrangement_map, :show_as_map, :display_as_map
    @show_as_map = { "fan" => 1, "grid" => 2, "list" => 3, "automatic" => 4 }
    @display_as_map = { "stack" => 1, "folder" => 2}
    @arrangement_map = {"name" => 1, "date_added" => 2, "date_modified" => 3, "date_created" => 4, "kind" => 5}
    @show_as = "grid"
    @display_as = "folder"
    @arrangement = "name"
    @tile_type = "directory-tile"
    @contents = []
    def arrangement_to_i
      self.arrangement_map["name"]
    end
    
    def show_as_to_i
      @show_as_map[:@show_as]
    end      
  end
  
  class MacUser 
    attr_accessor :uid
    attr_accessor :username
    attr_accessor :user_dir
    @uid = 0
    @username = ""
    @user_dir = ""
  end
  

end
