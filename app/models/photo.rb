class Photo < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :comments,
             :source => :user

  # Validations

end
