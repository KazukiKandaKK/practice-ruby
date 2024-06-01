#############################
# exhausive search
#############################

# This code running time is 81ms
def two_sum(nums, target)
    nums.each_with_index do |num1, i|
        nums.each_with_index do |num2, j|
            if i!=j && num1+num2==target
                return i, j
            end 
        end
    end
    return nil, nil
end


# This code running time is 65ms
def two_sum(nums, target)
    nums.each_with_index do |num1, i|
        nums.each_with_index do |num2, j|
            if i==j then
                break
            end
            if num1 + num2==target
                return i, j
            end 
        end
    end
    return nil, nil
end