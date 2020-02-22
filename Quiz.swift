import Foundation

func Quiz(){
    var arrayTree: [String] = []
    var whatIhave = "1"
    let size = Int(readLine()!)!
    
    for _ in 0..<size{
        arrayTree.append("")
    }
    
    for _ in 0..<size{
        let read = String(readLine()!)
        let spliting = read.components(separatedBy: " ")
        let num1 = String(spliting[0])
        let num2 = String(spliting[1])
      
        
        let num1Int = Int(num1)
        let num2Int = Int(num2)
        
        var v = ""
        
        if (whatIhave.contains(num1)){
            v = String(arrayTree[num1Int!-1]) + num2
            arrayTree[num1Int!-1] = v
            whatIhave.append(num2)
            
        }
        else if (whatIhave.contains(num2)){
            v = String(arrayTree[num2Int!-1]) + num1
            arrayTree[num2Int!-1] = v
            whatIhave.append(num1)
        }
    
    
    
    var num = 1
    var numString = ""
      var sol = ""
    
    while(num <= arrayTree.count){
        for i in 0..<arrayTree.count{
            if arrayTree[i].contains(numString){
                let result = (i+1)
                let resultString = String(result)
                sol.append(resultString)
            }
        }
        num += 1
        numString = String(num)
        }
        //if(sol.count == size-1){
            print(sol)
        //}
    }
}
    


