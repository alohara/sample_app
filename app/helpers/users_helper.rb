module UsersHelper
  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
	#Original gravatar code that I can't get to work
	#gravatar_url = "https://secure.gravatar.com/avatars/#{gravatar_id}.png"
	
	#Testing this Amazon JPG to see if the URL retrieval works
	#gravatar_url= "http://s3.amazonaws.com/codecademy-blog/assets/f3a16fb6.jpg"
	gravatar_url= "rails.png"
	image_tag(gravatar_url, alt: user.name, class: "gravatar")
	#Default because I can't get Gravatar to work, use this after Amazon test
	#image_tag("rails.png", alt: user.name, class: "gravatar")
  end
end
