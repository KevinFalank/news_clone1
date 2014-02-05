get '/users/signin' do
  erb :sign_in
end

get '/users/new' do
  erb :new_user
end

post '/users/signin' do
  @email = params[:email]
  @password = params[:password]
  user = User.where("email = ?", @email)[0]
  if user.password == @password
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/users/signin'
  end
end

post '/users/new' do
  user = params[:user]
  new_user = User.create(email: user["email"], name: user["name"], password: user["password"])
  session[:user_id] = new_user.id
  redirect '/'
end



get '/users/:user_id/comments' do
  @comments = Comment.where("user_id = ?", params[:user_id])
  erb :comments
end

get '/users/:user_id/posts' do
  @posts = Post.where("user_id = ?", params[:user_id])
  erb :posts
end

get '/users/:user_id' do
  @user = User.find(params[:user_id])
  erb :user
end
