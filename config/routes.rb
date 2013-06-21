VisaTechTest::Application.routes.draw do
  root to: "contacts#index"
  resources :contacts do
    get 'search', on: :collection
  end
end
