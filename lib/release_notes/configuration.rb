module ReleaseNotes
  class Configuration
    # These attributes will be available via ReleaseNotes.config.x if configured.
    # They are configured in the main app config/initializers/release_notes.rb file

    attr_accessor :user_klass,
                  :slack_hook


  end
end