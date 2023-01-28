Rails.application.routes.draw do
  get 'private/test'
  get 'ships/index'
  post 'ships/create'
  delete 'ships/destroy'
  get 'reservations/index'
  delete 'reservations/destroy'
  post 'reservations/create'
  put 'reservations/update'

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
