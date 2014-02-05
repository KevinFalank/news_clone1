get '/' do
  @posts = Post.all
  erb :index
end

get '/posts/:post_id' do

  @post = Post.find(params[:post_id])
  @comments = @post.comments.sort_by { |comment|  comment.created_at}
  @user = @post.user
  erb :post

end
