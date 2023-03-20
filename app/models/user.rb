class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  has_many :dreams, dependent: :destroy  

  enum role: [:user, :admin, :moderator]
  after_initialize :set_default_role, :if => :new_record?
  def set_default_role
    self.role ||= :user
  end

  include PublicActivity::Model
  tracked

end
