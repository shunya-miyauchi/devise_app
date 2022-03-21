Rails.application.routes.draw do
  devise_for :users
  root 'blogs#index'
  resources :blogs

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
