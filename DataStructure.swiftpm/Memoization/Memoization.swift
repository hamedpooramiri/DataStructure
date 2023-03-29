//
//  File.swift
//  
//
//  Created by hamedpouramiri on 3/29/23.
//

import Foundation

import UIKit

/*
 ___ _ _                          _
| __(_) |__  __ _ _ _  ___  __ __(_)
| _|| | '_ \/ _` | ' \/ _ \/ _/ _| |
|_| |_|_.__/\__,_|_||_\___/\__\__|_|
 */


//MARK: before applying Memoization

func fibNaive(_ n: Int) -> Int {
    print(n)
    if n == 0 {
        return 0
    } else if n == 1 {
        return 1
    } else {
        return fibNaive(n - 1) + fibNaive(n - 2)
    }
}


//MARK: after applying Memoization

//fibNaive(20) // 20 = 13s / 22 = 54 s
var memo = [Int: Int]()

func fib(_ n: Int) -> Int {
    if n == 0 { return 0}
    else if n == 1 { return 1 }

    if let result = memo[n] { return result }

    memo[n] = fib(n - 1) + fib(n - 2)

    return memo[n]!
}

//fib(22) // 70 max
