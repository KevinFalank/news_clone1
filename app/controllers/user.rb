get '/users/new' do
  erb :new_user
end

post '/users/new' do
  user = params[:user]
  new_user = User.create(email: user["email"], name: user["name"], password: user["password"])
  session[:user_id] = new_user.id
  redirect '/'
end
