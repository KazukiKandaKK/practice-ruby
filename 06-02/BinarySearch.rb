def binary_search(target_lists, target)
    low = target_lists[0]
    high = target_lists[target_lists.length-1]
    while low <= high
        mid = (high + low) / 2
        if target < mid then
            high = mid -1
        elsif target > mid then
            low = mid + 1  
        elsif high > 0 && target == mid then
            return true
        end
    end
    return false
end

target_lists = [1,2,3,4,5,6,7,8,9,10]
target = 100

ans = binary_search(target_lists, target)
p ans