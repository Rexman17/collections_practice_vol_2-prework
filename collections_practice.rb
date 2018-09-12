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

:schools = {
  {
    "flatiron school bk" => {
      :location => "NYC"
    },
    "flatiron school" => {
      :location => "NYC"
    },
    "dev boot camp" => {
      :location => "SF"
    },
    "dev boot camp chicago" => {
      :location => "Chicago"
    },
    "general assembly" => {
      :location => "NYC"
    },
    "Hack Reactor" => {
      :location => "SF"
    }
  }
}



def organize_schools(schools)

  organized_schools = {}

  schools.each do |name, location_hash|
    location_hash[:location].each do |city|

    end
  end

end
