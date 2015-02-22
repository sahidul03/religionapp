class User < ActiveRecord::Base
  validates :age, :numericality => { :greater_than_or_equal_to => 0 }
  validates :name, presence: true

  belongs_to :category
end
