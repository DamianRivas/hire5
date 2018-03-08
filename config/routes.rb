Rails.application.routes.draw do

  devise_for :candidates
  devise_for :employers
  
  resources :employers do
    resources :quizzes
    member do
      get 'dashboard'
    end
  end
  
  get 'welcome/index'

  root 'welcome#index'
end
