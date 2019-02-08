require 'pry'
#1

def second_supply_for_fourth_of_july(holiday_hash)
  return holiday_hash[:summer][:fourth_of_july][1]
end

#2

def add_supply_to_winter_holidays(holiday_hash, supply)
 holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday, s|
        s << supply
      end
    end
  end
  return holiday_hash
end

#3

def add_supply_to_memorial_day(holiday_hash, supply)
 holiday_hash[:spring].each do |holiday, s|
    s << supply
  end
  return holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end
  
def all_supplies(holiday_supplies)
  holiday_supplies.each do |season, data|
    puts "#{season.to_s.capitalize!}:"
    data.each do |holiday, supply|
     # holiday == :fourth_of_july
      # we took the holiday key and converted a string
      # str_holiday == fourth_of_july
      # we took that converted string, and split it to an array with the elements divided by the _ (which removes the _)
      # str_holiday == ["fourth", "of", "july"]
      # we collected over that array in order to capitalize each word
      # str_holiday == ["Fourth", "Of", "July"]
      # we joined the elements together to form a string where each element is divded by an empty space
      # str_holiday == "Fourth Of July"
      str_holiday = holiday.to_s.split("_").collect {|word| word.capitalize!}.join(" ")
      # supplies == ["BBQ", "Fireworks"]
      # we joined it together converting the array to a string dividing each element by a , and a space
      # supplies == "BBQ, Fireworks"
      # "  Fourth Of July: BBQ, Fireworks" 
      puts "  #{str_holiday}: #{supply.join(", ")}"
    end
  end 
end 

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







