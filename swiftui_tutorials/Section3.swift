//
//  Section1.swift
//  swiftui_tutorials
//
//  Created by Francesco Prisco on 05/12/24.
//

import SwiftUI

struct Section3: View {
    
    let lezioni: [Lezione] = [
        Lezione(name: "How to store ordered data in arrays"
, description: "In Swift, you can store ordered data using arrays. Arrays are collections that hold multiple values of the same type in a specific order. You can create an array using square brackets and separate elements with commas. For example: let numbers = [1, 2, 3, 4, 5]. Arrays can also be declared as empty and filled later: var names: [String] = []. You can access elements in an array using their index, which starts at 0. For example: let firstNumber = numbers[0]. Arrays are mutable if declared with 'var', allowing you to add, remove, or modify elements. For instance: names.append(Alice); names[0] = Bob. If declared with 'let', the array is immutable and cannot be changed. Arrays provide many useful methods, such as count for the number of elements, contains to check for a value, and sort for ordering. They are fundamental in Swift for managing lists of ordered data efficiently.", emoji: "☎️"),
        Lezione(name: "How to store and find data in dictionaries"
, description: "In Swift, dictionaries are used to store data in key-value pairs, where each key is unique and maps to a corresponding value. You can create a dictionary using square brackets with keys and values separated by a colon. For example: let studentGrades = [Alice: 90, Bob: 85, Charlie: 88]. To create an empty dictionary, you can use: var emptyDict: [String: Int] = [:]. To access a value, you use the key, like this: let grade = studentGrades[Alice]. If the key exists, it will return the value, or 'nil' if the key is not found. You can also use the 'if let' statement to safely unwrap the value: if let grade = studentGrades[Bob] { print(grade) }. Dictionaries are mutable if declared with 'var', meaning you can add, remove, or modify key-value pairs. For example: studentGrades[Dave] = 92. You can check if a key exists in a dictionary using 'contains' or 'keys' to get all the dictionary keys. Dictionaries are a powerful and efficient way to store and retrieve data in Swift using unique identifiers.", emoji: "☎️"),
        Lezione(name: "How to use sets for fast data lookup"
, description: "In Swift, sets are unordered collections of unique values. They are ideal for fast data lookup because they use a hashing mechanism, which allows for quick checks to see if a value is contained within the set. You can create a set using curly braces or the 'Set' initializer. For example: let numbers: Set = [1, 2, 3, 4, 5]. You can also create an empty set: var emptySet: Set<Int> = []. To check if a set contains a specific value, you can use the 'contains' method. For example: if numbers.contains(3) { print(Found 3) }. Sets do not allow duplicate values, so adding a duplicate will have no effect: numbers.insert(3) will not change the set. Sets are particularly useful when you need to quickly determine if a value exists, as their time complexity for lookups is generally constant, making them much faster than arrays for this purpose. Sets can also perform operations like union, intersection, and subtraction, allowing you to combine, find common, or remove elements from multiple sets.", emoji: "☎️"),
        Lezione(name: "How to create and use enums", description: "In Swift, enums (enumerations) are used to define a type with a set of related values. Each value in an enum is called a 'case'. You can define an enum using the 'enum' keyword followed by the name of the enum and its cases. For example: enum Direction { case north case south case east case west }. You can create an instance of an enum by referring to one of its cases. For example: let currentDirection = Direction.north. Enums can also have raw values, which allow each case to be associated with a specific value, such as an integer or a string. For example: enum StatusCode: Int { case success = 200 case notFound = 404 case serverError = 500 }. In this case, each status code is associated with an integer. You can access the raw value of an enum case like this: let code = StatusCode.success.rawValue. You can also use enums with associated values, which allow you to store additional data with each case. For example: enum Result { case success(String) case failure(String) }. You can create instances with associated values: let successResult = Result.success(Operation successful). To access the associated value, you use a 'switch' statement: switch successResult { case .success(let message): print(message) case .failure(let message): print(message) }. Enums are a powerful tool in Swift, allowing you to model and manage a group of related values efficiently. They improve code clarity, reduce errors, and provide type safety when working with multiple related options.", emoji: "☎️"),
        Lezione(name: "Lezione 5", description: "Contenuto", emoji: "☎️"),
        Lezione(name: "Lezione 6", description: "Contenuto", emoji: "☎️"),
        Lezione(name: "Lezione 7", description: "Contenuto", emoji: "☎️")
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack(spacing: 20){
                    ForEach(lezioni.indices, id: \.self) {   index in
                        let lezione = lezioni[index]
                        NavigationLink {
                            LezioneDetail(lezione: lezione)
                        } label: {
                            HStack{
                                if index % 2 == 0{
                                    Spacer()
                                }
                                ZStack {
                                    Circle()
                                        .fill(.green.opacity(0.5))
                                        
                                    Text(lezione.emoji)
                                }
                                
                                .frame(width: 80, height: 80)
                                if index % 2 != 0{
                                    Spacer()
                                }
                            }
                            .padding(.horizontal, 100)
                        }
                    }
                }
                .padding(.top, 50)
            }
        }
    }
}

#Preview {
    Section3()
}
