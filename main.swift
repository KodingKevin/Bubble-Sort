
var unsorted : [String] = []

while true{
    if let next = readLine(), next != ""{
        unsorted.append(next)
    }
    else {
        break
    }
}

func swap(integers: inout [String], firstIndex: Int, secondIndex: Int){
    integers.swapAt(firstIndex, secondIndex)
}

var StringSort = unsorted

var totalswap = 0
var pass = 0
//print original state
print("Pass: \(pass), Swaps: 0/\(totalswap), Array: \(StringSort)")

//loop until false
while true{
    //assign swaps to contain the amount of swaps in each pass 
    var swaps = 0
    //check through all the index
    for index in 0 ..< StringSort.count - 1{
        if StringSort[index].lowercased() > StringSort[index + 1].lowercased(){
            swap(integers:&StringSort, firstIndex:index, secondIndex:index + 1)
            swaps += 1
        }
    }
    //add to total amount of swaps
    totalswap += swaps
    //add to the total amount of time passed
    pass += 1
    print("Pass: \(pass), Swaps: \(swaps)/\(totalswap), Array: \(StringSort)")
    
    //stops when it's no longer swapping
    if pass == unsorted.count - 2{
        break
    }
}




        
