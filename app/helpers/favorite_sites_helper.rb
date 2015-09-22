module FavoriteSitesHelper
  def rate_image(rate)
    image_name = ""
    case rate
    when 1 then
      image_name = "rate1.png"
	when 2 then
	  image_name = "rate2.png"
	when 3 then
	  image_name = "rate3.png"
	when 4 then
	  image_name = "rate4.png"
	when 5 then
	  image_name = "rate4.png"
  	end

  	image_name
  end
end
