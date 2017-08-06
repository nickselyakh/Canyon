Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  scope '(:locale)' do
  resources :manuals
  resources :pages
  root 'manuals#index'



  scope '/admin' do
    resources :users
    resources :categories
  end
end

end
