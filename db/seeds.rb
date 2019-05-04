# This file should contain all the record creation needed to seed the database with its default values.

# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#user = CreateAdminService.new.call
#puts 'CREATED ADMIN USER: ' << user.email 
#puts 'CREATED ADMIN PASSWORD: ' << user.password
#puts user.role
user = User.create
user.email="user@example.com"
user.password= "changeme"
user.password_confirmation="changeme"
user.admin!

puts user.email
puts user.password
puts user.role
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

questions = [{:qtype => 'Multiple Choice',
              :topic => 'General' ,
              :content => 'What color is the sky?',
              :option1 => 'red',
              :option2 => 'green',
              :option3 => 'blue',
              :option4 => 'yellow',
              :answer => 'option3',
              :explanation => 'It is always blue unless you pollute it.', 
              :display => true, :uid => 1},
             {:qtype => 'Multiple Choice',
              :topic => 'Math' ,
              :content => 'What is \(\frac{1+2^2}{5}\)?',
              :option1 => '5',
              :option2 => '1',
              :option3 => '\(\frac{1}{3}\)',
              :option4 => '0',
              :answer => 'option2',
              :explanation => 'A number divided by itself is 1.', 
              :display => true, :uid => 1},
             {:qtype => 'Multiple Choice',
              :topic => 'General' ,
              :content => 'For a binary search algorithm to work, it is necessary that the array (list) must be',
              :option1 => 'popped out of a stack',
              :option2 => 'sorted',
              :option3 => 'unsorted',
              :option4 => 'in a heap',
              :answer => 'option2',
              :explanation => 'As binary search divides the list and selects a the sub-list to extend search based on comparison of values, it becomes necessary that the array (list) must be in sorted form.', 
              :display => true, :uid => 1},
             {:qtype => 'Multiple Choice',
              :topic => 'General' ,
              :content => 'For a binary search algorithm to work, it is necessary that the array (list) must be',
              :option1 => 'popped out of a stack',
              :option2 => 'sorted',
              :option3 => 'unsorted',
              :option4 => 'in a heap',
              :answer => 'option2',
              :explanation => 'The array(list) has to be sorted so you can use binary search', 
              :display => true, :uid => 1},  
             {:qtype => 'Multiple Choice',
              :topic => 'General' ,
              :content => 'Which one of the below mentioned is linear data structure',
              :option1 => 'Queue',
              :option2 => 'Stack',
              :option3 => 'Arrays',
              :option4 => 'All of the above',
              :answer => 'option4',
              :explanation => 'All mentioned data structures are linear in nature.', 
              :display => true, :uid => 1},
             {:qtype => 'Multiple Choice',
              :topic => 'General' ,
              :content => 'Quick sort algorithm is an example of',
              :option1 => 'Greedy approach',
              :option2 => 'Improved binary search',
              :option3 => 'Dynamic Programming',
              :option4 => 'Divide and conquer',
              :answer => 'option4',
              :explanation => 'Quick sort divides the list using pivot and then sorts in recursive manner. It uses divide and conquer approach.', 
              :display => true, :uid => 1},
             {:qtype => 'Multiple Choice',
              :topic => 'General' ,
              :content => 'Access time of a binary search tree may go worse in terms of time complexity upto',
              :option1 => 'O(n^2)',
              :option2 => 'O(nlogn)',
              :option3 => 'O(n)',
              :option4 => 'O(1)',
              :answer => 'option3',
              :explanation => 'If all n values in the tree are in the one side of this BST, its O(n)', 
              :display => true, :uid => 1},
             {:qtype => 'Multiple Choice',
              :topic => 'General' ,
              :content => 'When does the ArrayIndexOutOfBoundsException occur?',
              :option1 => 'Compile-time',
              :option2 => 'Run-time',
              :option3 => 'Not an error',
              :option4 => 'None of the mentioned',
              :answer => 'option2',
              :explanation => 'ArrayIndexOutOfBoundsException is a run-time exception and the compilation is error-free.', 
              :display => true, :uid => 1},
            ]

questions.each do |question|
    Question.create!(question)
end
