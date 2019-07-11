[![Maintainability](https://api.codeclimate.com/v1/badges/27e5812f170bb6712509/maintainability)](https://codeclimate.com/repos/5d22e10360371e018b000df5/maintainability)


# ReleaseNotes

A Rails engine for the Matrix Release Notes platform. 

### Dependencies

* Ruby 2.6.3
* Postgresql 9.6+
    
## Installation
Add this line to your application's Gemfile:
```ruby
gem 'release_notes',  git: 'https://github.com/MatrixAPA/release_notes.git'
```

Then run: ```$ bundle install ```

And execute: ```$ rails g release_notes:install```

And finally: ```$ rails db:migrate```

Add the following to the application.scss file for styling:
```css
@import "release_notes/release_notes_styling";
```

And update the initializer with any specifics, such as the name of the User class in the main app (if it's not User)
