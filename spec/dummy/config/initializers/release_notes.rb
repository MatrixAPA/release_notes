# Use this hook to configure the Inventory Engine
ReleaseNotes.configure do |config|

  # Add a slack notification channel
  # This is an optional step that will publish webhook related activity to the Slack channel of choice
  # config.slack_hook = Rails.application.credentials[:slack][:release_notes_channel]

  # This will allow us to access the main app User model
  config.user_klass = "User"


end