class User < ApplicationRecord

  has_many :trips

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

  validates :username,
            :uniqueness => true,
            :length => {:within => 8..25}

  validates :email,
            :uniqueness => true,
            :format => EMAIL_REGEX

  validates :phone,
            :uniqueness =>true

end
