class User<ApplicationRecord
  validates :name_user, presence: true
  validates :email, presence: true
  belongs_to :group
end