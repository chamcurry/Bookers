Rails.application.routes.draw do
 # get 'books'=>'books#index'
 # post'books' => 'books#create'
 # get 'books/new' => 'books#new'
 # get'books/:id' => 'books#show'
 # get 'books/:id/edit'=> 'books#edit'
 get "/" =>'homes#top',as:'root'
 resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end