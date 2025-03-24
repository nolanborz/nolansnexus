# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#   t.string "title"
# t.text "content"
# t.text "summary"
# t.datetime "published_at"
Article.destroy_all
puts "Did we clear all them articles?"

articles = [
  { title: "The Golden Rule",
    summary: "This is the summary of the golden rule",
    content: "The Golden Rule is the principle of treating others as one would want to be treated by them. It is sometimes called an ethics of reciprocity, meaning that you should reciprocate to others how you would like them to treat you (not necessarily how they actually treat you). Various expressions of this rule can be found in the tenets of most religions and creeds through the ages. The maxim may appear as a positive or negative injunction governing conduct: Treat others as you would like others to treat you (positive or directive form) Do not treat others in ways that you would not like to be treated (negative or prohibitive form) What you wish upon others, you wish upon yourself (empathetic or responsive form)",
    published_at: 2.days.ago },
  {
    title: "Second Article With Longer Title",
    summary: "This summary explains what the second article covers.",
    content: "Content with multiple paragraphs...\n\nMore detailed information...\n\nConclusion paragraph...",
    published_at: 1.week.ago
  },
  {
    title: "Third Article Title",
    summary: "A summary of the third and most recent article.",
    content: "Introduction to the topic...\n\nDetailed explanation with examples...\n\nFinal thoughts and conclusion...",
    published_at: Time.current
  }
]

articles.each do |article_attributes|
  Article.create!(article_attributes)
end

puts "Created #{articles.count} new articles."
