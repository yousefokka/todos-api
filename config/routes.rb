Rails.application.routes.draw do
  resources :todos


  scope :format => true, :constraints => { :format => 'json' } do
    post   "/login"       => "sessions#create"
    delete "/logout"      => "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end