require_relative 'config/app.rb'

class Item < ActiveRecord::Base
	validates :title, presence: true
	validates :content, presence: true
end

# item = Item.new
# item.title = Faker::Lorem.word.capitalize
# item.content = Faker::Lorem.paragraph
# item.save!

Item.where(title: nil).find_each do |i|
	puts "title: '#{i.title}'"
end