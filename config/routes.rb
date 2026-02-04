Redmine::Plugin.routes.draw do
  resources :stencil_templates, only: [:index] do
    collection do
      get 'edit/:tracker_id', to: 'stencil_templates#edit', as: 'edit'
      patch 'update/:tracker_id', to: 'stencil_templates#update', as: 'update'
    end
  end
end
