module DockModule
  class Dock
    attr_accessor :name
    attr_accessor :applications
    attr_accessor :others
    attr_accessor :all_users
    def initialize(name)
      @applications = Array.new
      @all_users = false
      @name = "default"
      @others = Array.new
      @name = name
    end
     def add_to_group(folder_name, item)
       @others.select {|other| other.name == folder_name }.each{ |other| other.contents.push(item) }
    end
    def add_other(other) 
      @others.push(other)
    end
    def add_application(application) 
      @applications.push(application)
    end 
  end
  
  class DockItem
    attr_accessor :path
    attr_accessor :name
    attr_accessor :dock
  end
  
  class DockOther < DockItem
  end
  
  class DockFile < DockOther
  end
  
  class DockFolder < DockOther
    attr_accessor :show_as, :display_as, :icon, :arrangement, :contents, :tile_type, :arrangement_map, :show_as_map, :display_as_map

    def arrangement_to_i
      self.arrangement_map["name"]
    end
  
    def initialize
       @show_as_map = { "fan" => 1, "grid" => 2, "list" => 3, "automatic" => 4 }
       @display_as_map = { "stack" => 1, "folder" => 2}
       @arrangement_map = {"name" => 1, "date_added" => 2, "date_modified" => 3, "date_created" => 4, "kind" => 5}
       @show_as = "grid"
       @display_as = "folder"
       @arrangement = "name"
       @tile_type = "directory-tile"
       @icon = nil
       @contents = Array.new
    end
  
    def show_as_to_i
      @show_as_map[:@show_as]
    end      
  end

  class DockApplication
    attr_accessor :path
    def initialize
         super 
         @applications = Array.new
         @all_users = false
         @dock = "default"
         @others = Array.new
         @path = ""
      end
    def whatever 
      puts 'whatever'
    end
  end
  
end
