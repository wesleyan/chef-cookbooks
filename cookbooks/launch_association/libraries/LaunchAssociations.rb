module LaunchAssociations
  class Association
    attr_accessor :bundle_id
    attr_accessor :uti
    attr_accessor :role
    attr_accessor :uti_type
  end
  
  class FileAssociation < Association
    def initialize
       @uti_type = "LSHandlerContentType"
    end
  end
  
  class URLAssociation < Association
    def initialize
      @uti_type = "LSHandlerURLScheme"
    end
  end
end

  