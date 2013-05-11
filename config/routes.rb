TodoApp::Application.routes.draw do
  resources :projects do
    resources :items, :only => [:index, :new]
  end
  resources :items, :except => [:index]
  resources :teams do
    resources :projects, :only => [:new]
  end
  resources :users

  root to: "teams#index"
end
