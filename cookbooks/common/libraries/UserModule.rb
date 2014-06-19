module UserModule
  class MacUser 
    attr_accessor :uid
    attr_accessor :username
    attr_accessor :user_dir
    def initialize
      @uid = 0
      @username = ""
      @user_dir = ""
    end
  end
end
