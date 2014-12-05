module HeadstockTemplates
  class Railtie < Rails::Railtie
    config.app_generators do |g|
      puts File::expand_path('../templates', __FILE__)
      g.templates.unshift File::expand_path('../../templates', __FILE__)
    end
  end
end
