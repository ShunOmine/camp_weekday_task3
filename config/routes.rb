Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'calcs/:number_one/addition/:number_two' => 'calcs#addition'
  get 'calcs/:number_one/subtraction/:number_two' => 'calcs#subtraction'
  get 'calcs/:number_one/multiplication/:number_two' => 'calcs#multiplication'
  get 'calcs/:number_one/division/:number_two' => 'calcs#division'
end
