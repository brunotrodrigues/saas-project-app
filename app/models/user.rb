class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :confirmable, :recoverable, :rememberable, :validatable
  acts_as_universal_and_determines_authent
  has_one :member, :dependent => :destroy
end
