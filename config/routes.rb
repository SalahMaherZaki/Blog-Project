Rails.application.routes.draw do
  root 'welcome#index'    #As i made get '/'

  get 'welcome/' ,to: 'welcome#index'
  get 'welcome/hi' ,to: 'welcome#hi'

  resources :articles do
    resources :comments
  end
  
  # articles        get 'articles' ,to: 'articles#index'

  # articles        post 'articles' ,to: 'articles#create'
  # new_article     get 'articles/new' ,to: 'articles#new'

  # edit_article    get 'articles/:id/edit' ,to: 'articles#edit'
  # article         put 'articles/:id' ,to: 'articles#update'

  # article         get 'articles/:id' ,to: 'articles#show'
  # article         delete 'articles/:id' ,to: 'articles#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
