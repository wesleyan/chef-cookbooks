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
    attr_accessor :showas, :displayas, :arrangement, :contents
    showas_map = { "fan" => 1, "grid" => 2, "list" => 3, "automatic" => 4 }
    displayas_map = { "stack" => 1, "folder" => 2}
    arrangement = {"name" => 1, "date_added" => 2, "date_modified" => 3, "date_created" => 4, "kind" => 5}
    showas = 1
    displayas = 1
    arrangement = 1
    contents = []
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
