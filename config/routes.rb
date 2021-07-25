Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :article_histories
    resources :comments
  end
end
