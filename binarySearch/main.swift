//
//  main.swift
//  binarySearch
//
//  Created by Дмитрий Фетюхин on 10.06.2022.
//

/// binary search algorithm based on Grokking Algorithms by Aditya Y. Bhargava
func binarySearch(list: [Int], item: Int) -> Int? {
    var low = 0
    var high = list.count - 1
    
    while low <= high {
        let mid = (low + high)/2
        let guess = list[mid]
        if guess == item {
            return mid
        }
        if guess > item {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return nil
}

let myList = [1, 3, 5, 7, 9]

// if nil -> -1
print(binarySearch(list: myList, item: 3) ?? -1)
print(binarySearch(list: myList, item: -1) ?? -1)

