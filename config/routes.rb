Rails.application.routes.draw do
  get '/employees' => 'employees#index'
  get '/employees/:id' => 'employees#show'



  post '/employees' => 'employees#create'
  patch '/employees/:id' => 'employees#update'
  delete '/employees/:id' => 'employees#destroy'
  post '/employees' => 'employees#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
