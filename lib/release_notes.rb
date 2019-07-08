require "release_notes/engine"
require "release_notes/configuration"

module ReleaseNotes
  class << self
    attr_reader :config
  end

  def self.configure
    @config = ReleaseNotes::Configuration.new
    yield config
    define_getter_methods
  end

  def self.define_getter_methods
    # This looks for any config instance variables with a name that ends _klass (usually set in the main app initializer file)
    # and defines a getter method for the relevant class name in the main app.
    # This makes it very easy to manage associations with the main app, with a small amount of code.
    #
    # For example, the following could be added to a Release Notes model:
    # belongs_to :user, class_name: ReleaseNotes.user_class.to_s, foreign_key: :user_id
    ReleaseNotes.config.instance_variables.grep(/.*_klass/).each do |attr|
      define_singleton_method attr[1..-1] do
      ReleaseNotes.config.public_send(attr[1..-1]).constantize
      end
    end
  end
end
