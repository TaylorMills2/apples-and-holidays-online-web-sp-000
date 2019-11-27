require 'pry'

def holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end

second_supply_for_fourth_of_july(holiday_supplies)


# Learn.co Textbook solution
def add_supply_to_winter_holidays(holiday_hash, item)
 holiday_hash[:winter].each do |holiday, decorations|
   decorations << item
  end
end

# My alternative
def add_supply_to_winter_holidays(holiday_hash, item)
 holiday_hash[:winter].each do |holiday, decorations|
   decorations.push(item)
  end
end


add_supply_to_winter_holidays(holiday_supplies, "Baloons")

# This will not word because the sub-hashes are not somple array-string values
#def add_supply_to_winter_holidays(holiday_hash, supply)
#  holiday_hash.each do |season, holiday|
#    holiday.each do |holiday, supplies|
#      if holiday == :winter
#        supplies.push{supply}
#      end
#    end
#  end
#end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].push(supply)
end

add_supply_to_memorial_day(holiday_supplies, "baloons")


#def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
#  holiday_hash[season][holiday_name] = supply_array
#  holiday_hash
#
#end


# //////////////////////////////////////////////////////////////////////////
# the problem here is that I cannot create another season...the seasons are
# locked in for some bizzare reason.
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end
add_new_holiday_with_supplies(holiday_supplies, :fall, :succas, ["lulav", "esrog", "schach"])
# This is the way learn.co tests the method to see if it's working:
# columbus_day_supplies = ["Flags", "Parade Floats", "Italian Food"]
# add_new_holiday_with_supplies(holiday_supplies, :fall, :columbus_day, columbus_day_supplies)
# //////////////////////////////////////////////////////////////////////////


#