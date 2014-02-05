User.create(name: "Kevin", email: "kevin@gmail.com", password: "1234")
User.create(name: "Tara", email: "tara@gmail.com", password: "1234")

Post.create(title: "Hello world!", url: "www.world.com", user_id: 1)
Post.create(title: "Hello!", url: "www.hello.com", user_id: 2)

Comment.create(text:"this is awesome", post_id: 1, user_id: 1)
Comment.create(text:"this is also awesome", post_id: 1, user_id: 1)

Comment.create(text:"have a great day", post_id: 2, user_id: 2)
Comment.create(text:"I will", post_id: 2, user_id: 2)
