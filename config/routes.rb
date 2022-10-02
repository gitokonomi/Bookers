Rails.application.routes.draw do
  get 'books/new'
  get 'books/index'
  post 'books' => 'books#create'   #post
  get 'books/:id' => 'books#show' , as: 'book'
  root :to => 'homes#top'

  get 'books/:id/edit' => 'books#edit' , as: 'edit_book'
  patch 'books/:id' => 'books#update' , as: 'update_book'
  # コピ


  delete 'books/:id' => 'books#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
