Rails.application.routes.draw do
  get 'private/test'
  get 'ships/index'
  post 'ships/create'
  devise_for :users,
    path: '',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      registration: 'signup'
    },
    controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    }
end
