# config/application.rb
#...

class Application < Rails::Application
    #...
  
    # Thêm thư mục node_modules vào Sass load path
    config.sass.load_paths << Rails.root.join('node_modules')
  
  end