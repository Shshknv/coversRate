Rails.application.routes.draw do
    mount ActionCable.server => '/cable'

    resources :themes

    root 'main#index'

    resources :values
    resources :images
    resources :microposts
    resources :users
    resources :sessions, only: [:new, :create, :destroy]

    namespace :api, defaults: { format: :json } do

      match 'next_image',       to: 'api#next_image',   via: 'get'
      match 'prev_image',       to: 'api#prev_image',   via: 'get'
      match 'save_value',       to: 'api#save_value',   via: :get

    end

    match 'index',    to: 'main#index',           via: 'get'
    match 'about',    to: 'main#about',           via: 'get'
    match 'help',     to: 'main#help',            via: 'get'
    match 'contacts', to: 'main#contacts',        via: 'get'

    match 'work',             to: 'work#index',             via: 'get'
    match 'choose_image',     to: 'work#choose_image',      via: :get
    match 'choose_theme',     to: 'work#choose_theme',      via: :get
    match 'display_theme',    to: 'work#display_theme',     via: :post

    match 'results_list',     to: 'work#results_list', via: :get

    match 'save_value',       to: 'api/api#save_value', via: :get

    match 'signup',   to: 'users#new',            via: 'get'
    match 'signin',   to: 'sessions#new',         via: 'get'
    match 'signout',  to: 'sessions#destroy',     via: 'delete'


end
