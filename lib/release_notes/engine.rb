module ReleaseNotes
  class Engine < ::Rails::Engine
    isolate_namespace ReleaseNotes

    ## This will allow rails db:migrate to find and correctly run the engine’s migration
    ## Meaning that we can keep them local to the engine, and not in the main db/migrate dir
    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s + File::SEPARATOR
        app.config.paths["db/migrate"].concat config.paths["db/migrate"].expanded
      end
    end

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_bot
      g.factory_bot dir: 'spec/factories'
    end

  end
end
