Rails.application.routes.draw do
  resources :questions
  root :controller => 'questions', :action => 'index'
end