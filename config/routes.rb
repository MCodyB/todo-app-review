TodoApp::Application.routes.draw do
  resources :projects
  resources :items
  resources :teams
  resources :users

  root to: "teams#index"
end
