Rails.application.routes.draw do
  root 'blogs#index'
  resources :blogs

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
