Rails.application.routes.draw do
  get 'sponsored_posts_controller/show'

  get 'sponsored_posts_controller/new'

  get 'sponsored_posts_controller/edit'

  get 'show/new'

  get 'show/edit'

  resources :topics do
    resources :posts, :sponsored_posts except: [:index]
  end

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
