#our CLI Controller
require 'pry'
require 'pry-rescue'
require 'pry-stack_explorer'
require 'pry-doc'
require_relative 'task'
require_relative 'sw3p'
require_relative 'tracking'
class Sw3p::CLI 
	 
	def call 
		puts <<~HEREDOC
		_____________________________________________________
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
	    user_input = gets.to_i
	    #binding.pry
	    if user_input == 1
	    #binding.pry
	    	@task=Sw3p::Tracking.new({task:"Identify changes to Pollution Prevention Team"})
		#binding.pry
	    elsif user_input == 2
	    	@task=Sw3p::Tracking.new({task:"ID changes to non-stormwater discharges"})
	    elsif user_input == 3
	    	@task=Sw3p::Tracking.new({task:"ID changes to inventory of exposed mat'l"})
	    elsif user_input == 4
	    	@task=Sw3p::Tracking.new({task:"Updates to narrative of all potential pollutant sources"})
	    elsif user_input == 5
	    	@task=Sw3p::Tracking.new({task:"Site map update"})
	    elsif user_input == 6
	   	    @task=Sw3p::Tracking.new({task:"Spills and Leaks Quarterly Updates Log"})
	    elsif user_input == 7
	    	@task=Sw3p::Tracking.new({task:"Best Management Practices"})
	    elsif user_input == 8
	    	@task=Sw3p::Tracking.new({task:"Spill Prevention and response measures"})
	    elsif user_input == 9
	    	@task=Sw3p::Tracking.new({task:"Maint Prog of Structural Controls: Manifest"})
	    elsif user_input == 10
	    	@task=Sw3p::Tracking.new({task:"Employee Training Program"})
		elsif user_input == 11
	    	@task=Sw3p::Tracking.new({task:"Rain Gauge Monitoring"})
	    elsif user_input == 12
	    	@task=Sw3p::Tracking.new({task:"Benchmark Monitoring"})
	    elsif user_input == 13
	    	@task=Sw3p::Tracking.new({task:"Site Compliance Evaluation Report"})
	    elsif user_input == 14
		    @task=Sw3p::Tracking.new({task:"Program Timeline for Pollution Measures and Controls Activities"})
	    elsif user_input == 15
	    	@task=Sw3p::Tracking.new({task:"Five Year Permit Renewal"})
	    elsif user_input == 16
		    @task=Sw3p::Tracking.new({task:"Periodic Inspection with Checklist"})
	    elsif user_input == 17
	 	    @task=Sw3p::Tracking.new({task:"Daily Monitoring Report of Numeric Effluent"})
	    elsif user_input == 18
	    	@task=Sw3p::Tracking.new({task:"City Engineer Inspection Report Response"})
	    elsif user_input == 19
		    @task=Sw3p::Tracking.new({task:"Plan revisions log"})
	    elsif user_input == 20
	    	@task=Sw3p::Tracking.new({task:"MSGP copy"})
	    elsif user_input == 21
	    	@task=Sw3p::Tracking.new({task:"SW3P preparation"})
		elsif user_input == 22
		    @task=Sw3p::Tracking.new({task:"Spill prevention countermeasue control plan"})
		elsif user_input == 23
	    	@task=Sw3p::Tracking.new({task:"FMD collaboration"})
	    elsif user_input == 24
	    	@task=Sw3p::Tracking.new({task:"Annual compliance signature page"})
	    elsif user_input == 25
		    @task=Sw3p::Tracking.new({task:"Visual examination"})
	    elsif user_input == 26
	    	@task=Sw3p::Tracking.new({task:"COH SWQ permit renewal"})
	    elsif user_input == 27
		    @task=Sw3p::Tracking.new({task:"Truck Wash manifest"})
	   	elsif user_input == 30
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
	    user_input = gets.to_i
		if user_input == 1
	   		@site=Sw3p::Tracking.new({site:"5614 Neches"})
	   		#binding.pry
	    elsif user_input == 2
	    	@site=Sw3p::Tracking.new({site:"11500 S Post Oak"})
	    elsif user_input == 3
	    	@site=Sw3p::Tracking.new({site:"1245 Judiway"})
	    elsif user_input == 4
	    	@site=Sw3p::Tracking.new({site:"1502 Central"})
	    elsif user_input == 5
	    	@site=Sw3p::Tracking.new({site:"5900 Westpark"})
	    elsif user_input == 6
	    	@site=Sw3p::Tracking.new({site:"South ESC"})
	    elsif user_input == 7
	    	@site=Sw3p::Tracking.new({site:"10875 SW Freeway"})
	    elsif user_input == 8
	    	@site=Sw3p::Tracking.new({site:"2240 Central"})
	    elsif user_input == 9
	    	@site=Sw3p::Tracking.new({site:"144000 Sommermeyer"})
	    elsif user_input == 10
	    	@site=Sw3p::Tracking.new({site:"5100 Sunbeam"})
		elsif user_input == 11
			@site=Sw3p::Tracking.new({site:"5575 Kirkpatrick"})
	    elsif user_input == 12
	    	@site=Sw3p::Tracking.new({site:"9003 North Main"})
	    elsif user_input == 13
	    	@site=Sw3p::Tracking.new({site:"Westpark- COH Transfer Station"})
	    elsif user_input == 14
	    	@site=Sw3p::Tracking.new({site:"Sommermeyer-COH Transfer Station"})
	    elsif user_input == 15
	    	@site=Sw3p::Tracking.new({site:"Central- COH Transfer Station"})
	   	elsif user_input == 30 
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
	    user_input = gets.to_i
	    if user_input == 1
	    	@frequency=Sw3p::Tracking.new({frequency:"Daily Instance"})
	    elsif user_input == 2
	 	    @frequency=Sw3p::Tracking.new({frequency:"Weekly Instance"})
	    elsif user_input == 3
	     	@frequency=Sw3p::Tracking.new({frequency:"Monthly Instance"})
	    elsif user_input == 4
	    	@frequency=Sw3p::Tracking.new({frequency:"Quarterly Instance"})
	    elsif user_input == 5
	    	@frequency=Sw3p::Tracking.new({frequency:"Annual Instance"})
	    elsif user_input == 6
	    	@frequency=Sw3p::Tracking.new({frequency:"Instance"})
	    elsif user_input == 7
	  		@frequency=Sw3p::Tracking.new({frequency:"Semi-Annual Instance"})
	  	elsif user_input == 30
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
	    user_input = gets.to_i
		if user_input == 1
	    	@reporting = Sw3p::Tracking.new({reporting:"Deputy Assistant Director SW"})
	    elsif user_input == 2
		    @reporting = Sw3p::Tracking.new({reporting:"Deputy Assistant Director SE"})
	    elsif user_input == 3
	   	    @reporting = Sw3p::Tracking.new({reporting:"Deputy Assistant Director NE"})
	    elsif user_input == 4
	    	@reporting = Sw3p::Tracking.new({reporting:"Deputy Assistant Director NW"})
	    elsif user_input == 5
	    	@reporting = Sw3p::Tracking.new({reporting:"Recycling Division Manager"})
	    elsif user_input == 6
	    	@reporting = Sw3p::Tracking.new({reporting:"Recycling Division Westpark Superintendent"})
	    elsif user_input == 7
		    @reporting = Sw3p::Tracking.new({reporting:"Recycling Division ESC Superintendent"})
	    elsif user_input == 8
	    	@reporting = Sw3p::Tracking.new({reporting:"Parks and Rec"})
	    elsif user_input == 9
	    	@reporting = Sw3p::Tracking.new({reporting:"Project Manager"})
	   	elsif user_input == 30
	    	self.goodbye
	    end 
	    self.comments_titles
	 end 
	
	def self.comments_titles
		puts "provide comments to the report(under 255 characters)"
		user_input = gets.to_s
		max_length = user_input.length
			if max_length > 255
	    			puts 'Limit exceeds 255 characters - error'
	    			self.comments_titles
			else
	    			puts 'Limit is 255 characters - pass'
					#new instance of comments created
					@comments = Sw3p::Tracking.new({comments:"#{user_input}"})
			end 
		self.goodbye
	end

	def self.goodbye
		puts "thank you for your input"
		Kernel.exit
	end 

end 