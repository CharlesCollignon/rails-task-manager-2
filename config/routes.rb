Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Supprimer une tâche
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task
  # Editer une tache
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # Créer une tache
  get 'tasks/new', to: 'tasks#new', as: :new_task
  # Poster la tâche dans la db
  post 'tasks', to: 'tasks#create'

  # Liste des taches dans sur la page index
  get 'tasks', to: 'tasks#index'

  # Montre la tache sur laquelle on clique sur la page show
  get 'tasks/:id', to: 'tasks#show', as: :task

end
