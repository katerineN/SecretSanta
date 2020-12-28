class User<ApplicationRecord
  validates :name_user, presence: true
  validates :email, presence: true
  belongs_to :group
  user.email = auth.info.email
end