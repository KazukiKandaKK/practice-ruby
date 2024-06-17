# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
    ans = 0
    nums.each_with_index do |num1, i|
        nums.each_with_index do |num2, j|
            if i >= j then
                next
            end
            if i<j && num1==num2 then
                ans += 1
            end  
        end
    end
    return ans
end

nums = [1,2,3,1,1,3]
p num_identical_pairs(nums)