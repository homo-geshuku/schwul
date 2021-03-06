Rails.application.routes.draw do
  root "pages#index"
  get "dashboard", to: "pages#dashboard"

  resources :screenings do
    post "join", on: :member
    delete "join", on: :member, to: "screenings#join_cancel"
  end

  get "@:name", to: "user_profile#show", as: "user_profile_show"
  get "user_profile", to: "user_profile#index"
  get "user_profile/edit"
  match "user_profile/update", via: [:post, :patch]

  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }, skip: [:sessions]

  devise_scope :user do
    delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  authenticate :user, ->(u) { u.is_admin? } do
    mount RailsAdmin::Engine => "/admin", as: "rails_admin"
  end

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
