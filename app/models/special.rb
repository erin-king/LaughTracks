class Special < ActiveRecord::Base
  belongs_to :comedian

  validates :name, presence: true
end

#relationships 1:1 (person to SSN)
#1:many (teacher to students) AR can model this for us!
