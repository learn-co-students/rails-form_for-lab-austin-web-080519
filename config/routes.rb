Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students
  post '/students/new', to: 'students#create'
  post '/students/:id/edit', to: 'students#update'
  resources :school_classes
  post '/school_classes/new', to: 'school_classes#create'
  post '/school_classes/:id/edit', to: 'school_classes#update'

end
