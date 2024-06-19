//
//  ContentView.swift
//  SwiftPlayAround
//
//  Created by Ryosuke Iwasaki on 2024/05/23.
//

import SwiftUI

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int,sum: Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max{
            max = score
        }else if score < min{
            min = score
        }
        sum += score
    }
return (min , max, sum)
}

func returnFifteen() -> Int{
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}

func hasAnymatches(list: [Int], condition: (Int) -> Bool) -> Bool {for item in list{
    if condition(item){
        return true
    }
}
return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}
/*
func zeroForOdd({(number : Int) -> Int in
    return 1
    
})*/


struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            var numbers = [20, 19, 7, 12]
            let num = numbers.map({(number: Int) -> Int in
                if(number % 2 != 0){
                    let result = 0
                    return result}else{
                        return number}
                
            })
            Text("\(num)")

            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


