Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # 「/auth/<SNS名>/callback」といURLでアクセスされると、コントローラ#アクションに遷移する
  # Twitterの場合は「/auth/twitter/callback」
  get "/auth/:provider/callback" => "sessions#create"

  root "tweets#index"
end
