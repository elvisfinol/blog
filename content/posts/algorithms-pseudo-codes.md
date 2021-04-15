---
title: "Algorithms Pseudocode 🧬"
date: 2021-04-15T10:35:15+02:00
draft: false
---

## SEARCHING ALGORITHMS

#### BINARY SEARCH
```
binarySearch(input, searchValue) {
    lower = 0
    upper = input.len - 1

    white(upper >= lower) {
        mid = (upper + lower) / 2

        if (input[mid] == searchValue)
        return True
        elif (searchValue < input[mid])
        upper = mid - 1
        else:
            low = mid + 1
    }
    return false
}
```

#### LINEAR SEARCH
```
linearSearch(input, searchValue) {
    for (i=0 to input.lenght - 1) {
        if (input[i] === searchValue)
        return true
    }
    return false
}
```

#### JUMP SEARCH
```
jumpSearch(input, searchValue) {

    n = input.length
    jumpBy = Math.floor(Math.sqrt(n))

    blockStart = 0
    blockEnd = jumpBy

    // Look for the correct block
    while (input[blockEnd] <= searchValue) {

        blockStart = blockEnd
        blockEnd += jumpBy

        if (blockEnd >= n)
        blockEnd = n - 1

        // No block suitable, hence not found
        if (blockStart >= n)
        return false

    }

    // Now do a linear search inside the block
    for (i=blockStart  to  i=blockEnd) {

        if (input[i] == searchValue)
        return true

    }

    return false
}
```

##### SORTING ALGORITHMS #####

#### BUBBLE SORT
```
for (index=0 to input.length-1) {
    for (j=0 to j < input.length-1-index) {
        if (input[j] > input[j+1])
        swap input[j+1] & input[j]
    }
}
```

## IMPROVED BUBBLE SORT
```
for (index=0 to input.length-1) {
    bool sorted = true
    for (j=0 to j < input.length-1-index) {
        if (input[j] > input[j+1]) {
            swap input[j+1] & input[j]
            sorted = false
        }
    }
    // Stop, once the array is sorted
    if (sorted)
    return
}
```

#### INSERTION SORT
```
for (i=0 to i=input.length-1) {

    int temp = input[i]
    boolean hasMoved = false
    boolean notPlaced = true

    for (j=i-1 to j=0) {
        if (input[j] > temp) {
            // Shift numbers till you find it’s right location
            input[j+1] = input[j]
            hasMoved = true
        } else {
            input[j+1] = temp
            notPlaced = false
            break
        }
    }

    // Edge case
    if(hasMoved & & notPlaced)
    input[0] = temp
}
```

#### SELECTION SORT
```
# Adds sorted numbers to the right end of the array
for (i=input.length-1 to i > 0) {
    int maxIndex = 0

    for (j=1 to j <= i) {

        if (input[j] > input[maxIndex]) {
            # Set index for largest element found till now
            maxIndex = j
        }
    }
    if (maxIndex != i)
    swap input[i] & input[maxIndex]
}
```

#### HEAP SORT
```
sort() {

    int size = input.length

    for (int i=size/2 - 1 to 0)
    heapify(size, i)

    for (int i=size - 1 to 0) {
        swap input[i] & input[0]
        heapify(i, 0)
    }
}

heapify(int n, int i) {

    int largest = i
    int left = 2i + 1
    int right = 2i + 2

    // if left child is larger than root
    if (left < n & & input[largest] < input[left])
    largest = left

    // if right child is larger than largest found
    if (right < n & & input[largest] < input[right])
    largest = right

    // if the largest element is not root
    if (largest != i) {
        swap input[i] & input[largest]
        heapify(n, largest)
    }

}
```

#### QUICK SORT
```
quicksort(int[] input, int left, int right) {

    if (right - left <= 0)
    return

    int pivot = input[(left + right) / 2]
    int i = left,  j = right

    while (i <= j) {
        while (input[i] < pivot)
        i++

        while (input[j] > pivot)
        j--

        if (i <= j) {
            swap input[i] & input[j]
            i++
            j--
        }
    }

    // Recursive calls
    quicksort(input, left, i-1)
    quicksort(input, i, right)
}
```

#### MERGE SORT
```
merge(input, left, mid, right) {

    int len1 = mid - left + 1
    int len2 = right - mid
    L -> array of size len1
    R -> array of size len2

    // Copy data to these arrays
    for (i=0 to i < len1)
    L[i] = input[left + i]

    for (i=0 to i < len2)
    R[i] = input[mid + i + 1]

    int i = 0, j = 0, k = left

    while (i < len1 & & j < len2) {
        if (L[i] <= R[j]) {
            input[k] = L[i]
            i++
        } else {
            input[k] = R[j]
            j++
        }
        k++
    }

    // Fill the remaining numbers
    while (i < len1) {
        input[k] = L[i]
        i++
        k++
    }
    while (j < len2) {
        input[k] = R[j]
        j++
        k++
    }
}
```