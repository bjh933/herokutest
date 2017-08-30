Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root 'home#index'

# Create
  get '/posts/new' => 'posts#new'
  post '/posts/create' => 'posts#create'
  
  # Read
  
  get '/posts/show/:post_id' => 'posts#show'
  
  # Update
  get 'posts/edit/:post_id' => 'posts#edit'
  post '/posts/update/:post_id' => 'posts#update'
  
  # Delete
  post '/posts/destroy/:post_id' =>'posts#destroy'
  
  
  #get은 요청 post는 제출
  
  # Comments
  # Create
  post '/posts/show/:post_id/comments/create' => 'comments#create'
  
  # Destroy
  post '/posts/show/:post_id/comments/destroy/:comment_id' => 'comments#destroy'
end

