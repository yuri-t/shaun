class FavoriteSite::EditForm
  include ActiveModel::Model

  attr_accessor :id, :admin_user, :url, :rate

  # インスタンスの取得
  def favorite_site
    @favorite_site = id.present? ? FavoriteSite.find(id) : FavoriteSite.new
    @favorite_site.admin_user_id = Admin::User.find_by(name: admin_user).try(:id)
    @favorite_site.url = url
    @favorite_site.rate = rate
    @favorite_site
  end

  # インスタンスの設定
  def favorite_site=(favorite_site)
    @favorite_site = favorite_site

    self.id = favorite_site.id
    self.admin_user = favorite_site.try(:admin_user).try(:name)
    self.url = favorite_site.url
    self.rate = favorite_site.rate

    @favorite_site
  end

  # Modelのバリデーションを実行
  def valid
    favorite_site.valid?
  end

  def save
  	unless valid?
  	  return false
  	end
    favorite_site.save
  end
end