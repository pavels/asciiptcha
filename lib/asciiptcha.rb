require 'artii'
require 'sha1'
require 'asciiptcha/operations'
require 'asciiptcha/configuration'
require 'asciiptcha/encryption_key_not_set'
require 'asciiptcha/railtie' if defined?(Rails)

module Asciiptcha
  class << self
	  # Modify Asciiptcha configuration
    # Example:
    #   Asciiptcha.configure do |config|
    #     config.captcha_length = 6
    #   end
    def configure
      yield configuration
    end
    
    # Accessor for Asciiptcha::Configuration
    def configuration
      @configuration ||= Configuration.new
    end
    alias :config :configuration
  end
end
