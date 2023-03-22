10.times do
  Language.create([
    { 
      name: Faker::ProgrammingLanguage.name
    }
  ])
end


50.times do

Course.create([{
	name: Faker::Educator.course_name,
	description: Faker::Lorem.paragraph(sentence_count: 20),
	language_id: Language.all.sample.id,
	category_id: Category.all.sample.id,

}])
	end

300.times do
  Section.create!([{
    name: Faker::Educator.subject,
    description: Faker::Lorem.paragraph(sentence_count: 2),
    course_id: Course.all.sample.id,
  }])
end


400.times do
  Lecture.create!([{
    name: Faker::Educator.course_name,
    url: Faker::Internet.url,
    description: Faker::Lorem.paragraph(sentence_count: 2),
    section_id: Section.all.sample.id,
  }])
end