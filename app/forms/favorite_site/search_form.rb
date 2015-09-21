class FavoriteSite::SearchForm
  include ActiveModel::Model

  attr_accessor :user, :url, :rate
end