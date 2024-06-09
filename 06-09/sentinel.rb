min_value = 0
max_value = 1e3
array_size = 5e6

random_array = Array.new(array_size) { rand(min_value..max_value).to_i }

target = rand(min_value..max_value).to_i
random_array.push(target)

list_num = 0xFF

random_array.each_with_index do |val, i|
    if val == target then
        list_num = i
        break
    end
end

msg = "target number #{target} is not in create random lists."

if list_num != random_array.length+1 then
    msg = "find #{target} is number of #{list_num} in created random lists."
end

p msg
