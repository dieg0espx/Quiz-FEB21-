import Foundation

func printing(){
    //let n = (readLine()
    //print(n)
    //printing()
    

    var arrayTree: [String] = []
    var whatIhave = "1"
    var size = Int(readLine()!)!
    
    
    
    for i in 0..<size{
        arrayTree.append("")
    }
 
    
   // for _ in 0..<size-1 {
        var read = String(readLine()!)
        let spliting = read.components(separatedBy: " ")
        let num1 = String(spliting[0])
        let num2 = String(spliting[1])
    
    var num1Int = Int(num1)
    var num2Int = Int(num2)
    
    
    for _ in 0..<size{
    if (whatIhave.contains(num1)){
        var variable = arrayTree[num1Int!] + num2
        arrayTree[num1Int! - 1] = variable
    }
    else if (whatIhave.contains(num2)){
        var variable = arrayTree[num2Int!] + num1
               arrayTree[num2Int! - 1] = variable
        }
    }
    
        print(arrayTree)
        
        
    

    
    
    
    
    //let tree = [[4,6],[L,R],[R, 5],[2,7],[nil,nil],[nil, 3],[nil,nil]]
    let tree = ["4,6", "L,R", "L,5", "2,7", "L,R", "L,3", "L,R"]
    var num = 1
    var numString = ""
    
    
    while(num <= tree.count){
        for i in 0..<tree.count{
            if tree[i].contains(numString){
                print(i+1)
            }
        }
        num += 1
        numString = String(num)
    }
    
}
