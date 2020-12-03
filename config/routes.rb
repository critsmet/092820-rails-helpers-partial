Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :kombuchas
  resources :brands, only: [:new, :create, :show]

  # INDEX:
  # get '/kombuchas', to: 'kombuchas#index', as: "kombuchas"
  #
  # SHOW:
  # get '/kombuchas/:id', to: 'kombuchas#show', :as => :kombucha
  #
  # EDIT:
  # get '/kombuchas/:id/edit', to: 'kombuchas#edit', :as => :edit_kombucha

end
