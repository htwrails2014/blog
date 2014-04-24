class Article < ActiveRecord::Base
	validates_presence_of :title, :text
	validates :title, uniqueness: true
	has_many :comments, dependent: :destroy

	http_basic_authenticate_with name: "admin", password: "secret", except: [:index, :show]
end
