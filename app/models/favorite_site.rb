class FavoriteSite < ActiveRecord::Base
  belongs_to :admin_user, class_name: 'Admin::User'

  STAR = {one: 1, two: 2, three: 3, four: 4 ,five: 5}

end
