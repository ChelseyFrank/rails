FlixTest::Application.routes.draw do
  root "movies#index"	

  get "movies" 					=>  "movies#index"
  get "movies/:id"			=>	"movies#show", as: "movie"
  get "movies/:id/edi"	=>	"movies#edit", as: "edit_movie"
end
