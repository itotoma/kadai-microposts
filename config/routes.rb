Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: 'toppages#index'
    #toppages/index.html.erbが初期ページ これを受けるのはtopppages_controller.rb
    get 'signup', to: 'users#new'
    
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy' 
    #これによりURL users/new　は users/signupになる。見栄えの問題
    resources :users, only: [:index, :show, :new, :create]
end
