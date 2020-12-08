Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get 'home/about' => 'homes#about', as: 'about'
  get "relationship/follows" => "relationships#follows", as: "follows"
  get "relationship/followers" => "relationships#followers", as: "followers"
  post 'follow/:id' => 'relationships#follow', as: 'follow' # フォローする
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' # フォロー外す
   get '/search' => 'search#search'

  resources :users, only: [:show,:index,:edit,:update]
  resources :books, only: [:edit, :create, :index, :show, :update, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end



end