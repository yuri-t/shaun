class FavoriteSite::EditForm
  attr_accessor :admin_user, :url, :rate

  def favorite_site
  end

  def favorite_site=(favorite_site)
  end

  def save
  	unless valied?
  	  return false
  	end


  end
end