def linear_search(search_lists, target)
    search_lists.each_with_index do | search_list, i |
        if search_list == target then
            return i
        end
    end
    return -1
end

search_lists = [1,2,3,4,5,6,7,8,9,10]

ans = linear_search(search_lists, 10)
p ans

ans = linear_search(search_lists, 11)
p ans