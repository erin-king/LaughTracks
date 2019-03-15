class Comedian < ActiveRecord::Base
  has_many :specials

  validates :name, presence: true
  validates :age, presence: true

  def self.average_age
    average(:age)
  end

end

# # validates_presence_of :title
# # validates_presence_of :title, :length #allow for mutliple columns, use ","
