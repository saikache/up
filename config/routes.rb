Rails.application.routes.draw do
  get 'home/index'

  get 'home/contact'

  get 'home/about'

  get 'home/get_a_quote'

  get 'home/be_a_partner'

  post 'home/send_data'

  root "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
