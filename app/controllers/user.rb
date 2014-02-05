get '/users/new' do
  erb :new_user
end

post '/users/new' do
  user = params[:user]
  new_user = User.create(email: user["email"], name: user["name"], password: user["password"])
  session[:user_id] = new_user.id
  redirect '/'
end



get '/users/:user_id/comments' do

end

get '/users/:user_id/posts' do
  @posts = Post.where("user_id = ?", params[:user_id])
  erb :posts
end

get '/users/:user_id' do
  @user = User.find(params[:user_id])
  erb :user
end
