Rails.application.routes.draw do
  get 'game' => 'words#game'

  get 'score' => 'words#score'

  root 'words#game'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
