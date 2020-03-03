Rails.application.routes.draw do
  get 'welcome/index'

  namespace :v1, constraints: { format: 'json' } do
    get 'chat/index'
    post 'chat/answer'
  end

  namespace :admin do
    resources :answers do
      member do
        get 'next_step'
      end
    end

    resources :replicas, except: :new
    resources :text_replicas
    resources :image_replicas

    resources :steps do
      resources :text_replicas
      resources :image_replicas
      resources :answers
    end

    root 'steps#index'
  end

  root 'welcome#index'
end
