ReleaseNotes::Engine.routes.draw do

  resources :release_notes, path: '/' do
    member do
      get :publish_toggle
      get :notify
      get :enhancements
      get :bug_fixes
    end


    get "new_features", to: "release_notes#new_features"
    get "enhancements", to: "release_notes#enhancements"
    get "bug_fixes", to: "release_notes#bug_fixes"
  end

end
