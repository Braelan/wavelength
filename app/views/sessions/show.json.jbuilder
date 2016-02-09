json.id @current_user.id
json.name @current_user.name

if @current_user.authentications[0]
json.image @current_user.authentications[0].image
end
