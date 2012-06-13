require 'asciiptcha/view_helpers'
require 'asciiptcha/controller_helpers'

module Asciiptcha
  class Railtie < Rails::Railtie
    initializer "asciiptcha.helpers" do
      ActionView::Base.send :include, ViewHelpers
			ActionController::Base.send :include, ControllerHelpers
    end

	  initializer 'rails-i18n' do |app|
      I18n.load_path << Dir[File.join(File.expand_path(File.dirname(__FILE__) + '/../../locales'), '*.yml')]
      I18n.load_path.flatten!
    end
	  
	  rake_tasks do
			Dir[File.join(File.dirname(__FILE__),'/../tasks/*.rake')].each { |f| load f }
		end	  
  end
end
