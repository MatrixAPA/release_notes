module ReleaseNotes
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../../templates", __FILE__)
    desc "Configure necessary files to use ReleaseNotes in the main app"
    def copy_initializer_file
      copy_file "initializer.rb",
                Rails.root.join("config/initializers/release_notes.rb")
    end

    def add_route
      route 'mount ReleaseNotes::Engine => "/release_notes"'
    end
  end
end