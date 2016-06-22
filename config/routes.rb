Rails.application.routes.draw do
  post 'best_answers/best', as: :best
  resources :notes, only: :show
  root 'notes#index'
end
