post '/comments/new' do
  @text = params[:text]
  @post_id = params[:post_id]
  Comment.create(text: @text, user_id: session[:user_id], post_id: @post_id)
  redirect "posts/#{@post_id}"
end
