require 'rubygems'
require 'stringio'
require 'spec'

require File.dirname(__FILE__) + '/../lib/staticmatic'

TEST_SITE_PATH = File.expand_path(File.join(File.dirname(__FILE__), "sandbox", "test_site"))

Spec::Runner.configure do |config|
end

def setup_staticmatic
  @staticmatic = StaticMatic::Base.new(TEST_SITE_PATH)
  @server = nil
end

def server
  @server ||= StaticMatic::Server.new(@staticmatic)
end