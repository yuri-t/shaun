class FavoriteSite::SearchForm
  include ActiveModel::Model

  attr_accessor :user, :url, :rate

  def search
  	rel = FavoriteSite.eager_load(:admin_user).all
  	rel = rel.where(Admin::User.arel_table[:name].matches("%#{user}%")) if user.present?
  	rel = rel.where(rel.arel_table[:url].matches("%#{url}%")) if url.present?
  	# rel = rel.where('url like %' + url + "%")
  	rel = rel.where(rel.arel_table[:rate].gteq(rate)) if rate.present?
  	rel
  end
end