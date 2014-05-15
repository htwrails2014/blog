class Article < ActiveRecord::Base
	validates_presence_of :title, :text
	validates :title, uniqueness: true
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :categories
end
