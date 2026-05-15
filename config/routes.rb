
Rails.application.routes.draw do
  get "/" => "posts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts
  post "posts/:id/destroy"=>"posts#destroy"
  get "posts/:id/destroy"=>"posts#destroy"
end
