Rails.application.routes.draw do
  resources :quiz, only: [:index] do
    post :evaluate_test, on: :collection
    get :show_score, on: :collection
  end

  root 'quiz#index'
end
