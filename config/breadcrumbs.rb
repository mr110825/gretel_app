crumb :root do
  link "Home", root_path
end

crumb :user_new do
  link "ユーザー登録", new_user_path
  parent :root
end

crumb :user_show do |user|
  link "#{user.name}さんの詳細", user_path(user)
  parent :root
end

crumb :user_edit do |user|
  link "ユーザー編集"
  parent :user_show, user
end