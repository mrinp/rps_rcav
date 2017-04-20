Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get("/rock", :controller => "games", :action => "play_rock")
  #Cannot have a space b/w the get method and it's arguments

end
