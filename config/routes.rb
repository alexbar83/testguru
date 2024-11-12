Rails.application.routes.draw do
   root to: "tests#index" 

  resources :tests, shallow: true, except: :index  do 
    resources :questions, shallow: true,  except: :index do 
      resources :answers 
    end
    member do
      post :start
    end
  end

  resources :test_passage, only: %i[show update] do
    member do
      get :result
    end
  end
end
