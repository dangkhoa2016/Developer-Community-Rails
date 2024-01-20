# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


ActiveRecord::Base.transaction do

  100.times do |i|
    user = User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      username: "#{Faker::Name.first_name.downcase} #{i+10}",
      email: Faker::Internet.email,
      contact_number: Faker::PhoneNumber.phone_number_with_country_code,
      street_address: Faker::Address.street_address,
      city: Faker::Address.city,
      state: Faker::Address.state,
      country: Faker::Address.country,
      pincode: Faker::Address.postcode,
      date_of_birth: (Date.today + rand(1..30).days) - rand(24..36).years,
      profile_title: User::PROFILE_TITLE.sample,
      password: 'password',
      about: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
      )
    puts "User #{user.email} created successfully"
  end


  # 100.times do |i|
  #   user = User.create(
  #     contact_number: Faker::PhoneNumber.phone_number_with_country_code
  #     )
  #   puts "contact_number #{i+1} created successfully"
  # end


  # job = Job.create(
  #   title: "Full Stack ROR Developer",
  #   employee_type: "Full time",
  #   location: "Indore",
  #   salary: "10000",
  #   description: "Full stack ROR developer",
  #   qualification: "B.E",
  #   job_category_id: '1'
  # )

  # job_categories = [
  #   'Software Development',
  #   'Marketing',
  #   'Sales',
  #   'Finance',
  #   'Human Resources',
  #   'Customer Service',
  #   'Engineering',
  #   'Design',
  #   'Business Development'
  # ]

  # job_categories.each do |category_name|
  #   JobCategory.create(name: category_name)
  # end

  # Create dummy articles associated with users
  Article.create(
      title: 'First Article', 
      content: 'Content of the first article.', 
      user_id: 1
  )
  Article.create(
      title: 'Second Article', 
      content: 'Content of the second article.', 
      user_id: 2
  )
  Article.create(
      title: 'Third Article', 
      content: 'Content of the third article.', 
      user_id: 50
  )

  # Create dummy events associated with users
  Event.create(
    event_type: 'Workshop',
    event_name: 'Ruby on Rails Basics',
    start_date: Date.today + 7.days,
    end_date: Date.today + 8.days,
    start_time: '09:00 AM',
    end_time: '05:00 PM',
    description: 'An introductory workshop on Ruby on Rails basics.',
    user_id: 1
  )

  Event.create(
    event_type: 'Conference',
    event_name: 'Tech Summit 2023',
    start_date: Date.today + 30.days,
    end_date: Date.today + 31.days,
    start_time: '10:00 AM',
    end_time: '06:00 PM',
    description: 'A technology summit featuring various sessions and keynotes.',
    user_id: 2
  )

  # Create dummy groups associated with users
  Group.create(
    name: 'Ruby Enthusiasts',
    description: 'A group for passionate Ruby developers.',
    industry: 'Technology',
    location: 'Global',
    group_type: 'Online',
    user_id: 1
  )

  Group.create(
    name: 'Startup Networking',
    description: 'Connect with fellow entrepreneurs and share insights.',
    industry: 'Entrepreneurship',
    location: 'Various',
    group_type: 'Offline',
    user_id: 2
  )


  # Create sample job categories
  job_category1 = JobCategory.create(name: 'Software Development')
  job_category2 = JobCategory.create(name: 'Marketing')

  # Create dummy jobs associated with job categories and users
  Job.create(
    title: 'Ruby Developer',
    description: 'Looking for a skilled Ruby developer with experience in Rails.',
    employee_type: 'Full-time',
    location: 'Remote',
    salary: '$80,000 - $100,000',
    qualification: 'Bachelor\'s degree in Computer Science or related field',
    status: 'Open',
    job_category_id: 1,
    user_id: 1,
    page_id: 2
  )

  Job.create(
    title: 'Marketing Manager',
    description: 'Seeking an experienced marketing manager for our new campaign.',
    employee_type: 'Contract',
    location: 'New York',
    salary: '$70,000 - $90,000',
    qualification: '5+ years of marketing experience',
    status: 'Open',
    job_category_id: 2,
    user_id: 2,
    page_id: 1
  )


  Page.create(
    title: 'Tech Solutions Inc.',
    content: 'Providing innovative tech solutions for businesses.',
    industry: 'Technology',
    website: 'https://www.techsolutions.com',
    organization_size: 'Large',
    organization_type: 'Corporate',
    user_id: 1,
    about: 'We specialize in developing cutting-edge software products.'
  )

  Page.create(
    title: 'Marketing Agency X',
    content: 'Full-service marketing agency focusing on digital marketing strategies.',
    industry: 'Marketing',
    website: 'https://www.marketingagencyx.com',
    organization_size: 'Medium',
    organization_type: 'Agency',
    user_id: 2,
    about: 'We help businesses grow through strategic marketing efforts.'
  )

  # Create dummy posts associated with users, pages, and groups
  Post.create(
    title: 'Introduction to Ruby on Rails',
    description: 'A beginner-friendly guide to Ruby on Rails.',
    user_id: 1,
    hidden: false
  )

  Post.create(
    title: 'Networking Event Announcement',
    description: 'Join us for our upcoming networking event!',
    user_id: 2,
    hidden: false
  )

  # Create dummy skills associated with users
  Skill.create(
    title: 'Ruby on Rails',
    user_id: 2
  )

  Skill.create(
    title: 'Digital Marketing',
    user_id: 2
  )

  Skill.create(
    title: 'JavaScript',
    user_id: 1
  )

  Skill.create(
    title: 'Graphic Design',
    user_id: 1
  )

  # Create dummy work experiences associated with users
  WorkExperience.create(
    start_date: Date.new(2018, 5, 1),
    end_date: Date.new(2021, 8, 31),
    job_title: 'Software Developer',
    employment_type: 'Full-time',
    location: 'San Francisco, CA',
    location_type: 'On-site',
    currently_working_here: false,
    description: 'Developed web applications using Ruby on Rails.',
    company: 'Tech Solutions Inc.',
    user_id: 1
  )

  WorkExperience.create(
    start_date: Date.new(2019, 9, 1),
    end_date: nil,
    job_title: 'Marketing Specialist',
    employment_type: 'Part-time',
    location: 'New York, NY',
    location_type: 'Remote',
    currently_working_here: true,
    description: 'Managed digital marketing campaigns and social media.',
    company: 'Marketing Agency X',
    user_id: 2
  )

end