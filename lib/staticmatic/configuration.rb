module StaticMatic
  class Configuration
    attr_accessor :preview_server_port

    attr_accessor :preview_server_host
    
    attr_accessor :use_extensions_for_page_links
    attr_accessor :sass_options
    attr_accessor :haml_options 
    
    attr_accessor :mime_types
    
    def initialize
      self.preview_server_port = 3000
      self.use_extensions_for_page_links = true
      self.sass_options = {}
      self.haml_options = {}
      self.mime_types = { :html => 'text/html', :css => 'text/css' }
    end
  end
end