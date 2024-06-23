# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    nums1.push(nums2)
    nums1.flatten!
    # do quick sort
    quic_sort(nums1, 0, nums1.length-1)
    # if arr length is odd num, calc otherhands return midian
    if nums1.length % 2 != 0 then
        return nums1[nums1.length/2]
    end
    return  (nums1[nums1.length/2].to_f.ceil + nums1[nums1.length/2-1].to_f.floor)/2.to_f
end

def quic_sort(arr, low, high)
    if low<high
        pi = partition(arr, low, high)

        quic_sort(arr, low, pi-1)
        quic_sort(arr, pi+1, high)
    end
end

def partition(arr, low, high)
  pivot = arr[high]
  i = low - 1

  (low...high).each do |j|
    if arr[j] <= pivot
      i += 1
      arr[i], arr[j] = arr[j], arr[i]
    end
  end
  arr[i + 1], arr[high] = arr[high], arr[i + 1]
  return i + 1
end