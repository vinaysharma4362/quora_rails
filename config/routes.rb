Rails.application.routes.draw do
  resources :topics
  resources :answers
  resources :questions 
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "questions#index"
  post "/follow_user" => "questions#follow_user", :as => :follow_user
  post "/follow_topic" => "questions#follow_topic", :as => :follow_topic

  resources :home do 
    collection do 
      get :followers
      get :followee
      get :topic_follow
    end
  end



end
