class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :surname, :status, :email, :password, :password_confirmation, :phone, :country, :city,:about, :remember_me
  

  validates :name, presence: true

  belongs_to :userable, :polymorphic => true
  belongs_to :role
  has_many :post
  # attr_accessible :title, :body
end
