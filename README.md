# ReleaseNotes

A Rails engine for the Matrix Release Notes platform

### Dependencies

* Ruby 2.6.3
* postgresql
    
## Installation
Add this line to your application's Gemfile:

```ruby
gem 'release_notes', path: 'engines/release_notes'
```

And execute: ```$ rails g release_notes:install```

Then run: ```$ bundle install ```

And finally: ```$ rails db:migrate```

Add the following to the application.scss file for styling:
```css
@import "release_notes/release_notes_styling";
```

And update the initializer with any specifics, such as the name of the User class in the main app (if it's not User)

