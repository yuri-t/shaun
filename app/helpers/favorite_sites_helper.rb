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

  def search_rate_select_values
  	{
  	  '星1つ以上' => FavoriteSite::STAR[:one],
  	  '星2つ以上' => FavoriteSite::STAR[:two],
  	  '星3つ以上' => FavoriteSite::STAR[:three],
  	  '星4つ以上' => FavoriteSite::STAR[:four],
  	  '星5つ以上' => FavoriteSite::STAR[:five]
  	}
  end
end
