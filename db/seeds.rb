# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#https://i.homeadore.com/2013/02/002-hilltop-house-jordan-iverson-signature-homes.jpg"
# Examples:

User.create([
   {name: 'Braelan', password_digest: 'test', session_token: 'test', email: 'test.gmail.com'},
   {name: 'Adrian', status: 'mentor', password_digest: 'test', session_token: 'test', uid: 'test'},
   {name: 'Jessica', password_digest: 'test', session_token: 'test', provider: 'twitter'},
   {name: 'Jeffrey', password_digest: 'test', session_token: 'test', image_url: 'image.com/image'}
   ])
#

homes = [
"http://www.atlantamagazine.com/wp-content/uploads/sites/12/2016/01/0116_sessions01_jherr_oneuseonly-400x400.jpg",
"http://s.hswstatic.com/gif/buying-house1.jpg",
"http://www.firststephomeinspections.com/j0399693.jpg",
"http://img1.sunset.timeinc.net/sites/default/files/image/2014/10/400xvariable/idea-house-manhattan-beach-yard-california-modern-1114-l.jpg",
"https://i.homeadore.com/2013/02/002-hilltop-house-jordan-iverson-signature-homes.jpg",
"http://www.pressherald.com/wp-content/uploads/2016/02/8-10-Outlook-Ave-Saco-ME-large-009-31-Back-of-House-1500x1000-72dpi1-250x250.jpg",
"https://scontent.cdninstagram.com/t51.2885-15/s320x320/e35/10011514_154307861604394_1789212058_n.jpg?ig_cache_key=MTE1NjY4NDAxNTI4MDM0NDI0Mw%3D%3D.2",
"http://asset.visitcanberra.com.au/atdw/0002/16/thumb_115215_atdw_small.jpeg",
"https://assets.dwell.com/sites/default/files/styles/masonry_view/public/outside-providence-family-summer-home-rhode-island-facade-cypress-cladding-marsh-square.jpg?itok=TSM0czni",
"https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Eisenhower_familyhome.jpg/250px-Eisenhower_familyhome.jpg",
"http://cdn.patch.com/users/86497/2016/02/T300x300/20160256b50bf8296f3.jpg",
"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQXYj8MhcMMxl3tHvrUfDUl9xIqAvs0hLJtVHvnWs-xz2qP8mfg",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS5JNZhFYyxlC09wYkQAQ2RgDlsp8hjS-0_zXWnAXfU3juzPwo9w",
"https://c2.staticflickr.com/2/1484/23966000843_b1a9c88125_b.jpg",
"http://proprofs-cdn.s3.amazonaws.com/images/games/user_images/misc/2014589628.jpg",
"https://assets.dwell.com/sites/default/files/styles/masonry_view/public/estomba-house-buenos-aires-argentina-bedroom-sliding-outdoor.jpg?itok=oo5uc9ZV",
"http://s3-media4.fl.yelpcdn.com/bphoto/6hZctiyv_Y6Cz4ECwst1rA/ls.jpg",
"http://www.ifonly.com/media/celebrities/618/philip_johnson_glass_house_celebrity_marquee_image_ifonly_300x300_3.jpg",
"http://s3-media2.fl.yelpcdn.com/bphoto/iAcMwcvXSuRv70l8B8pdfQ/ls.jpg",
"http://s3-media2.fl.yelpcdn.com/bphoto/zrvRtHFbJVL6bBdW1r8WXg/ls.jpg",
"http://s3-media4.fl.yelpcdn.com/bphoto/3_sx0BZl4lHsnsbMBelIQw/ls.jpg",
"http://s3-media3.fl.yelpcdn.com/bphoto/swdgMWxQpCHVFAR9uvVcOw/ls.jpg",
"http://s3-media2.fl.yelpcdn.com/bphoto/ozbVKmmLFq5atkJs7OIDwA/ls.jpg",
"http://cdn.stylisheve.com/wp-content/uploads/2013/09/Sumptuous-Coastal-House-on-Spain%E2%80%99s-Costa-Brava-in-Tossa-De-Mar-from-Sotheby%E2%80%99s_2-150x150.jpg",
"http://img1.coastalliving.timeinc.net/sites/default/files/image/2012/11/san_juan/1112_san-juan-lavender-field-l.jpg",
"http://www.notempire.com/images/uploads/merrilwrighttomkundighouse.jpg",
"http://loweconstruction.net/wp-content/uploads/2013/03/cabin-th-380x380.jpg",
"http://assets-s3.mensjournal.com/img/essential/the-beach-house-on-lopez-island-san-juan-washington-best-beach-houses-to-rent/298_298_the-beach-house-on-lopez-island-san-juan-washington-best-beach-houses-to-rent.jpg",
"http://www.notempire.com/images/uploads/dar_baraka.jpg",
"https://s-media-cache-ak0.pinimg.com/236x/13/71/51/1371513a24baf714c1c45a226c2d07b6.jpg",
"http://www.outwardbound.org/lib/image/thumbs/2016_Course_Title_Page_Photos_NWOBS_San_Juan_Islands_Sea_Kayaking_Women_sea-kayak-backpacking-Luke-ONeil_9_WebEdit_530_530_crop_fill.jpg",
"http://st.hzcdn.com/fimgs/01b1f75306005605_8546-w239-h239-b0-p0--contemporary-exterior.jpg",
"https://s-media-cache-ak0.pinimg.com/564x/a5/93/80/a59380d9be1ce5636b09f63969246a1b.jpg",
"http://www.livegreenblog.com/media/photos/38/8442/sustainable_backyard_house_1.jpg",
"http://thsproduction.s3.amazonaws.com/upload/photos/blog/150805_12_12_20_1.jpg",
"http://www.pualingo.com/wp-content/uploads/2013/05/beautiful-house-pleasure-bubble.jpg",
"http://www.hafblog.com/wp-content/uploads/2014/08/beautiful-home-interior-catalog.jpg",
"http://islandrealty.nf/wp-content/uploads/et_temp/2014-08-30-00.48.34-62747_293x293.jpg"]






  homes.each do |home|
    Post.create({user_id: 2, front: 'Narwhals need Protection',
      front_img: home, back: 'Come visit our beautiful home.'})
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
