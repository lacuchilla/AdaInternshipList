# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
company_list = [
{name: "Amazon", location: "410 Terry Ave North, Seattle, WA 98109", description: "Online Retail", website: "http://www.amazon.com"},
{name: "Artefact", location: "619 Western Ave #500, Seattle, WA 98104", description: "Product Design/Testing Consultancy", website: "https://www.artefactgroup.com"},
{name: "CenturyLink", location: "1600 7th Ave, Seattle, WA 98101", description: "Communications (phone/internet/cable)", website: "http://www.centurylink.com"},
{name: "Chef", location: "619 Western Ave Suite 400, Seattle, WA 98104", description: "IT Automation", website: "https://www.chef.io"},
{name: "EnergySavvy", location: "159 S Jackson St #420, Seattle, WA 98104", description: "Utility Cloud Solutions", website: "https://www.energysavvy.com"},
{name: "Enlearn", location: "2815 Eastlake Ave E #135, Seattle, WA 98102", description: "Education, Machine Learning, Learning Analytics", website: "http://www.enlearn.org"},
{name: "Estately", location: "1809 1550 7th Ave, Seattle, WA 98101", description: "Real Estate", website: "http://www.estately.com"},
{name: "Expedia", location: "333 108th Avenue NE, Bellevue, WA 98004", description: "Travel", website: "https://www.expedia.com"},
{name: "Isilon", location: "505 1st Avenue South #600, Seattle, WA 98104", description: "Network Storage", website: "http://www.emc.com/en-us/storage/isilon/index.htm"},
{name: "Moz", location: "1100 2nd Ave #500, Seattle, WA 98101", description: "SEO and Marketing", website: "https://moz.com"},
{name: "Nordstrom Personalization", location: "1617 6th Ave, Seattle, WA 98101", description: "Retail", website: "http://shop.nordstrom.com"},
{name: "Pacific Northwest National Laboratory (PNNL)", location: "1100 Dexter Ave N # 400, Seattle, WA 98109", description: "Scientific Research", website: "http://www.pnnl.gov"},
{name: "Redfin", location: "2025 1st Ave #500, Seattle, WA 98121", description: "Real Estate", website: "https://www.redfin.com"},
{name: "Skytap", location: "719 2nd Ave, Seattle, WA 98104", description: "Environments as a Service", website: "https://www.skytap.com"},
{name: "Socrata", location: "83 S King St #107, Seattle, WA 98104", description: "Open Data", website: "https://www.socrata.com"},
{name: "Zillow", location: "31, 1301 2nd Ave, Seattle, WA 98101", description: "Real Estate", website: "http://www.zillow.com"}
]

company_list.each do |company|
  Company.create(company)
end


person_list = [
  {name: "Caroline Harbitz", title: "Data Scientist", email: "caroline@nordstrom.com", company_id: 11},
  {name: "Gina Schmalzle", title: "Data Scientist", email: "gina@nordstrom.com", company_id: 11},
]
person_list.each do |person|
  Person.create(person)
end
