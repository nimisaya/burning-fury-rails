Rails.application.routes.draw do



#redirects you when you login
root to: 'pages#home'
#Login/logout routes

#show login form
get '/login' =>'session#new'
#form submits to here (redirects)
post '/login' => 'session#create'
#logging out link goes here
delete '/login' => 'session#destroy'


#create all 7 crud routes for the user model
resources :users

# Prefix Verb   URI Pattern               Controller#Action
#   root GET    /                         pages#home
#  login GET    /login(.:format)          session#new
#        POST   /login(.:format)          session#create
#        DELETE /login(.:format)          session#destroy
#  users GET    /users(.:format)          users#index
#        POST   /users(.:format)          users#create
# new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#   user GET    /users/:id(.:format)      users#show
#        PATCH  /users/:id(.:format)      users#update
#        PUT    /users/:id(.:format)      users#update
#        DELETE /users/:id(.:format)      users#destroy


#create all 7 crud routes for the flights model
resources :flights



end
