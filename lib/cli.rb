#our CLI Controller
require 'pry'
require 'pry-rescue'
require 'pry-stack_explorer'
require 'pry-doc'
#require_relative '.\lib\task.rb'
class Sw3p::CLI #< Sw3p::InteractiveRecord
	 
	def call 
		puts <<~ HEREDOC
		______________________________________________________
		Hello  Welcome to 
		Storm water Trackinglog Instance Creation Program
		______________________________________________________
		
		HEREDOC 
		menu 
	end 

	def menu 
		self.class.task_titles
		self.class.site_titles
	 	self.class.frequency_listing
	 	self.class.reporting_listing
		self.class.comments_titles
		self.class.goodbye
	end 

	def self.task_titles
		puts "Select from listing below by entering its listing ID accordingly

		For Example, for Task 1, Enter '1'

		To Exit: Enter '30' to Exit Program
	    ____________________________________________________________________________
	    1.Identify changes to Pollution Prevention Team
	    2.ID changes to non-stormwater discharges
	    3.ID changes to inventory of exposed mat'l
	    4.Updates to narrative of all potential pollutant sources
	    5.Site map update
	    6.Spills and Leaks Quarterly Updates Log
	    7.Best Management Practices
	    8.Spill Prevention and response measures
	    9.Maint Prog of Structural Controls: Manifest
	    10.Employee Training Program
	    11.Rain Gauge Monitoring
	    12.Benchmark Monitoring
	    13.Site Compliance Evaluation Report
	    14.Program Timeline for Pollution Measures and Controls Activities
	    15.Five Year Permit Renewal
	    16.Periodic Inspection with Checklist
	    17.Daily Monitoring Report of Numeric Effluent
	    18.City Engineer Inspection Report Response
	    19.Plan revisions log
	    20.MSGP copy
	    21.SW3P preparation
	    22.Spill prevention countermeasue control plan
	    23.FMD collaboration
	    24.Annual compliance signature page
	    25.Visual examination
	    26.COH SWQ permit renewal
	    27.Truck Wash manifest
	    ____________________________________________________________________________
	    "
	    user_input = gets.input.to_i
	    case user_input
	    when user_input == 1
	    	@task=Sw3p::CLI::Task.new(task:"Identify changes to Pollution Prevention Team")
	    when user_input == 2
	    	@task=Sw3p::CLI::Task.new(task:"ID changes to non-stormwater discharges")
	    when user_input == 3
	    	@task=Sw3p::CLI::Task.new(task:"ID changes to inventory of exposed mat'l")
	    when user_input == 4
	    	@task=Sw3p::CLI::Task.new(task:"Updates to narrative of all potential pollutant sources")
	    when user_input == 5
	    	@task=Sw3p::CLI::Task.new(task:"Site map update")
	    when user_input == 6
	   	    @task=Sw3p::CLI::Task.new(task:"Spills and Leaks Quarterly Updates Log")
	    when user_input == 7
	    	@task=Sw3p::CLI::Task.new(task:"Best Management Practices")
	    when user_input == 8
	    	@task=Sw3p::CLI::Task.new(task:"Spill Prevention and response measures")
	    when user_input == 9
	    	@task=Sw3p::CLI::Task.new(task:"Maint Prog of Structural Controls: Manifest")
	    when user_input == 10
	    	@task=Sw3p::CLI::Task.new(task:"Employee Training Program")
		when user_input == 11
	    	@task=Sw3p::CLI::Task.new(task:"Rain Gauge Monitoring")
	    when user_input == 12
	    	@task=Sw3p::CLI::Task.new(task:"Benchmark Monitoring")
	    when user_input == 13
	    	@task=Sw3p::CLI::Task.new(task:"Site Compliance Evaluation Report")
	    when user_input == 14
		    @task=Sw3p::CLI::Task.new(task:"Program Timeline for Pollution Measures and Controls Activities")
	    when user_input == 15
	    	@task=Sw3p::CLI::Task.new(task:"Five Year Permit Renewal")
	    when user_input == 16
		    @task=Sw3p::CLI::Task.new(task:"Periodic Inspection with Checklist")
	    when user_input == 17
	 	    @task=Sw3p::CLI::Task.new(task:"Daily Monitoring Report of Numeric Effluent")
	    when user_input == 18
	    	@task=Sw3p::CLI::Task.new(task:"City Engineer Inspection Report Response")
	    when user_input == 19
		    @task=Sw3p::CLI::Task.new(task:"Plan revisions log")
	    when user_input == 20
	    	@task=Sw3p::CLI::Task.new(task:"MSGP copy")
	    when user_input == 21
	    	@task=Sw3p::CLI::Task.new(task:"SW3P preparation")
		when user_input == 22
		    @task=Sw3p::CLI::Task.new(task:"Spill prevention countermeasue control plan")
		when user_input == 23
	    	@task=Sw3p::CLI::Task.new(task:"FMD collaboration")
	    when user_input == 24
	    	@task=Sw3p::CLI::Task.new(task:"Annual compliance signature page")
	    when user_input == 25
		    @task=Sw3p::CLI::Task.new(task:"Visual examination")
	    when user_input == 26
	    	@task=Sw3p::CLI::Task.new(task:"COH SWQ permit renewal")
	    when user_input == 27
		    @task=Sw3p::CLI::Task.new(task:"Truck Wash manifest")
	   	when user_input == 30
	    	self.goodbye
	    end
		self.site_titles
	 end 

	def self.site_titles
		puts "Select from listing below by entering its listing ID accordingly

		For Example, for Site 1, Enter '1'

		To Exit: Enter '30' to Exit Program
	    ____________________________________________________________________________
	    1. 5614 Neches
	    2. 11500 S Post Oak
	    3. 1245 Judiway
	    4. 1502 Central
	    5. 5900 Westpark
	    6. South ESC
	    7. 10875 SW Freeway
	    8. 2240 Central
	    9. 144000 Sommermeyer
	    10.5100 Sunbeam
	    11.5575 Kirkpatrick
	    12.9003 North Main
	    13.Westpark- COH Transfer Station
	    14.Sommermeyer-COH Transfer Station
	    15.Central- COH Transfer Station
	    ____________________________________________________________________________
	    "
	    user_input = gets.input.to_i
		case user_input
	    when user_input == 1
	   		@site=Sw3p::CLI::Site.new(site:"5614 Neches")
	    when user_input == 2
	    	@site=Sw3p::CLI::Site.new(site:"11500 S Post Oak")
	    when user_input == 3
	    	@site=Sw3p::CLI::Site.new(site:"1245 Judiway")
	    when user_input == 4
	    	@site=Sw3p::CLI::Site.new(site:"1502 Central")
	    when user_input == 5
	    	@site=Sw3p::CLI::Site.new(site:"5900 Westpark")
	    when user_input == 6
	    	@site=Sw3p::CLI::Site.new(site:"South ESC")
	    when user_input == 7
	    	@site=Sw3p::CLI::Site.new(site:"10875 SW Freeway")
	    when user_input == 8
	    	@site=Sw3p::CLI::Site.new(site:"2240 Central")
	    when user_input == 9
	    	@site=Sw3p::CLI::Site.new(site:"144000 Sommermeyer")
	    when user_input == 10
	    	@site=Sw3p::CLI::Site.new(site:"5100 Sunbeam")
		when user_input == 11
			@site=Sw3p::CLI::Site.new(site:"5575 Kirkpatrick")
	    when user_input == 12
	    	@site=Sw3p::CLI::Site.new(site:"9003 North Main")
	    when user_input == 13
	    	@site=Sw3p::CLI::Site.new(site:"Westpark- COH Transfer Station")
	    when user_input == 14
	    	@site=Sw3p::CLI::Site.new(site:"Sommermeyer-COH Transfer Station")
	    when user_input == 15
	    	@site=Sw3p::CLI::Site.new(site:"Central- COH Transfer Station")
	   	when user_input == 30 
	    	self.goodbye#EXIT CLI
	    end
	    self.frequency_listing
	 end 

	 def self.frequency_listing
		puts "Select from listing below by entering its listing ID accordingly

		For Example, for frequency 1, Enter '1'

		To Exit: Enter '30' to Exit Program
	    ____________________________________________________________________________
	    1.Daily, Instance
	    2.Weekly, Instance
	    3.Monthly, Instance
	    4.Quarterly, Instance
	    5.Annual, Instance
	    6.Instance
	    7.Semi-Annual, Instance
	    ____________________________________________________________________________
	    "
	    user_input = gets.input.to_i
		case user_input
	    when user_input == 1
	    	@frequency=Sw3p::CLI::Frequency.new(frequency:"Daily Instance")
	    when user_input == 2
	 	    @frequency=Sw3p::CLI::Frequency.new(frequency:"Weekly Instance")
	    when user_input == 3
	     	@frequency=Sw3p::CLI::Frequency.new(frequency:"Monthly Instance")
	    when user_input == 4
	    	@frequency=Sw3p::CLI::Frequency.new(frequency:"Quarterly Instance")
	    when user_input == 5
	    	@frequency=Sw3p::CLI::Frequency.new(frequency:"Annual Instance")
	    when user_input == 6
	    	@frequency=Sw3p::CLI::Frequency.new(frequency:"Instance")
	    when user_input == 7
	  		@frequency=Sw3p::CLI::Frequency.new(frequency:"Semi-Annual Instance")
	  	when user_input == 30
	  		self.goodbye
	  	end 
	    self.reporting_listing
	 end 

	 def self.reporting_listing
	 	puts "Select from listing below by entering its listing ID accordingly

		For Example, for Site 1, Enter '1'

		To Exit: Enter '30' to Exit Program
	    ____________________________________________________________________________
	    1.Deputy Assistant Director SW
	    2.Deputy Assistant Director SE
	    3.Deputy Assistant Director NE
	    4.Deputy Assistant Director NW
	    5.Recycling Division Manager
	    6.Recycling Division Westpark Superintendent
	    7.Recycling Division ESC Superintendent
	    8.Parks and Rec 
	    9.Project Manager
	    ____________________________________________________________________________
	    "
	    user_input = gets.input.to_i
		case user_input
	    when user_input == 1
	    	@reporting = Sw3p::CLI::Reporting.new(reporting:"Deputy Assistant Director SW")
	    when user_input == 2
		    @reporting = Sw3p::CLI::Reporting.new(reporting:"Deputy Assistant Director SE")
	    when user_input == 3
	   	    @reporting = Sw3p::CLI::Reporting.new(reporting:"Deputy Assistant Director NE")
	    when user_input == 4
	    	@reporting = Sw3p::CLI::Reporting.new(reporting:"Deputy Assistant Director NW")
	    when user_input == 5
	    	@reporting = Sw3p::CLI::Reporting.new(reporting:"Recycling Division Manager")
	    when user_input == 6
	    	@reporting = Sw3p::CLI::Reporting.new(reporting:"Recycling Division Westpark Superintendent")
	    when user_input == 7
		    @reporting = Sw3p::CLI::Reporting.new(reporting:"Recycling Division ESC Superintendent")
	    when user_input == 8
	    	@reporting = Sw3p::CLI::Reporting.new(reporting:"Parks and Rec")
	    when user_input == 9
	    	@reporting = Sw3p::CLI::Reporting.new(reporting:"Project Manager")
	   	when user_input == 30
	    	self.goodbye
	    end 
	 end 
	
	def self.comments_titles
		puts "provide comments to the report(under 255 characters)"
		user_input = gets.to_s
			if max_length.length > 255
	    			puts 'Limit exceeds 255 characters - error'
	    			self.comments_titles
			else
	    			puts 'Limit is 255 characters - pass'
					#new instance of comments created
			end 
		self.goodbye
	end

	def self.goodbye
		puts "thank you for your input"
		KERNEL.exit
	end 

end 