Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].each {|file| require file}

module Pages
   def login
       @login_page ||= Login_page.new
   end
end