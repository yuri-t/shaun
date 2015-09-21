class FavoriteSite < ActiveRecord::Base
	belongs_to :admin_user, class_name: 'Admin::User'
end
