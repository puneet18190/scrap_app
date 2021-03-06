task :import_data => :environment do
require 'pry'
require 'csv'
csv_text = File.read('/vagrant/test1/blog1/public/data.csv')
csv = CSV.parse(csv_text, :headers => true)
arr=[]
csv.each_with_index do |row,i|
	puts i
  date = row[0]
  z=date.split("/")
  date = "#{z[0]}/#{z[1]}/20#{z[2]}"
  contributor = row[1]
  contributor_detail = row[2]
  candidate_name = row[3]
  candidate_1 = row[4]
  committee_id = row[5]
  committee_name = row[6]
  schedule_1 = row[7].nil? ? "" : (row[7].split(" - ")[1].nil? ? "" : row[7].split(" - ")[1].split(" ")[0])
  schedule_2 = row[8].nil? ? "" : (row[8].split(" - ")[1].nil? ? "" : row[8].split(" - ")[1].split(" ")[0])
  amount = row[11]
  link = row[12]
  
  year = committee_name.empty? ?  "" : (committee_name.split(" ").last.to_i != 0 ? committee_name.split(" ").last : "")

  unless arr.include?(committee_id)
  	arr << committee_id
	  a=CaliforniaCountiesCampaignFinanceCandidate.new
	  a.county = 'Los Angeles'
		a.state = 'California'
		a.full_name = candidate_name
		a.last_name = candidate_name.split(" ").first
		a.first_name = candidate_name.split(" ").last
		a.current_occupation = candidate_1
		a.save!

		b=CaliforniaCountiesCampaignFinanceCommittee.new
		b.county = 'Los Angeles'
		b.committee_name = committee_name
		b.committee_number = committee_id
		b.election_year = year
		b.candidate_id= a.id
		b.data_source_url = link
		b.data_source_state = 'California'
		b.save!
	else
		b=CaliforniaCountiesCampaignFinanceCommittee.where(committee_number: committee_id).first
	end

	c=CaliforniaCountiesCampaignFinanceContributor.new
	c.county = 'Los Angeles'
	c.state = 'California'
	c.job_title = ""
	c.employer = contributor_detail
	c.name = contributor
	c.save!

	d=CaliforniaCountiesCampaignFinanceContribution.new
	d.source_agency_org = 'Los Angeles County Recorder'
	d.source_agency_id = '645301679'
	d.county = 'Los Angeles'
	d.date = Date.strptime(date, "%m/%d/%Y")
	d.amount = amount.to_f
	d.committee_id = b.id 
	d.contributor_id = c.id
	d.type = schedule_2
	d.type2 = schedule_1
	d.save!
end
end