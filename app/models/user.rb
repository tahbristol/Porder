require 'bcrypt'
class User < ActiveRecord::Base
  has_many :requests
  has_secure_password


  def slug
    self.name.gsub(" ", "-").downcase
  end

  def self.find_by_slug(slug)
    self.all.find do |user|
      user.slug == slug
    end
  end

end
