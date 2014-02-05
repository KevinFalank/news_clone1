get '/' do
  @posts = Post.all
  erb :index
end

get '/posts/new' do
  if session[:user_id].nil?
    redirect '/user/login'
  else
    erb :new_post
  end
end

post '/posts/new' do
  post = params[:post]
  p params
  new_post = Post.create(title: post["title"], url: post["url"], user_id: session[:user_id])
  p new_post
  redirect '/'
end

get '/posts/:post_id' do

  @post = Post.find(params[:post_id])
  @comments = @post.comments.sort_by { |comment|  comment.created_at}
  @user = @post.user
  erb :post

end
