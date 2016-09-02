Rails.application.routes.draw do
  root 'home#index'

  get 'api' => 'home#sender'
  post 'api' => 'home#sender_post'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
