require_relative 'model.rb'

system 'clear'

# item = Item.new
# item.title = ''
# item.content = ''
# item.save!

# item = Item.new
# item.title = Faker::Lorem.word.capitalize
# item.content = Faker::Lorem.paragraph
# item.save!

# Item.all.each do |i|
# 	puts "заголовок: '#{i.title}'"
# 	puts "содержимое: '#{i.content}'"
# 	puts ''
# end

Item.where.not(title: '').each_with_index {|i,index| 
	puts "#{index}: #{i.title}"
}