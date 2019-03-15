class Comedian < ActiveRecord::Base
  has_many :specials

  validates :name, presence: true
  validates :age, presence: true

  def self.average_age
    average(:age)
  end

  def self.unique_hometown_list
    distinct.pluck(:hometown)
  end

  def self.average_specials_runtime
    joins(:specials).average(:runtime)
  end

end

# # validates_presence_of :title
# # validates_presence_of :title, :length #allow for mutliple columns, use ","
