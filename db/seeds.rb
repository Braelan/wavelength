# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:

User.create([
   {name: 'Braelan', password_digest: 'test', session_token: 'test', email: 'test.gmail.com'},
   {name: 'Adrian', status: 'mentor', password_digest: 'test', session_token: 'test', uid: 'test'},
   {name: 'Jessica', password_digest: 'test', session_token: 'test', provider: 'twitter'},
   {name: 'Jeffrey', password_digest: 'test', session_token: 'test', image_url: 'image.com/image'}
   ])
#


  40.times do
    Post.create({user_id: 2, front: 'Narwhals need Protection',
      front_img: "https://cdn.filepicker.io/api/file/JrFeVPHIQpuxaR02yAoH", back: 'save the cetaceans'})
  end
 # can create a post with many recipients.  When it is created, multiple recipient
 # objects are also created
Recipient.create([{post_id: 1, user_id:1},
                  {post_id: 2, user_id: 2},
                  {post_id: 3, user_id: 3},
                  {post_id: 3, user_id: 4}
  ])
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
