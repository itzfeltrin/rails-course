module ApplicationHelper
  def gravatar_for(user, options = { size: 80 })
    hash = Digest::MD5.hexdigest(user.email)
    size = options[:size]
    url = "https://gravatar.com/avatar/#{hash}?size=#{size}"
    image_tag(url, alt: user.username, class: "rounded mx-auto d-block shadow")
  end
end
