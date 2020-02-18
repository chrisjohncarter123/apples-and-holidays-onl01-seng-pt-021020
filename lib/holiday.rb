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
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  #holiday_hash[season][holiday_name] = {}
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  

  holiday_hash.each do |key, season|
    puts key.to_s.capitalize + ":"
    
    season.each do |key2, supplies|
      h = key2.to_s.split("_")
      result = ""
      h.each_with_index do |word, index|
        result += word.capitalize
        if(index != h.length - 1)
          result += " "
        end
      end
      
      
      phrase = "  #{result}: "
      
      
      supplies.each_with_index do |val, index|
        phrase += val
        if index != supplies.length - 1
          phrase += ", "
        end
      end
      puts phrase
    end
    
    
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  #holiday_hash[:spring][:memorial_day]
  
  
  result = Array.new
#puts (holiday_hash)
  holiday_hash.each do |season|
    #puts season
    season.each do |holiday|
      puts holiday.class
    # holiday_hash[holiday].each do |s|
     #   puts s
     #   puts ""
       # if(s.include?("BBQ"))
        #  puts s
      #  end
     # end
    end
    
    #if (holiday_hash[season].include? ("BBQ"))
    #  result << holiday_hash[season]
      
    #  puts ""
    #end
  end
  return result
end







