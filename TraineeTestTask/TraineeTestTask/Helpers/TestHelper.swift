//
//  TestHelper.swift
//  TraineeTestTask
//
//  Created by Ruslan Yupyn on 15/04/16.
//  Copyright © 2016 yupynruslanevgenovich@gmail.com. All rights reserved.
//

import UIKit

class TestHelper: NSObject {

  class TestHelper {
    static let sharedInstance = TestHelper()
  }
  
  let imagesURLStrings = [
    "http://www.portfolius.ru/house/i/1041.jpg",
    "http://www.portfolius.ru/house/i/142.jpg",
    "http://www.portfolius.ru/house/i/1453.jpg",
    "http://www.portfolius.ru/house/i/1656.jpg",
    "http://www.portfolius.ru/house/i/2690.jpg",
    "http://www.portfolius.ru/house/i/2781.jpg",
    "http://www.portfolius.ru/house/i/4137.jpg",
    "http://www.portfolius.ru/house/i/4183.jpg",
    "http://www.portfolius.ru/house/i/4327.jpg",
    "http://www.portfolius.ru/house/i/4434.jpg",
    "http://www.portfolius.ru/house/i/4797.jpg",
    "http://www.portfolius.ru/house/i/4911.jpg",
    "http://www.portfolius.ru/house/i/5005.jpg",
    "http://www.portfolius.ru/house/i/5036.jpg",
    "http://www.portfolius.ru/house/i/5046.jpg",
    "http://www.portfolius.ru/house/i/5317.jpg",
    "http://www.portfolius.ru/house/i/541.jpg",
    "http://www.portfolius.ru/house/i/5691.jpg",
    "http://www.portfolius.ru/house/i/631.jpg",
    "http://www.portfolius.ru/house/i/6683.jpg"
  ]
  
  let testText = "На больших расстояниях от нас содержащей десятки квадратных. Среда прозрачна, радиоизлучение можно надеяться. Много и других характеристик трудность вызывалась тем, что большинство галактических. Перспективе можно зарегистрировать, а оптическое излучение будет все-таки слишком слабым. Окнах видимости между облаками пылевой материи. Годы после вспышек новых и. Основная трудность отождествления оптических объектов очень близкие. Интенсивный источники радиоизлучения, не обнаруживалось никакие приметных оптических и сверхновых звезд. Других характеристик никак не проявляли себя в астрономии создалось несколько странное обстоятельство. Около галактического экватора и остатками газовой материи после открытия. Них находятся близ плоскости галактики. Расстояния которых опровергается, как и нельзя решить, какой именно."
  
  func getGeneratedString(number: Int) -> String {
  
    let sentences = testText.componentsSeparatedByString(".")
    let count = (number % sentences.count) + 1
    let result = NSMutableString(string: "")
    for i in 1...count {
      
      if result.length > 0{
        
        result.appendString(" ")
        
      }
      
      result.appendString(sentences[i - 1])
      result.appendString(".")
      
    }
    
    return result as String
    
  }
}
