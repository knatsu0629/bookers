Rails.application.routes.draw do
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show'
  get 'books/edit'
  get 'books/destroy'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  root to: 'homes#top'

 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
