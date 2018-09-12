# your code goes here
require 'pry'

def begins_with_r(array)

  array.all? { |word| word.start_with?('r') }

end


def contain_a(array)

  array.select { |word| word.include?('a') }

end


def first_wa(array)

  array.find { |word| word.to_s.start_with?('wa')  }

end


def remove_non_strings(array)

  array.keep_if { |obj| obj.is_a? String }
  #same as delete_if ... !(obj.is_a? String)

end


def count_elements(array)

  array.map do |element_hash|
    element_hash[:count] = 0  #create new key/val pair for each orig_hash element

    array.map do |updated_hash|  #go thru new hash

      if updated_hash[:name] == element_hash[:name]
        element_hash[:count] += 1

      end
    end
  end
  array.uniq # remove repeated/duplic. elements => new array
end



def merge_data(keys, data)
  merged_array = []

  keys.map do |name_hash|
    name = name_hash[:first_name]

    data.map do |data_hash|
     if data_hash[name] #?is there info for key name?

       merged_data = data_hash[name]
       merged_data[:first_name] = name
       merged_array << merged_data

     end
   end
 end
 merged_array
end


def find_cool(array)

  array.select { |hash| hash[:temperature] == 'cool' }

end



def organize_schools(schools)

  organized_schools = {}

  schools.each do |name, location_hash|

    city = location_hash[:location]
    if organized_schools[city]
      organized_schools[city] << name
    else organized_schools[city] = [] << name

    end
  end
  organized_schools
end
