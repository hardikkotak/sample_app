module UsersHelper
  def gravatar_for(user)
    #gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    #gravatar_url = "http://gravatar.com/avatar/#{gravatar_id}.png"
    image_tag('my.jpg',:alt=>user.name,:class=>"gravatar",:height=>100 )
  end
end
