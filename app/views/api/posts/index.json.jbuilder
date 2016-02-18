json.array! @posts do |post|
  json.id  post.id
  json.front  post.front
  json.front_img  post.front_img
  json.back  post.back
  json.back_img post.back_img
  json.upvotes post.post_upvotes.count
  json.lat post.lat
  json.lng post.lng
  json.updated_at post.updated_at

end

#
# json.hey 'check'
