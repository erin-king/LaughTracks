class Comedian < ActiveRecord::Base
  has_many :specials

  validates :name, presence: true
  validates :age, presence: true

end
# 
# validates :title, presence: true #one way to do it #only takes one column at a time
# validates :length, presence: true
#
# # validates_presence_of :title
# # validates_presence_of :title, :length #allow for mutliple columns, use ","
