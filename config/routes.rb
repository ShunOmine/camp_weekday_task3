Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'calc/:number_one/:calculation/:number_two' => 'calcs#show'
end
