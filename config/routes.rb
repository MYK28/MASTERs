Rails.application.routes.draw do
  devise_for :staffs, controllers:{
    sessions: 'staffs/sessions',
    passwords: 'staffs/passwords',
    registrations: 'staffs/registrations'
  }

  devise_for :admins, controllers:{
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }

  root to: 'homes#top'

  #staffフォルダの中のstaffコントローラーを呼び出すためのルーティング
   scope module: :staff do
     resources :staffs, only: [:show, :edit, :update]
   end

  resources :informations, only: [:index, :show] do
    delete 'check' => 'checks#destroy'
    resources :checks, only: [:create]
    resources :bookmarks, only: [:create, :destroy]
    resources :comments, only: [:show, :create, :destroy]
    collection do
      get 'checked'
    end
  end

  get 'bookmarks' => 'bookmarks#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do

    resources :informations, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
      collection do
        get 'commented'
      end
    end

    resources :comments, only: [:show, :create, :destroy, :index] do
        resources :replies, only: [:create, :destroy]
      end

    resources :staffs, only: [:index, :show, :destroy, :update]
  end
end
