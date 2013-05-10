TodoApp::Application.routes.draw do
  resources :projects
  resources :items
  resources :teams

  root to: "teams#index"
end
