Feedback::Application.routes.draw do
  root :to => 'feedbacks#index'

  get "/feedbacks", controller: 'feedbacks', action: 'index' #works
  post "/feedbacks", controller: 'feedbacks', action: 'create' #works
  get "/feedbacks/new", controller: 'feedbacks', action: 'new' #works

  get "/feedbacks/:id", controller: 'feedbacks', action: 'show' #works
  put "/feedbacks/:id", controller: 'feedbacks', action: 'update' #works

  get "/feedbacks/:id/edit", controller: 'feedbacks', action: 'edit' #works
  
  delete "/feedbacks/:id", controller: 'feedbacks', action: 'destroy' #works w/ validation!
end
