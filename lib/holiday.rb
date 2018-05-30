require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |holiday, supply_list|
    supply_list << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  puts "TEST CODE: #{holiday_hash[:season]}"
  if holiday_hash[:season]
    holiday_hash[:season][:holiday_name] = supply_array
  else
    holiday_hash << season
  end
    
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  combined_list = []
  
  holiday_hash[:winter].each do |holiday, supply_list|
    puts holiday
    puts supply_list
    combined_list << 
    # holiday_hash[holiday][supply_list].each {|el| combined_list << el}
  end
  
  combined_list
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |season|
    puts "#{season}:"
    season.each do |holiday, list|
      puts "\t #{holiday}: #{list.join(", ")}"
    end
  end 
  
  holiday_hash
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  matching_holidays = []
  
  holiday_hash.each do |season|
    season.each do |holiday, array_list|
      if array_list.include? "BBQ"
        matching_holidays << holiday
      end
    end
  end
  
  matching_holidays
end







