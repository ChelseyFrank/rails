EventsTest::Application.routes.draw do
  resources :registrations

  root "events#index"

  resources :events
end