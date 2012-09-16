Proxxit::Application.routes.draw do
  get "page/index"

  get "page/api"

  get "page/about"

  match "r" => "api#index"
  match "r/:name" => "api#subreddit"
  match "r/:name/comments/:id" => "api#comments"

  root :to => "page#index"
  
end
