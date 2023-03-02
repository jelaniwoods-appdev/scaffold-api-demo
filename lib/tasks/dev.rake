namespace :dev do
  desc "Sample data"
  task prime: :environment do
    Post.destroy_all
    ActiveRecord::Base.connection.reset_pk_sequence!('posts')
    User.destroy_all
    ActiveRecord::Base.connection.reset_pk_sequence!('users')
    
    user = User.create(
      email: "alice@example.com",
      password: "password"
    )

    titles = [
      "A good day for baking a cake!",
      "Y'all ever just...?",
      "The secret about Monster Energy",
      "Haters will say I'm lying...",
      "I'm doing the March Challenge",
    ]
    titles.each do |title|
      user.posts.create(
        title: title,
        body: "you just got CLICK-BAITED 😏"
      )
    end
  end

end
