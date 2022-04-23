
require_relative 'fundrequest'

project1 = Project.new("Alpha",100,1000)
project2 = Project.new("beta", 500, 2000)
project3 = Project.new("gamma", 100, 3000)

projects = FundRequest.new("VC Startup Projects")
puts projects.title
projects.add_project(project1)
projects.add_project(project2)
projects.add_project(project3)
projects.request_funding

project4 = Project.new("sigma", 200, 5000)
project5 = Project.new("theta", 400, 2000)
project6 = Project.new("omega", 1300, 7000)

projects = FundRequest.new("Ask my parents for money")
puts projects.title
projects.add_project(project4)
projects.add_project(project5)
projects.add_project(project6)
projects.request_funding
