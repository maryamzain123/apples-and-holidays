require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies[:winter][:christmas] << "Balloons"
  holiday_supplies[:winter][:new_years] << "Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_supplies[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
 holiday_hash[season][holiday_name] = supply_array
 holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].collect {|holiday, supplies| supplies}.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |each_holiday, supplies|
      puts "  #{each_holiday.to_s.split('_').map {|holiday| holiday.capitalize}.join(' ')}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
holiday_hash.map do | season, holidays|
  holidays.map do |each_holiday, supplies|
    each_holiday if supplies.include?("BBQ")
  end
end.flatten.compact
end










