# 1. Write a Ruby program to check whether a value exists in an array.
# ==========================================
newArr = ['Green','Pink','Orange','Red']
puts newArr.include?('Orange') 


# 2. Write a Ruby program to check whether 7 appears as either the first or last element in a given array. 
# The array length must be 1 or more.
# ====================================================
def findSevenOnArray(arr)
    if arr[0] == 7
        return true
    elsif arr[-1] == 7
        return true
    else
        return false
    end
end

puts findSevenOnArray([8,2,3,4,5,6,5])


# 3. Write a Ruby program to pick number of random elements from a given array.
# ======================================================
arr1 = [1,2,3,4,5,6,7,8,9]
puts arr1.sample(2)


# 4. Write a Ruby program to check whether first and the last element are the same of a given array of integers. 
# The array length must be 1 or more.
# ============================================
def findSameValuesInArray(arr)
    if arr[0] == arr[-1]
        return true
    else
        return false
    end
end

puts findSameValuesInArray([1,2,3,4,1])
puts findSameValuesInArray([1,2,3,4,5])


# 5. Write a Ruby program to compute the sum of elements in a given array.
# =====================================================================
arr1 = [10,20,30,55,76]
puts "#{arr1}"
puts "Total : #{arr1.inject(0){|sum,x| sum+x}}"


# 6. Write a Ruby program to remove duplicate elements from a given array :
# ===================================

# Method 1 :
def removeDuplicates1(arr1)
    puts"Duplicates Removed : #{arr1.uniq}"
end

# Method 2 :
def removeDuplicates2(arr1)
    puts"Duplicates Removed : #{arr1 & arr1}"
end


# 7. Write a Ruby program to check two given arrays of integers and test 
# whether they have the same first element or they have the same last element. 
# Both arrays length must be 1 or more.
# =================================================

def compareArrays(a, b)
    return a[0] == b[0] || a[-1] == b[-1]
end

puts compareArrays([2,2,3,4,4], [1,2,3,4,5])


# 8. Write a Ruby program to remove blank elements from a given array.
# =======================================================

def removeBlankArray(arr)
    puts "#{arr.reject{|blank|blank.empty?}}"
end

removeBlankArray(['apple','mango','','orange'])


# 11. Write a Ruby program to create an array with the elements "rotated left" 
# of a given array of ints length 3.
# ===============================================
def arrayRotate(arr)
    val = arr[1]
    arr[1] = arr[0]
    arr[0] = val
    puts arr
end

puts arrayRotate([1,2,5])


# 12. Write a Ruby program to create a new array with the 
# elements in reverse order from a given an array of integers length 3.
# =======================================================================

def reverseArray(arr)
    puts "#{arr.reverse}"
end
reverseArray([7,3,9,7])


# 13. Write a Ruby program to find the larger between the first and last elements of a given array of integers of length 3. 
# Replace all the other values to be that value. 
# Return the changed array.arr1 = [1,2,3]
# ========================================
puts "#{arr1}"
maxVal = arr1.max()
if arr1.max() == maxVal
    arr1[0] = maxVal
    arr1[1] = maxVal
end

puts "#{arr1}"


# 14. Write a Ruby program to compute the sum of the first 2 elements of a given array of integers. 
# If the array length is less than 2, just sum up the elements that exist, 
# returning 0 if the length of the array is 0.
# ========================================================

def addgivenArray(arr)
    if arr.length >=2
        arr.inject(0){|sum,x|sum+x}
    elsif arr.length < 2
        return 0
    else
    end
end
puts addgivenArray([1,2,3])


# 17. Write a Ruby program to check whether a given array of integers of length 2 contains a 4 or a 7.
# =====================================================================

def find_4_Or_7(arr)
    if arr[2] == 4 || arr[2] == 7
        return true
    else
        return false
    end
end

puts find_4_Or_7([1,2,4,5,6])
puts find_4_Or_7([1,2,7,5,6])
puts find_4_Or_7([1,2,3,5,6])


# 18. Write a Ruby program to check whether a given array of integers of length 2 does not contain a 6 or a 9.
# =====================================================================

def find_4_Or_7(arr)
    if arr[2] != 6 && arr[2] != 9
        return true
    else
        return false
    end
end

puts find_4_Or_7([1,2,6,5,6])
puts find_4_Or_7([1,2,9,5,6])
puts find_4_Or_7([1,2,4,5,6])


# 19. Write a Ruby program to check whether a given array of integers contains 3 twice, 
# or 5 twice. The array will be length 0, 1, or 2.
# ======================================================

def findTwice(arr)
    if arr[0] == 3 && arr[1] == 3 || arr[0] == 3 && arr[2] == 3 || arr[1] == 3 && arr[2] == 3
        puts "We have the value 3 twice"
    elsif arr[0] == 5 && arr[1] == 5 || arr[0] == 5 && arr[2] == 5 || arr[1] == 5 && arr[2] == 5
        puts "we have the value 5 twice"
    else
        puts "we have not double values"
    end
end

findTwice([1,3,3])
findTwice([1,5,5])
findTwice([1,5,2])


# 21. Write a Ruby program to compute the sum of two arrays (length 3) 
# and return the array which has the largest sum.
# ===========================================================

def findLargestArray(arr1, arr2)
    x = "Array 1 :#{arr1.inject(0){|sum, x|sum+x}}"
    y = "Array 2 :#{arr2.inject(0){|sum, x|sum+x}}"
    if x > y
        return x
    elsif y > x
        return y
    end
end

puts findLargestArray([1,2,3], [4,5,6])


# 22. Write a Ruby program to create a new array of length 2 
# containing the middle two elements from a given array of integers of even length 2 or more.
# =========================================================
def findMiddleArray(arr)
    if arr.length == 6
        puts arr[2,2]
    end
end

findMiddleArray([0,1,2,3,4,5])


# 23. Write a Ruby program to create a new array of length 4 containing all their elements 
# from two array of integers, length 2.
# ======================================================
def combineArray(arr1, arr2)
    result = arr1 + arr2
    puts "#{result}"
end

puts combineArray([1,2,3,4], [5,6,7,8])


# 24. Write a Ruby program to swap the first and last elements of a given array of integers, 
# length will be at least 1. Return the modified array.
# ===================================================================

def swapArray(arr)
    lastVal = arr[-1]
    arr[-1] = arr[0]
    arr[0] = lastVal
    puts "#{arr}"
end

swapArray([7, 8, 9, 10, 11])


# 25. Write a Ruby program to create a new array of length 3 containing the elements 
# from the middle of a given array of integers of odd length (at least 3).
# ================================================================================

def findMiddleValue(arr)
    if arr.length == 7
        puts arr[2,3]
    end
end

puts findMiddleValue([1,2,3,4,5,6,7])


# 27. Write a Ruby program to create a new array using first three elements of a given array of integers. 
# If the length of the given array is less than three return the original array.
# ====================================================================

def printFirstThreeArray(arr)
    newArr = arr[0,3]
    puts newArr
    if arr.length < 2
        puts arr
    end
end

printFirstThreeArray([1,2,4,3,5])
printFirstThreeArray([1,2])


# 28. Write a Ruby program to create a new array with the first element of two arrays. 
# If length of any array is 0, ignore that array.
# ==========================================================

def newArrayTwoArray(arr1, arr2)
    newArr = [arr1[0], arr2[0]]
    if arr1.empty?
        puts arr2
    elsif arr2.empty?
        puts arr1
    else
        puts newArr
    end
end

newArrayTwoArray([1,2,3],[5,6,7])


# 29. Write a Ruby program to get the number of even integers in a given array.
# =========================================

def findEvenNumbers(arr)
    for i in arr
        if i % 2 == 0
            puts i
        end
    end
end

findEvenNumbers([2,22,34,55,77,99])