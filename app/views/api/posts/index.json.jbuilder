json.array! @posts do |post|
  json.id  post.id
  json.front  post.front
  json.front_img  post.front_img
  json.back  post.back
  json.back_img post.back_img
  json.updated_at post.updated_at
end

#
# json.hey 'check'
