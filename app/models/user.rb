class User < ApplicationRecord
  has_secure_password
  has_many :reviews, dependent: :destroy

  validates :username, presence: true,
                     format: /\A[A-Z0-9]+\z/i,
                     uniqueness: { case_sensitive: false }
  validates :name, presence: true
  validates :email, presence: true,
                  format: /\A\S+@\S+\z/,
                  uniqueness: { case_sensitive: false }



  def self.authenticate(email, password)
    user = User.find_by(email: email)
    user && user.authenticate(password)
  end

end
