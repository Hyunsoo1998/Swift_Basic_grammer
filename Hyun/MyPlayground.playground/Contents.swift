//
//
//import Foundation
//
////dump 함수와 print함수의 차이점
////print 함수는 디버깅 콘솔에 간략한 정보를 출력해줌. (출력하려는 인스턴스의 description 프로퍼티에 해당하는 내용을 출력)
////dump 함수는 출력하려는 인스턴스의 자세한 내부 콘텐츠까지 출력해준다.
//
//struct BasicInformation {
//
//    let name: String
//    var age:Int
//
//}
//
//var yagomInfo: BasicInformation = BasicInformation(name: "yagom",age : 99)
//
//class Person {
//    var height: Float = 0.0
//    var weight: Float = 0.0
//
//
//}
//
////yagom이라는 래퍼런스에 Person타입을 넣어주고..
//let yagom:Person = Person()
//yagom.height = 182.5 // 래퍼런스로 Person클래스의 값들을 접근.
//yagom.weight = 78.5
//
//print(yagomInfo)
//dump(yagomInfo)
//
////타입별칭
//
//print(yagom) // Person
//dump(yagom) // Person #0 , height:182.5, weight:78.5
//
//let name : String = "yagom"
//print("My name is \(name)")
//
//var Hyunsoo_name : String = "Hyunsoo"
//var Hyunsoo_age : Int = 25
//var Hyunsoo_job : String = "Student"
//var Hyunsoo_height : Int = 178
//
////Int와 UInt
//
//var integer : Int = -100
//let unsignedInteger: UInt = 50 // UInt타입에는 음수값을 할당할 수 없다.
//print("Integer 값: \(integer), unsignedInteger값 : \(unsignedInteger)")
//print("Int 최대값: \(Int.max) ,  Int 최소값: \(Int.min)")
//print("UInt 최대값 : \(UInt.max) , UInt 최솟값: \(UInt.min)")
//
////Bool
//
//var boolean: Bool = true
//boolean.toggle() // true - false 반전
//let iLoveYou: Bool = true
//let isTimeUnlimited : Bool = false
//print("시간은 무한합니까?: \(isTimeUnlimited)")
//
////Float과 Double
////64비트 환경에서 Double은 15자리 십진수를 표현할 수 있고 , Float은 6자리의 숫자까지만 표현이 가능함.
//
//var floatValue: Float = 1234567890.1 // Float이 수용할 수 있는 범위를 넘어섰고, 자신이 표현 가능한 만큼만남긴다.
//// 그러므로 정확도가 떨어진다.
//
//let doubleValue: Double = 1234567890.1
//
//print("floatValue: \(floatValue) doubleValue: \(doubleValue)")
//
////Float이 수용할 수 있는 범위의 수로 변경한다.
//floatValue = 123456.1
//print(floatValue)
//
////Character
////특수기호도 사용가능. 단 앞 뒤에 큰 따옴포를 붙여야한다. 기존 언어체계와 다름.
//
//let alphabetA: Character = "A"
//print(alphabetA)
//
////Character 값에 유니코드 문자를 사용할 수 있다.
//let commandCharacter: Character = "☆"
//print(commandCharacter)
//
//let 한글변수이름: Character = "ㄱ"
////한글도 유니코드 문자에 속하므로 스위프트 코드의 변수 이름으로 사용할 수 있다.
//print("한글의 첫 자음 \(한글변수이름)")
//
//
////타입별칭
////-> 사용자가 임의로 만든 데이터 타입이든 이미 존재하는 데이터 타입에 임의로 다른 이름을 부여햘 수 있음.
//typealias MyInt = Int
//typealias YourInt = Int
//typealias MyDouble = Double
//
//let age: MyInt = 100 // MyInt는 Int의 또 다른 이름.
//var year: YourInt = 2080 //YourInt는 Int의 또 다른 이름.
//
////MyInt도 YourInt도 Int이기 때문에 같은 타입으로 취급함.
//
//year = age
//let moth: Int = 7
//let percentage: MyDouble = 99.9 // Int외에 다른 자료형도 모두 별칭 사용 가능.
//
////튜플
////-> 튜플은 타입의 이름이 따로 지정되어 있지 않은. 프로그래머 마음대로 만드는 타입. (지정된 데이터의 묶음)
//
////String ,Int , Double타입을 갖는 튜플
//var person: (String, Int , Double) = ("hyunsoo", 100 , 182.5)
//
////인덱스를 통해서 값을 빼 올 수 있다.
//
//print("이름: \(person.0) , 나이 : \(person.1), 신장: \(person.2)")
//
//person.1 = 99 //인덱스를 통해 값을 할당할 수 있다.
//person.2 = 178.77
//
//print("이름: \(person.0), 나이: \(person.1), 신장: \(person.2)")
//
//
////튜플 요소 이름 지정
//
////String ,Int, Double타입을 갖는 튜플
//
//var person2: (name: String, age: Int, height : Double) = ("Hyunsoo" , 100 , 182.5)
//
////요소 이름을 통해서 값을 빼 올 수있다.
//
//print("이름 \(person2.name) , 나이 \(person2.age) , 신장: \(person2.height)")
//
//person2.age = 99 //요소 이름을 통해 값을 할당할 수 있음.
//person2.2 = 178.5 //인덱스를 통해서도 값을 할당할 수 있다.
//
////기존처럼 인덱스를 이용하여 값을 빼 올 수도 잇다.
//print("이름: \(person2.0), 나이: \(person2.1), 신장: \(person2.2)")
//
////컬렉션형
//
////배열(Array: 동적메모리 할당을 사용, 알아서 크기를 변경함.
////imEmpty프로퍼티로 빈 배열인지 확인 가능
////count프로퍼티로 배열의 요소의 개수를 확인가능.
//
////var 키워드로 Array를 만들면 값을 변경가능.
////let 키워드로 Array를 만들면 값 변경불가.
//
////대괄호를 사용하여 배열임을 표현한다.
//
//var names : Array<String> = ["yagom", "chulsoo", "younghee", "hyunsoo"]
//
////위 선언과 동일한 표현 [String]은 Array<String>의 축약 표현.
//
//var namess : [String] = ["현수", "민수" , "쌍수", "도수"]
//
//var emptyArray: [Any] = [Any]() //Any데이터를 요소로 갖는 빈 배열을 생성함.
//var emptyArray2: [Any] = Array<Any>() //위 선언과 정확히 같은 동작을 하는 코드 .
//
////배열의 타입을 정확히 명시했다면 []만으로도 빈 배열을 생성할 수 있다.
//
//var emptyArray3: [Any] = []
//print(emptyArray3.isEmpty)  // true
//print(namess.count) //4
//
//print(names[2]) // younghee
//names[2] = "jenny"
//print(names[2])
////print(names[4]) //인덱스의 범위를 벗어났기 때문에 오류 발생.
//
//
//names.append("Lee")
//names.append(contentsOf: ["Kim", "Khan"]) //맨 마지막에 kim과 Khan이 추가됨.
//names.insert("happy", at: 2) //인덱스 2에 삽입됨.
//
////인덱스 5의 위치에 jinhee와 minsoo가 삽입된다 .
//names.insert(contentsOf: ["jinhee", "minsoo"], at: 5)
//
//print(names[4])
//print(names.firstIndex(of: "yagom"))
//print(names.firstIndex(of: "Lee"))
//print(names.first) // yagom
//print(names.last) // max
//
//let firstItem: String = names.removeFirst() //yagom
//let lastItem: String = names.removeLast()
//let indexZeroItem: String = names.remove(at: 0)
//
//print(firstItem)
//print(lastItem)
//print(indexZeroItem)
//print(names[1 ... 3]) // jenny, hyunsoo ,jinhee  /
//
////names[1 ... 3] 표현은 범위 연산자를 사용하여 names배열의 일부만 가져온 것.
//
//
////딕셔너리 -> 딕셔너리는 요소들이 순서 없이 키와 값의 쌍으로 구성되는 컬렉션 타입.
////딕셔너리에 저장되는 값은 항상 키와 쌍을 이루게 되는데, 딕셔너리 안에는 키가 하나이거나 여러 개일 수 있다.
////단 ,하나의 딕셔너리 안의 키는 같은 일므을 중복해서 사용할 수 없음.
//
////딕셔너리의 선언과 생성.
//
////키는 String ,값은 Int타입인 빈 딕셔너리를 생성한다.
////var numberForName: Dictionary<String ,Int> = Dictionary<String ,Int>()
//
////위 선언과 같은 표현. [String: Int]는 Dictionary<String, Int>의 축약 표현.
////var numberforName: [String: Int] = [String: Int] ()
//
////위 코드와 같은 동작을 한다.
////var numberForName: [String: Int] = [:]
//
////초깃값을 주어 생성해줄 수도 있다.
//var numberForName: Dictionary<String, Int> = ["Yagom": 100 , "chulsoo": 200, "jenny": 300]
//
//print("딕셔너리 출력: \(numberForName)")
//print(numberForName.isEmpty) // false
//print(numberForName.count) //딕셔너리의 요소개수 3
//
////딕셔너리의 사용
//print(numberForName["Yagom"])
//print(numberForName["chulsoo"])
//print(numberForName["jenny"])
//
//numberForName["chulsoo"]  = 150
//print(numberForName["chulsoo"])
//
//numberForName["max"] = 999 //max라는 키로 999라는 value를 추가함.
//print(numberForName["max"]) // 999
//
//print(numberForName.removeValue(forKey: "Yagom")) //100
//
//
////위 코드에서 yagom 키에 해당하는 value가 이미 삭제되었으므로 Nil이 반환된다.
////키에 해당하는 값이 없으면 기본값을 돌려주도록 할 수 있다.
//
//print(numberForName.removeValue(forKey: "Yagom"))
//
////Yagom키에 해당하는값이 없으면 기본으로 0이 반환되는 코드
//
//print(numberForName["Yagom", default: 0])
//
////세트
////세트는 같은 타입의 데이터를 순서 없이 하나의 묶음으로 저장하는 형태의 컬렉션 타입.
////세트내의 값은 모두 유일한 값, 즉 중복된 값이 존재하지 않는다.
//
////----> 순서가 중요하지 않거나 각 요소가 유일한 값이어야 하는 경우 사용한다.
////세트의 요소로는 해시 가능한 값이 들어와야한다 .
//
////let 키워드를 사용하면 변경불가능한 세트, var키워드를 사용하여 변수로 선언해주면 변경 가능한 세트
//
////var hi : Set<String> = Set<String>() //빈 세트 생성.
////var hi: Set<String> = [] //빈 세트 생성.
//
////Array와 마찬가지로 대괄호를 사용한다.
//var hi : Set<String> = ["yagom" , "chulsoo", "younghee", "yagom"]
//
////타입 추론표현으로 사용하면 Set이 아닌 Arrray로 추론을 한다.
//
//var numberss = [100, 200, 300]
//print(type(of: numberss)) //Array<Int>
//
//print(hi.isEmpty) //false
//print(hi.count) // 3  중복된 값은 허용되지 않음.
//
//
//hi.insert("jenny")
//print("set는 순서를 보장하지 않기 때문에 출력 할 때마다 다른 순서로 나온다. \(hi)")
//print("hi의 집합: \(hi)")
//print("hi set의 요소 개수: \(hi.count)")
//
////요소를 삭제하려면 remove()를 사용한다 .
////remove()는 요소를 삭제 후 반환한다 .
//
//print(hi.remove("jenny"))
//
////세트의 활용 집합연산
//let englishClassStudents: Set<String> = ["John", "chulsoo" , "yagom"]
//let koreaClassStudents: Set<String> = ["jenny" , "yagom" , "chulsoo" , "hana", "minsoo"]
//
////교집합
//let intersectSet: Set<String> = englishClassStudents.intersection(koreaClassStudents)
//
////여집합의 합
//
//let symmetricSet: Set<String> = englishClassStudents.symmetricDifference(koreaClassStudents)
//
////합집합
//
//let unionSet: Set<String> = englishClassStudents.union(koreaClassStudents)
//
////차집합:
//
//let subtractSet: Set<String> = englishClassStudents.subtracting(koreaClassStudents)
//
//print(unionSet.sorted())
//
//
////열거형 : 연관된 항목들을 묶어서 표현할 수 있는 타입. 프로그래머가 정의해준 항목 값 외에는 추가/수정 불가.
//enum school {
//    case middle
//    case high
//    case college
//    case university
//    case graduate
//}
//
////School이라는 이름을 갖는 열거형에는 primary, elementary, middle ,high ,college, university..라는 항목이 있음.
//// 각 항목은 그 자체가 고유의 값이다.
//// 아래와 같이 표현 할 수있음.
//
//enum school_2{
//    case priamry, elementary , middle, high, college, university, graduate
//}
//
////School열거형 변수의 생성 및 값 변경
//
//var highestEduactionLevel : school = school.university
//
////위 코드와 같은 표현.
//var highestEducationLevel : school = .university
//
////같은 타입인 school내부의 항목만으로 highestEducationLevel의 값을 변경해줄 수 있다.
//highestEducationLevel = .graduate
//
////열거형에 원시값 할당. 원시값을 할당하기 위해서 열거형에 타입을 지정해야한다.
//enum School_3 :String {
//    case primary = "유치원"
//    case elementary = "초등학교"
//    case middle = "중학교"
//    case high = "고등학교"
//    case college = "대학"
//    case university = "대학교"
//    case graduate = "대학원"
//}
//// 원시값을 사용
//let highestEducationLevel_2: School_3 = School_3.university
//
////원시값을 할당한 열거형 변수 이름을 호출시 항목이 나옴.
//print("저의 최종 학력은 \(highestEducationLevel_2) 졸업 입니다.")
//
////항목에 할당한 원시값을 호출하기 위해서는
//print("저의 최종학력은 \(highestEducationLevel_2.rawValue)")
//
//
//enum Numbers: Int {
//    case zero
//    case one
//    case two
//    case ten = 10
//}
//
//print("\(Numbers.zero.rawValue) , \(Numbers.one.rawValue) , \(Numbers.two.rawValue) ,\(Numbers.ten.rawValue)")
//
//
////연관 값을 갖는 열거형
////스위프트의 열거형 각 항목이 연관 값을 갖게되면 , 기존 프로그래밍 언어의 공용체 형태를 띌 수도 있다.
////열거형 내의 항목(case)이 자신과 연관된 값을 가질 수 있다.
////연관 값은 각 항목 옆에 소괄호로 묶어 표현할 수 있다.
////다른 항목이 연관 값을 갖는다고 모든 항목이 연관 값을 가질 필요는 없다.
//
//enum MainDish {
//    case pasta(tase :String)
//    case pizza(dough: String , topping : String) // pizza로 연관 값을 가진다
//    case chicken(withSauce : Bool)
//    case rice
//}
//
////연관 값을 갖는 열거형
//enum MainDish2 {
//    case pasta(taste: String)
//    case pizza(dough: String, topping: String) // -> pizza로 연관 값을 가진다.
//    case chicken(withSauce : Bool)
//    case rice
//}
//
//var dinner: MainDish2 = MainDish2.pasta(taste: "크림")
//dinner = .pizza(dough: "치즈 크러스트", topping: "불고기")
//dinner = .rice
//
////열거형의 응용
//
//enum PastaTaste {
//    case cream , tomato
//}
//enum PizzaDough {
//    case cheeseCrust, thin , original
//}
//enum PizzaTopping {
//    case pepperoni , cheese , bacon
//}
//enum MainDish3 {
//    case pasta(taste:PastaTaste)
//    case pizza(dough: PizzaDough, topping: PizzaTopping)
//    case chicken(withSauce:Bool)
//    case rice
//}
//
//var dinner2: MainDish3 = MainDish3.pasta(taste: PastaTaste.tomato)
//dinner2 = MainDish3.pizza(dough: PizzaDough.cheeseCrust, topping: PizzaTopping.bacon)
//
////CaseIterable프로토콜을 사용하여 열거형에 allCases라는 이름의 타입 프로퍼티를 통해 모든 케이스의 컬렉션을 생성해준다.
//
//enum School_4: CaseIterable {
//    case primary
//    case elementary
//    case middle
//    case high
//    case college
//    case university
//    case graduate
//}
//
//let allCases: [School_4] = School_4.allCases
//print(allCases)
//
////
////available속성을 갖는 열거형의 항목 순회
//enum School_5: String , CaseIterable {
//    case primary = "유치원"
//    case elementary = "초등학교"
//    case middle = "중학교"
//    case high = "고등학교"
//    case college = "대학"
//    case university = "대학교"
//
//   //available을 사용하여 특정 Swift언어 버전 또는 특정 플랫폼 및  OS버전과 관련된 선언의 수명주기(lifecycle)를 나타냅니다.
//
//    //출처: https://zeddios.tistory.com/647 [ZeddiOS:티스토리]
//    @available (iOS , obsoleted: 12.0)
//    case graduate = "대학원"
//
//    static var allCases: [School_5] {
//        let all: [School_5] = [.primary , .elementary , .middle , .high , .college , . university]
//
//        #if os(iOS)
//        return all
//        #else
//        return all + [.graduate]
//        #endif
//    }
//}
//print("-------------------------------- ")
//
//let allCases2: [School_5] = School_5.allCases
//print(allCases2)
//
//
//// available 속성을 통해 트정 케이스를 플랫폼에 따라 사용할 수 있거나 없는 경우가 생기면 CaseIterable 프로토콜을 채택하는 것만으로는
//// allCases프로퍼티를 사용할 수 없다. 그럴 때는 직접 allCases 프로퍼티를 구현해 주어야 한다.
////CaseIterable 프로토콜을 채택하여 allCases 프로퍼티를 바로 사용할 수 없는 경우가 있는데,
////바로 열거형의 케이스가 연관 값을 갖는 경우이다.
//
//
//// 순환 열거형
//
////열거형 특정 항목에 순환 열거형 항목 표시
////enum ArithmeticExpression {
////    case number(Int)
////    indirect case addtion(ArithmeticExpression, ArithmeticExpression)
////    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
////}
//
////열거형 전체에 순환 열거형 명시 (111p)
//
//indirect enum ArithmeticExpression {
//    case number(Int)
//    case addition(ArithmeticExpression , ArithmeticExpression)
//    case multiplication(ArithmeticExpression , ArithmeticExpression)
//
//}
//
////evaluate는 ArithmeticExpression 열거형의 계산을 도와주는 순환함수
//
////순환 열거형의 사용
//
//let five = ArithmeticExpression.number(5)
//let four = ArithmeticExpression.number(4)
//let sum = ArithmeticExpression.addition(five, four)
//let final = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))
//
//func evaluate(_ expression: ArithmeticExpression) -> Int {
//    switch expression {
//    case .number(let value):
//        return value
//
//    case .addition(let left, let right):
//        return evaluate(left) + evaluate(right)
//    case .multiplication(let left, let right):
//        return evaluate(left) * evaluate(right)
//    }
//}
//
//let result : Int = evaluate(final)
//print("(5+4) *2 = \(result)")
//
//
//
////비교 가능한 열거형
//
////Comparble 프로토콜을 준수하는 연관 값만 갖거나 연관 값이 없는 열거형은 Comparable 프로토콜을 채택하면 각 케이스를 비교할 수 있다.
////앞에 우치ㅣ한 케이ㅡ가 더 작은 값이 된다.
//
////Ex: 비교 가능한 열거형의 사용
//
//enum Condition : Comparable {
//
//    case terrible
//    case bad
//    case good
//    case great
//
//}
//
//let myCondition : Condition = Condition.great
//let yourCondition : Condition = Condition.bad
//
//if myCondition >= yourCondition {
//    print("내 컨디션이 더 좋아")
//}else {
//    print("너의 컨디션이 더 좋아")
//}
//
//enum Device : Comparable {
//    case iPhone(version : String)
//    case iPad(version : String)
//    case macBook
//    case iMac
//}
//var devices: [Device] = []
//devices.append(Device.iMac)
//devices.append(Device.macBook)
//devices.append(Device.iPhone(version: "14.3"))
//devices.append(Device.iPad(version: "6.1"))
//devices.append(Device.macBook)
//
//let sortedDevices: [Device] = devices.sorted()
//print(sortedDevices)
//
////연산자 :
////Ex A === B(참조가 같다.) -> A와 B가 참조(레퍼런스)타입일 때 A와 B가 같은 인스턴스를 가리키는지 비교하여 불리언 값을 비교한다.
//
////참조 비교 연산자:
////스위프트의 기본 데이터 타입은 모두 구조체로 구현되어 있기 때문에 값 타입이다.
//// 값의 비교연산에는 ==을 사용하고, 클래스의 인스턴스인 경우에만 === 을 사용한다.
//
////let valueA: Int = 3
////let valueB: Int = 5
////let valueC: Int = 5
////
////let isSameValueAB: Bool = valueA == valueB
////let isSameValueBC: Bool = valueB == valueC
////
////let referenceA: SomeClass = SomeClass()
////let referenceB: SomeClass = SomeClass()
////let referenceC: Someclass = referenceA
////
////let isSameReferenceAB: Bool = referenceA === referenceB
////let isSameReferenceAC: Bool = referenceA === referenceC
//
//
////오버플로 연산자
//
////오버플로 더하기 연산: &+ : 오버플로에 대비한 덧셈 연산을 한다
////오버플로 빼기 연산 : &- : 오버플로에 대비한 뺄셈 연산
////오버플로 곱하기 연산 &* :오버플로에 대비한 곱셉 연산
//
////예를들어 UInt8 타입은 8비트 정ㅎ수 타입으로 부호가 없는 양의 정수만을 표현하기 떄문에 0 아래로 내려가는 계산을 하면 런타임 오류발생
////오버플로 빼기 연산을 사용하면 오류 없이 오버플로 처리를 해줌
//
//// 오버플로 연산자의 사용
//
////var unsignedInteger: UInt8 = 0
//////let errorUnderflowResult: UInt8 = unsignedInteger - 1 //런타임 오류
////let underflowedValue: UInt8 = unsignedInteger &- 1 // 255
////
////unsignedInteger = UInt8.max // 255
//
//
////7장 함수
//
////7.2 함수의 정의와 호출
//print("*****************************")
//print("7장 함수")
//
//func hello(name: String) -> String {
//    return "Hello \(name)!"
//}
////스위프트에서는 변수에 함수의 결괏값을 넣을수있다.
//
//let helloJenny: String = hello(name: "Jenny")
//print(helloJenny)
//
//
//func introduce(name : String) -> String {
//    //[return "제 이름은 " + name + "입니다" ] 와 같은 동작을 한다.
//    "제 이름은 " + name + "입니다"
//}
//
//let introduceJenny : String = introduce(name: "Jenny")
//print(introduceJenny) //변수에 함수 리턴 값을 할당하여 출력
//print(introduce(name: "Hi")) // 매개변수를 넣어서 함수 결과값을 출력
//
////매개변수가 없는 함수 정의와 사용
//func helloWorld() -> String {
//    return "Hello, world! "
//}
//print(helloWorld())
//
//func sayHello(myName : String , yourName: String) -> String {
//    return "Hello \(yourName)! I'm\(myName)"
//}
//
//print(sayHello(myName : "HS" , yourName: "JS"))
//
//
////전달인자 레이블 변경을 통한 함수 중복 정의
////전달인자 레이블 변경을 통하여 메소드 오버로딩을 구현했다.
//
//
//func sayHello(to name: String, _ times: Int) -> String {
//    var result: String = ""
//
//    for _ in 0..<times {
//        result += "Hello \(name)! " + " "
//    }
//    return result
//}
//
//func sayHello(to name: String , repeatCount times: Int) -> String {
//    var result: String = ""
//
//    for _ in 0..<times {
//        result += "hello \(name)!" + " "
//    }
//    return result
//}
//
//print(sayHello(to: "Chope", 2))
//print(sayHello(to: "Chope" , repeatCount: 2))
//
////매개변수 기본값
//
////매개변수가 전달되지 않으면 기본값을 사용한다.
//
////times매개변수가 기본값 3을 갖는다.
//func sayHello(_ name: String, times: Int = 3) -> String {
//    var result : String = " "
//
//    for _ in 0..<times {
//        result += "Hello \(name)! " + " "
//    }
//    return result
//}
//
//print(sayHello("Hana")) // times매개변수의 전달 값을 넘겨주지 않아 기본값 3을 반영해서 세번 출력함.
//print(sayHello("joe" , times: 2)) // times 매개변수의 전달 값을 2로 넘겨주었기 때문에 전달 값을 반영해서 두번 출력함.
//
//
////함수 타입의 사용
//typealias CalculateTwoInts = (Int, Int) -> Int
//
//func addTwoInts(_ a: Int, _ b: Int) -> Int {
//    return a+b
//}
//
//func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
//    return a*b
//}
//
//var mathFunction: CalculateTwoInts = addTwoInts
//
////var mathFunction : (Int, Int) -> Int = addTwoInt와 동일한 표현
//print(mathFunction(2,5)) // 2+5  = 7
//
//mathFunction = multiplyTwoInts
//print(mathFunction(2,5)) // 2*5
//
////160 p 함수 타입의 사용 까지 .
//
//
//func say_Hello(to name:String , _ times: Int) -> String {
//
//    var result : String = ""
//
//    for _ in 0..<times {
//        result += "Hello \(name)!" + " "
//    }
//    return result
//}
//
//func say_Bye(to name: String, repeatCount times : Int) -> String{
//    var result : String = " "
//
//    for _ in 0..<times {
//        result += "Bye \(name)!" + " "
//    }
//    return result
//
//}
//
//print(say_Hello(to: "Hi", 3))
//print(say_Bye(to: "joe " , repeatCount : 3))

//반환이 없는 함수
//반환값이 없는 함수라면 반환 타입을 '없음'을 의미하는 Void로 표기하거나 아예 반환 타입 표현을 생략해도 된다.
//즉 반환 타입이 void거나 생략되어 있다면 반환 값이 없는 함수이다.

//func sayHelloWorld() {
//    print("Hello world")
//}
//
//sayHelloWorld()
//
////전달 인자 레이블을 사용하여 함수를 호출, 함수는 반환값이 없음.
//func sayHello(from myNames: String, to name: String) {
//    print("Hello \(name)! I'm \(myNames)")
//}
//
//sayHello(from : "HYUN" , to : "Joe" )
//
//func sayGoodBye() -> Void { // void를 명시해도 상관없음.
//    print("Good bye")
//}
//sayGoodBye()


//중첩함수 (167p)

//원점으로 이동하기 위한 함수
//
//typealias MoveFunc = (Int) -> Int
//
//func goRight(_ currentPosition : Int) -> Int {
//    return currentPosition + 1
//}
//func goLeft(_ currentPosition: Int) -> Int {
//    return currentPosition - 1
//}
//func functionForMove(_ shouldGoLeft: Bool) -> MoveFunc {
//    return shouldGoLeft ? goLeft : goRight
//}
//var position: Int = 2 //현 위치
//
////현 위치가 0보다 크므로 전되는 인자값을 true가 된다.
////그러므로 goLeft(_:) 함수가 할당될 것이다.
//
//let moveToZero : MoveFunc = functionForMove(position > 0)
//print("원점으로 갑시다.")
//
////원점에 도착하면 (현 위치가 0 이면) 반복문이 종료된다 .
//while position != 0  {
//    print("\(position) ...")
//    position = moveToZero(position)
//}
//print("원점 도착")

/* 종료되지 않는 함수
 종료되지 안흔다는 의미는 정상적으로 끝나지 않는 함수를 뜻함. 비반환 함수 또는 비반환 메서드 라고 표현.
 비반환 함수는 정상적으로 끝날 수 없는 함수이다. 비반환 함수 안에서는 오류를 던진다든가 중대한 시스템 오류를 보고하는 등의 일을 하고
 프로세스를 종료해 버리기 떄문이다.
 
 비반환 함수는 어디서든 호출이 가능하고 guard구문의 else 블록에서도 호출할수 있다.
 비반환 메서드는 재정의 할 수 있지만 비반환 타입이라는 것은 변경할 수 없다.
 
 비반환 함수(메서드)는 반환 타입을 Never라고 명시해주면 된다.
 */

//비반환 함수의 정의와 사용
//
//func crashAndBurn() -> Never {
//    fatalError("Something happened")
//}
//crashAndBurn() // 프로세스 종료 후 오류 보고
//
//func someFunction(isAllIsWell : Bool) {
//    guard isAllIsWell else {
//        print("마을에 도둑이 들었습니다!")
//        crashAndBurn()
//    }
//    print("All is well")
//}
//someFunction(isAllIsWell : true) // All is well
//someFunction(isAllIsWell : false) // 마을에 도둑이 들었습니다.
//
////프로세스 종료 후 오류 보고

//@discardableResult 선언 속성 사용

//func talk(_ what : String) -> String {
//    print(what)
//
//    return what
//}
//
//@discardableResult func discadableResultSay(_ HS: String) -> String {
//    print(HS)
//    return HS
//}
//
////반환 값을 사용하지 않았으므로 컴파일러가 경고를 표시할 수 있음.
//talk("Hello") // Hello
//
////@discardableResult 속성을 사용해 반환 값을 사용하지 않을 수 있다고 미리 알려서 반환 값을 사용하지 않아도
////컴파일러가 미리 경고하지 않는다.
//
//discadableResultSay("Bye") // Bye
//
////오류가 발생하는 nil 할당
//
////var myName : String = "yagom"
//
////myName = nil
//
////nil은 옵셔널로 선언된 곳에서만 사용될 수 잇음. 옵셔널 변수 또는 상수 등은 데이터 타입 뒤에 물음표(?)를 붙여 표현한다.
//
////옵셔널 변수의 선언 및 nil할당
//var myName : String?  = "Hyun"
//print(myName)
//
//myName = nil
//print(myName)
//
//
//// 옵셔널 자체가 열거형이기 때문에 옵셔널 변수는 switch 구문을 통해 값이 있고 없음을 확인할 수 있다.
//
//func checkOptionalValue(value optionalValue: Any?) {
//    switch optionalValue {
//    case .none:
//        print("This Optional variable is nil")
//    case .some(let value):
//        print("Value is \(value)")
//    }
//}
//
//var myName2: String? = "Hs"
//checkOptionalValue(value: myName2) // Value is Hs
//
//myName2 = nil
//checkOptionalValue(value: myName2) // This Optional variable is nil


//옵셔널 강제추출

//런타임 오류가 일어날 가능성이 가장 높음 -> 옵셔널을 만든 의미가 무색해짐
//강제 추출시 옵셔널에 값이 없다면 즉 nil이라면 런타임 오류가 발생.
//옵셔널의 값을 강제 추출하려면 옵셔널 값의 뒤에 느낌표(!)를 붙여주면 값을 강제로 추출하여 반환해줌.

//var myName : String? = "HS"
//
////옵셔널이 아닌 변수에는 옵셔널 값이 들어갈 수 없다. 추출해서 할당해 주어야 한다.
//var yagom: String = myName!
//
//myName = nil
//
//if myName != nil {
//    print("my name is \(myName!)")
//}else {
//    print("myName == nil")
//}

//var myName : String? = "Hyunsoo"

//옵셔널 바인딩을 사용한 옵셔널 값의 추출.

//옵셔널 바인딩을 통한 임시 상수 할당.

//if let name = myName {
//    print("My name is \(name)")
//}else {
//    print("myName == nil")
//}
//
////옵셔널 바인딩을 통한 임시 변수 할당.
//
//if var name = myName {
//    name = "wizplan" // 변수이므로 내부에서 변경이 가능.
//    print("My name is \(name)")
//}else {
//    print("myName == nil")
//}
//

//
//var myName : String? = "Hyunsoo"
//var yourName: String? = nil
//
//
////friend에 바인딩이 되지 않으므로 실행되지 않는다.
//
//if let name = myName , let friend = yourName {
//    print("We are friend \(name) & \(friend) ")
//}
//
//yourName = "eric"
//
//if let name = myName , let friend = yourName {
//    print("We are friend ! \(name) & \(friend)")
//}

// 기본 구조체 정의
//struct BasicInformation {
//    var name: String
//    var age : Int
//}
//

//BasicInformation 구조체의 인스턴스 생성 및 사용

//프로퍼티 이름(name,age)으로 자동 생성된 이니셜라이저를 사용하여 구조체를 생성한다

//var hyunsooInfo: BasicInformation = BasicInformation(name: "Hynsoo ", age: 99)
//hyunsooInfo.age = 10 // 변경 가능
//hyunsooInfo.name = "ㅎㅎ" //변경 가능
//
//print(hyunsooInfo) //구조체에 저장된 멤버들 통째로 출력.
//print(hyunsooInfo.age) //구조체에 저장된 age멤버 출력
//print(hyunsooInfo.name) // 구조체에 저장된 name멤버 출력
//
//
////프로퍼티 이름 (name,age)으로 자동 생성된 이니셜라이저를 사용하여 구조체를 생성한다.
//let sebaInfo: BasicInformation = BasicInformation(name : "Seba" , age : 999)
//
////sebaInfo.age =  942141 //변경불가 !
//
//print(sebaInfo) // sebaInfo 변수에 저장된 구조체의 멤버값들 출력



//9.클래스 -> 클래스는 구조체와는 다르게 인스턴스를 상수 let으로 선언해도 내부 프로퍼티 값을 변경 할 수 있음.


//class Person {
//    var height : Float = 0.0
//    var weight : Float = 0.0
//}
//
//
//var hyunsoo : Person = Person()
//hyunsoo.height  = 12323.3
//hyunsoo.weight  = 31232132131.3
//
//let jenny: Person = Person()
//
//jenny.height  = 444444.4
//jenny.weight = 433.4
//
//print("jenny의 height 는 : \(jenny.height) 이고 jenny의 weight는 \(jenny.weight)")
//print("hyunsoo의 height는 : \(hyunsoo.height) 이고 hyunsoo의 weight 는 \(hyunsoo.weight)")

//9.2.3 클래스 인스턴스의 소멸

//class Person {
//    var height : Float = 0.3
//    var weight : Float = 0.42
//
//    deinit {
//        print("Person 클래스의 인스턴스가 소멸된다.")
//    }
//}
//
//var Hyunsoo : Person? = Person()
//
//Hyunsoo = nil //Person클래스의 인스턴스가 소멸된다.

//구조체와 클래스의차이 -> Call by value , Call by reference  값 복사  OR 주소 복사

//192 p 값 타입과 참조 타입의 차이

//struct BasicInforamtion {
//    let name : String
//    var age : Int
//
//}
//var hyunsooInfo : BasicInformation = BasicInformation(name: "HS" , age : 4554)
//hyunsooInfo.age = 100
//
////hyunsooInfo의 값을 복사하여 할당한다
//
//var yagomInfo: BasicInformation = BasicInformation(name: "yagom" , age: 99)
//
//
//var SangyeonInfo : BasicInformation = hyunsooInfo
//
//print("hyunsoo's age: \(hyunsooInfo.age)") //100
//print("SangyeonInfo's age : \(SangyeonInfo.age)") //100
//
//SangyeonInfo.age = 9999
//
//print("Hyunsoo's age : \(hyunsooInfo.age)") //100 -> Hyunsoo의 값은 변동 없음.
//print("SangyeonInfo's age : \(SangyeonInfo.age)")// 9999 -> SangyeonInfo는 값을 복사해왔기 때문에 별개의 값을 가짐.
//
//class Person {
//    var height : Float = 0.0
//    var weight : Float = 0.0
//
//}
////메모리 주소를 참조하기 때문에 메모리 주소를 공유하는 변수의 값을 변경하면
////메모리를 공유하는 변수 둘다 값이 변경된다.
//
//var hs: Person = Person()
//var jo: Person = hs  //hs의 참조를 할당함.
//
//print("1_hs's weight : \(hs.weight)")
//print("1_hs's height : \(hs.height)")
//
//jo.height = 300
//jo.weight = -4
//print("jo's height : \(jo.height)")
//print("jo's weight : \(jo.weight)")
//
//
//print("2_hs's weight : \(hs.weight)")
//print("2_hs's height : \(hs.height)")
//
//var yagom : Person = Person()
//
//var friend : Person = Person()
//
//print("yagom's height :\(yagom.height)")
//print("friend's height: \(friend.height)")
//
//friend.height = 184.4
//
//print("yagom's height: \(yagom.height)")
//print("friend's height: \(friend.height)")
//
//func changeBasicInfo(_ info: BasicInformation) {
//    var copiedInfo: BasicInformation = info
//    copiedInfo.age = 1
//}
//
//func changePersonInfo(_ info: Person) {
//    info.height = 155.3
//}
//
////changeBasicInfo(_:)로 전달되는 전달인자는 값이 복사되어 전달되기 때문에 yagomInfo의 값만 전달되는 것이다.
//
//changeBasicInfo(yagomInfo)
//print("yagom's age: \(yagomInfo.age)") //100
//
////changePersonInfo(_:)의 전달인자로 yagom의 참조가 전달되었기 때문에
////yagom이 참조하는 값들에 변화가 생긴다.
//
//var yagom2: Person = Person()
//
//let friend2: Person = yagom2 // yagom의 참조를 할당함.
//let anotherFriend: Person = Person() //새로운 인스턴스를 생성.
//
//print(yagom2 === friend2)
//print(yagom2 === anotherFriend)
//print(friend2 === anotherFriend)
//print(friend2 !== anotherFriend)

//저장 프로퍼티의 선언 및 인스턴스 생성

//struct CoordinatePoint {
//    var x: Int //저장 프로퍼티
//    var y: Int //저장 프로퍼티
//}
//
////구조체에는 기본적으로 저장 프로퍼티를 매개변수로 갖는 이니셜라이저가 있다.
//
//let yagomPoint : CoordinatePoint = CoordinatePoint(x: 10 , y : 5)
//
////사람의 위치 정보
//class Position {
//    var point : CoordinatePoint
//    //저장 프로퍼티(변수) - 위치(point)는 변경될 수 있음을 뜻함.
//    let name: String //저장 프로퍼티(상수)
//
//    //프로퍼티 기본값을 지저앻주지 않는다면 이니셜라이저를 따로 정의해주어야 한다 .
//
//    init(name: String , currentPoint: CoordinatePoint) {
//        self.name = name
//        self.point  = currentPoint
//    }
//}
//
////사용자 정의 이니셜라이저를 호출해야만 한다.
////그렇지 않으면 프로퍼티 초깃값을 할당할 수 없기 때문에 인스턴스 생성이 불가능함.
//let yagomPosition: Position = Position(name : "yagom" , currentPoint : yagomPoint)
//
//struct CoordinatePoint2 {
//    var x: Int = 0 // 저장 프로퍼티
//    var y: Int = 0 // 저장 프로퍼티
//}
//
////프로퍼티의 초깃값을 할당했다면 굳이 전달인자로 초깃값을 넘길 필요가 없다.
//let yagomPoint_2: CoordinatePoint2 = CoordinatePoint2()
//
////물론 기존에 초깃값을 할당할 수 있는 이니셜라이저도 사용 가능하다.
//let wizplanPoint_2 : CoordinatePoint2 = CoordinatePoint2 (x : 10 , y : 5)
//
//print("yagom's point: \(yagomPoint_2.x) , \(yagomPoint_2.y)")
//
//print("wizplanPoint_2 : \(wizplanPoint_2.x) , \(wizplanPoint_2.y)")
//
////사람의 위치 정보
//
//class Position_2 {
//    var point: CoordinatePoint2 = CoordinatePoint2() //저장 프로퍼티
//    var name : String = "Unknown"
//}
//
//
////초깃값을 지정해줬다면 사용자 정의 이니셜라어지를 사용하지 않아도 된다.
//let yagomPosition_2: Position_2 = Position_2()
//
//yagomPosition_2.point  = yagomPoint_2
//yagomPosition_2.name = "yagom"


// **저장 프로퍼티의 값이 있어도 그만, 없어도 그만인 옵셔널이라면 굳이 초깃값을 넣어주지 않아도 된다 .

//즉 이니셜라어지에서 옵셔널 프로퍼티에 꼭 값을 할당해주지 않아도 된다 .

//옵셔널 저장 프로퍼티

//struct CoordinatePoint {
//    //위치는 x, y 값이 모두 있어야 하므로 옵셔널이면 안된다 .
//
//    var x : Int
//    var y : Int
//}
//
////사람의 위치 정보
//class Position {
//    //현재 사람의 위치를 모를수도있다 - 옵셔널
//    var point: CoordinatePoint?
//
//    let name :String
//
//    init(name: String) {
//        self.name = name
//    }
//}
////이름은 필수지만 위치는 모를 수 있다.
//let yagomPosition : Position = Position(name : "yagom")
//
////위치를 알게 되면 그 때 위치 값을 할당해준다 .
//yagomPosition.point = CoordinatePoint(x: 20 , y: 10)




//지연 저장 프로퍼티

//struct CoordinatePoint {
//    var x: Int = 0
//    var y: Int = 0
//
//}
//class Position {
//    lazy var point : CoordinatePoint = CoordinatePoint()
//    let name : String
//
//    init(name: String){
//        self.name = name
//    }
//}
//let yagomPosition : Position = Position(name : "yagom")
//
////이 코드를 통해 point 프로퍼티로 처음 접근할 때
////point 프로퍼티의 CoordinatePoint가 생성된다.
//print(yagomPosition.point)


//연산 프로퍼티

//메서드로 구현된 접근자와 설정자
//struct CoordinatePoint {
//    var x : Int // 저장 프로퍼티
//    var y : Int // 저장 프로퍼티
//
//    //대칭점을 구하는 메서드 - 접근자
//    //Self는 타입 자기 자신을 뜻한다.
//    //Self대신 CoordinatePoint를 사용해도 된다.
//
//    func oppositePoint() ->  Self {
//        return CoordinatePoint(x: -x , y: -y )
//    }
//    //대칭점을 설정하는 메서드 -설정자
//    mutating func setOppositePoint(_ opposite: CoordinatePoint) {
//        x = -opposite.x
//        y = -opposite.y
//    }
//}
//var yagomPosition : CoordinatePoint = CoordinatePoint(x: 10 , y: 20)
//
////현재 좌표
//print("현재 좌표 : \(yagomPosition)") // 10 , 20
//
////대칭 좌표
//print("대칭 좌표 : \(yagomPosition.oppositePoint())")
//
////대칭 좌표를 (15, 10)으로 설정
//
//yagomPosition.setOppositePoint(CoordinatePoint(x : 15 , y : 10))
//
////현재 좌표는 (-15, -10)으로 설정된다 .
//print("현재 좌표: \(yagomPosition)")


//연산 프로퍼티를 사용하여 메서드를 좀 더 간결하고 확실하게 표현할 수 있다.

//struct CoordinatePoint {
//    var x: Int // 저장 프로퍼티
//    var y: Int // 저장 프로퍼티
//
//
//    //대칭 좌표
//
//    var oppositePoint: CoordinatePoint {
//        //접근자
//        get {
//            return CoordinatePoint(x : -x , y : -y)
//        }
//        //설정자
//        set(opposite) {
//            x = -opposite.x
//            y = -opposite.y
//        }
//    }
//}
//
//var yagomPosition: CoordinatePoint = CoordinatePoint(x : 10 , y : 20)
//
////현재 좌표
//print(yagomPosition)
//
////대칭 좌표
//print(yagomPosition.oppositePoint)

//struct CoordinatePoint {
//    var x : Int // 저장 프로퍼티
//    var y : Int // 저장 프로퍼티
//
//    //대칭 좌표
//    var oppositePoint : CoordinatePoint {
//        //접근자
//        get {
//            return CoordinatePoint( x : -x , y : -y )
//        }
//
//        //설정자
//        set(opposite) {
//            x = -opposite.x
//            y = -opposite.y
//        }
//    }
//}
//
//var yagomPosition: CoordinatePoint = CoordinatePoint(x : 10 , y :20)
//
////현재 좌표
//print(yagomPosition)
//
////대칭 좌표
//print(yagomPosition.oppositePoint)
//
////대칭 좌표를 (15, 10)으로 설정하면
//yagomPosition.oppositePoint = CoordinatePoint(x : 15, y : 10)
//
////현재 좌표는 -15 -10으로 설정됨
//print(yagomPosition)
//


//읽기 전용 연산 프로퍼티
//set을 구현 안하면 됨 .
//struct CoordinatePoint {
//    var x: Int //저장 프로퍼티
//    var y: Int //저장 프로퍼티
//
//    //대칭 좌표
//
//    var oppositePoint: CoordinatePoint {
//        //접근자
//
//        get {
//            return CoordinatePoint(x : -x , y : -y)
//        }
//    }
//}
//
//var yagomPosition: CoordinatePoint = CoordinatePoint(x : 10 , y : 20 )
//
////현재 좌표
//print("현재 좌표 : \(yagomPosition)")
//
////대칭 좌표
//print("대칭 좌표 : \(yagomPosition.oppositePoint)")
//
////set 메소드를 구현 안해서 구조체의 값 변경 불가 .
////yagomPosition.oppositePoint = CoordinatePoint(x : 15 , y : 10)


//매개변수 이름을 생략한 설정자

//struct Hyunsoo {
//    var x: Int //저장 프로퍼티
//    var y: Int //저장 프로퍼티
//
//    //대칭 좌표
//    var oppositePoint: Hyunsoo {
//        //접근자
//        get {
//            //이곳에서 return 키워드를 생략할 수 있음.
//             Hyunsoo(x : -x , y : -y)
//        }
//        set {
//            x = -newValue.x
//            y = -newValue.x
//        }
//    }
//}


//프로퍼티 감시자 (206p)


//willset 메서드에 전달되는 전달인자는 프로퍼티가 변경될 값, didSet 메서드에 전달되는 전달인자는 프로퍼티가 변경되기 전의 값.
//매개변수의 이름을 따로 지정하지 않으면 willSet메서드에는 newValue가 didSet메서드에는 oldValue가 매개변수 이름이 자동지정된다.
//
//class Account {
//    var credit : Int = 0  {
//        willSet {
//            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
//        }
//        didSet{
//            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
//        }
//    }
//}
//
//let myAccount: Account = Account()
////잔액이 0원에서 1000원으로 변경될 예정이다.
//
//myAccount.credit = 1000


//상속받은 연산 프로퍼티의 프로퍼티 감시자 구현

//class Account {
//    var credit: Int = 0 {
//
//        willSet{
//            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정이다....")
//        }
//        didSet{
//            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었다....")
//        }
//    }
//
//    var dollarValue: Double { //연산 프로퍼티
//
//        get {
//            return Double(credit)
//        }
//        set {
//            credit = Int(newValue * 1000)
//            print("잔액을 \(newValue)달러로 변경중입니다...")
//        }
//    }
//}
//class ForeignAccount: Account {
//    override var dollarValue: Double {
//        willSet {
//            print("잔액이 \(dollarValue)달러에서 \(newValue)달러로 변경될 예정입니다...")
//        }
//        didSet {
//            print("잔액이 \(oldValue)달러에서 \(dollarValue)로 변경됨...")
//        }
//    }
//}
//let myAccount : ForeignAccount = ForeignAccount()
//
//myAccount.credit = 1000
//
//print("************--------------------구분선----------------------***************")
//myAccount.dollarValue = 2

//
//var wonInPocket: Int = 2000 {
//    willSet {
//        print("주머니의 돈이 \(wonInPocket)원에서 \(newValue)원으로 변경될 예정입니다.")
//    }
//    didSet {
//        print("주머니의 돈이 \(oldValue)원에서 \(wonInPocket)원으로 변경 되었습니다.")
//    }
//}
//var dollarInPocket : Double {
//    get {
//        return Double(wonInPocket) / 1000.0
//    }
//    set {
//        wonInPocket = Int(newValue * 1000.0)
//        print("주머니의 달러를 \(newValue)달러로 변경 중 입니다.")
//    }
//}
//
//dollarInPocket = 3.5

//class AClass {
//
//    //저장 타입 프로퍼티
//    static var typeProperty : Int  = 0
//
//    //저장 인스턴스 프로퍼티
//    var instanceProperty : Int = 0  {
//        didSet{
//            //Self.typeProperty는
//            //Aclass.typeProperty와 같은 표현임..
//            Self.typeProperty = instanceProperty + 100
//        }
//    }
//
//    //연산 타입 프로퍼티
//    static var typeComputeProperty : Int {
//        get {
//            return typeProperty
//        }set {
//            typeProperty = newValue
//        }
//    }
//}
//
//AClass.typeProperty = 123
//
//let classInstance: AClass = AClass()
//classInstance.instanceProperty = 100
//
//print(AClass.typeProperty)
//print(AClass.typeComputeProperty)

//class Acount {
//    static let dollarExchangeRate: Double = 1000.0 //타입 상수
//
//    var credit : Int  = 0  //저장 인스턴스 프로퍼티
//
//    var dollarValue : Double { //연산 프로퍼티
//        get {
//            //Selft.dollarExchangeRate는
//            //Acount.dollarExchageRate와 같은 표현임 .
//            return Double(credit) / Self.dollarExchangeRate
//        }set {
//            //Self.dollarExchangeRate는
//            //Acount.dollarExchangeRate와 같은 표현.
//
//            credit = Int(newValue * Acount.dollarExchangeRate)
//            print("잔액을 \(newValue)달러로 변경 중 입니다.")
//        }
//    }
//}
//
//let AcountInstance  : Acount = Acount()
//
//AcountInstance.dollarValue = 300.2
//print(Acount.dollarExchangeRate)

//class Person {
//    var name :String
//
//    init(name : String){
//        self.name = name
//    }
//}
//struct Stuff {
//    var name :String
//    var owner: Person
//}
//
//print(type(of: \Person.name)) // ReferenceWritableKeyPath<Person,String>
//print(type(of: \Stuff.name))



//인스턴스 메서드

//인스턴스 메서드는 특정 타입의 인스턴스에 속한 함수를 뜻한다.

class LevelClass {
    //현재 레벨을 저장하는 프로퍼티
    
    var level : Int = 0  {
        //프로퍼티 값이 변경되면 호출하는 프로퍼티 감시자.
        didSet {
            print("Level \(level)")
        }
    }
    
    //레벨이 올랐을 때 호출하는 메서드
    func levelUp() {
        print("Level up")
        level += 1
    }
    //레벨이 감소했을 때 호출하는 메소드
    func levelDown() {
        print("Level Down")
        level -= 1
        
        if level < 0 {
            reset()
        }
    }
    //특정 레벨로 이동할 때 호출할 메서드
    func jumpLevel(to : Int) {
        print("Jump to \(to)")
        level = to
    }
    func reset() {
        print("Reset")
        level = 0
    }
}

var levelClassInstance : LevelClass = LevelClass()
levelClassInstance.levelUp()

levelClassInstance.levelDown()
levelClassInstance.levelDown()

levelClassInstance.jumpLevel(to: 3)
