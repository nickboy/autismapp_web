Autismapp::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  #root :to => 'high_voltage/pages#show', :id => 'welcome'
  root :to => "reinforcements#index"
  resources :reinforcements
  resources :questions
end
