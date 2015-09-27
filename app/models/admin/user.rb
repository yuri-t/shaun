class Admin::User < ActiveRecord::Base
  validates_uniqueness_of :name
end
