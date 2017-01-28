class User < ApplicationRecord
  # Direct associations

  has_many   :comments

  # Indirect associations

  has_many   :photos,
             :through => :comments,
             :source => :photo

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
