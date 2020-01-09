//
//  main.swift
//  Bai4
//
//  Created by Ngoduc on 1/8/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import Foundation
//1.Tính tổng các chữ số của một số tự nhiên
func timChuSo(){
print("Nhập vào số tự nhiên bất kỳ")
var n = Int(readLine()!) ?? 0

var numbers = [Int]()
var x = 0
var t = 0
while n > 0 {
    x = n%10
    n = n/10
    numbers.insert(x, at: 0)
}
    for item in numbers {
        t += item
    }
    print(t)
}
//2.Kiểm tra tính đối xứng của một số tự nhiên
func kiemtraDoixung(){
print("Nhập vào số tự nhiên bất kỳ")
var n = Int(readLine()!) ?? 0

var numbers = [Int]()
var x = 0
var co = 1
while n > 0 {
    x = n%10
    n = n/10
    numbers.insert(x, at: 0)
}
    let l: Int = numbers.count
    for i in 0..<l/2 {
        if numbers[i] != numbers[l - 1 - i] {
            co = 0
        }
    }
    if co == 0 {
        print("so \(n) không có tính đối xứng")
    } else {
        print("so \(n)  có tính đối xứng")
    }
}
//3.minigame
func doanso(){
    let r = Int.random(in: 0..<100)
    print("Nhập vào số tự nhiên bất kỳ")
    var n = Int(readLine()!) ?? 0
    if n == r {
        print("Chúc mừng")
    }
    if n < r {
        print("bé quá")
    } else if n > r {
        print("lớn quá")
    }
    print(r,n)
}
//4.Giải phương trình bậc 2: ax2 + bx + c = 0
func giaphuongtrinhbac2(a: Float, b: Float, c: Float){
    var  denta: Float = b * b - 4 * a * c
    var x1,x2: Float
    if denta < 0 {
       print("Phương trình vô nghiệm")
    } else if denta == 0 {
        print("phương trình có nghiệm kép x1 = x2 = \(-b/(2*a))")
    } else {
        denta = sqrt(denta)
        x1 = (-b + denta)/(2*a)
        x2 = (-b - denta)/(2*a)
        print("phương trình có 2 nghiệm phân biệt x1 = \(x1) vả x2 = \(x2)")
    }
}
//5.tính tiền cước TAXI
func tinhcuocTAXI(s: Float){
    if s < 1 {
        print("tiền taxi là \(s * 5000) đ")
    } else if s > 1 && s <= 30 {
        print("tiền taxi là \(s * 4000) đ")
    } else if s > 30 {
    print("tiền taxi là \(s * 3000) đ")
}
}
doanso()
