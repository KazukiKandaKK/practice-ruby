# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
    nums.combination(2).to_a.count do |combination|
        combination.first == combination.last 
    end
end
