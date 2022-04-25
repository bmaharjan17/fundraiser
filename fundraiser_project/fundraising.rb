
require_relative 'fundrequest'

project1 = Project.new("Alpha",1000,100)
project2 = Project.new("beta", 5000, 200)
project3 = Project.new("gamma", 10000, 3000)

projects = FundRequest.new("VC Startup Projects")
puts projects.title
projects.add_project(project1)
projects.add_project(project2)
projects.add_project(project3)
projects.request_funding

project4 = Project.new("sigma", 20000, 5000)
project5 = Project.new("theta", 4000, 2000)
project6 = Project.new("omega", 13000, 7000)

projects = FundRequest.new("Ask my parents for money")
puts projects.title
projects.add_project(project4)
projects.add_project(project5)
projects.add_project(project6)
projects.request_funding
