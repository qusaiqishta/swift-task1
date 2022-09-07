import UIKit


func extractNumbersFromText(str:String)->String{
    let result = str.trimmingCharacters(in: CharacterSet(charactersIn: "0123456789.").inverted)
    return( result)
    
}

let text = "My Wallet (SAR 1,685,633.00)"

print(extractNumbersFromText(str: text))



func removeUnderScore(str:String)->String{
    let result = str.replacingOccurrences(of: "_", with: " ")
    return result
}

let text2="28_12_2024"

print(removeUnderScore(str: text2))


func removeLeadingZero(str:String)->String{
    var result=""
    let arrStr = Array(str)
    if str.prefix(1)=="0" {
        result = String(arrStr[1..<arrStr.count])
    }
    else{
        result=String(arrStr[0..<arrStr.count])
    }
    return result
}


let text3 = "01 December 2022"

print(removeLeadingZero(str: text3))


