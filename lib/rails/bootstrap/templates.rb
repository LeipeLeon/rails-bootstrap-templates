require "rails/bootstrap/templates/version"

module Rails
  module Bootstrap
    module Templates
      class Railtie < Rails::Railtie
        config.app_generators do |g|
          g.templates.unshift File::expand_path('../../../templates', __FILE__)
        end
      end
    end
  end
end
