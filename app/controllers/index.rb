get '/' do
  @posts = Post.all
  erb :index
end

get '/posts/new' do
  erb :new_post
end

# post '/posts/new' do
#   @post = params[:post]

# end

get '/posts/:post_id' do

  @post = Post.find(params[:post_id])
  @comments = @post.comments.sort_by { |comment|  comment.created_at}
  @user = @post.user
  erb :post

end
