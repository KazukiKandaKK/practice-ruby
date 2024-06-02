def two_sum(nums, target)
    hash = {}
    nums.each_with_index do | num, i |
        if hash[target-num] then
            return [hash[target-num], i]
        else
            hash[num] = i
        end
    end
end

p two_sum([1,2,3,4,5,6,7,8,9,10], 19)