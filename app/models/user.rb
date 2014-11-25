class User < ActiveRecord::Base
  has_secure_password
  validates :password, :email, :name, presence: true, if: :new_record?
  validates :email, uniqueness: true, if: :new_record?

  validates :twitter_username, format:{without:/\W/}, allow_blank:true, if: :social?

  def personal?
    status.try(:include?, 'personal')
  end
  def social?
    status.try(:include?, 'social')
  end
end
