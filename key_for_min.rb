# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require 'pry'
def key_for_min_value(name_hash)
  min_value_1 = 0
  min_value_key = nil

  name_hash.each do |key, value|
    min_value_2 = value
    #binding.pry

    if min_value_1 == 0
      min_value_1 = value
      min_value_key = key
    elsif min_value_2 < min_value_1
      min_value_1 = value
      min_value_key = key
    else
      next
    end

  end

  min_value_key
  # This works for lab, but will break if hash contains zero value.
  #  Any way to improve?

end

hash = {chair: 100, table: 90, desk: 200}
p key_for_min_value(hash)
