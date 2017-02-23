def get_first_name_of_season_winner(data, season)
  
  data.collect do |key, value|
    if(key == season)
      value.collect do | obj |
        if (obj["status"] == "Winner")
          obj["name"].split(" ").first
        end
      end
    end
  end.flatten.compact.join()
  end

def get_contestant_name(data, occupation)
  # code here
  data.each do |key, array|
    array.each do |obj|
      if (obj["occupation"] == occupation)
        return obj["name"]
end
end
end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |key, value|
    value.each do |obj|
      if (obj["hometown"] == hometown)
        count = count + 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  # code here
  data.collect do |key, value|
    value.collect do |obj|
      if (obj["hometown"] == hometown)
        return obj["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
age = 0
inde_x = 0
  data[season].each_with_index do |obj, index|
    age = age + obj["age"].to_i
    inde_x = index
    end
  inde_x = inde_x + 1
  (age / inde_x.to_f).round
end
