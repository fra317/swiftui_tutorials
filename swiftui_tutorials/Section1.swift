//
//  Section1.swift
//  swiftui_tutorials
//
//  Created by Francesco Prisco on 05/12/24.
//

import SwiftUI

struct Section1: View {
    
    let lezioni: [Lezione] = [
        Lezione(name: "How to create variables and constants, description",description: "In SwiftUI, you use variables and constants to store data values. The main difference between them is that variables can change their value, while constants cannot. Variables are declared using the 'var' keyword and are mutable, meaning their values can be changed after they are initially set.\n\nFor example: var name: String = John. You can later change the value by writing name = Jane. Constants, on the other hand, are declared using the 'let' keyword and are immutable.\n\nFor example: let pi: Double = 3.14159. Once declared, you cannot change its value. Attempting to do so will result in a compile-time error. Swift also supports type inference, so you can omit the data type if it can be inferred from the initial value. For instance, var age = 25 or let greeting = Hello, SwiftUI!. Use 'let' by default unless you know the value will change. This ensures safer and more predictable code. Mastering variables and constants is a key step in learning how to manage data in SwiftUI.", emoji: "☎️"),
        Lezione(name: "How to create strings", description: "In Swift, strings are used to store and manipulate text. You can create a string by enclosing a sequence of characters within double quotes. For example: let greeting = Hello, World!. Strings can be assigned to variables or constants, and they are mutable when assigned to variables, meaning their value can change. \n\n For example: var name = John; name = Jane. Swift also allows you to create multi-line strings using three double quotes: let multilineString = This is a multi-line string. You can concatenate strings using the + operator: let fullName = John + - + Doe. Additionally, Swift supports string interpolation, which lets you include variables or expressions directly in a string using : let message = Hello, !. Strings in Swift are powerful and come with many built-in methods to manipulate text, such as counting characters, checking for prefixes, and more. Learning how to use strings effectively is essential for working with text in Swift.", emoji: "☎️"),
        Lezione(name: "How to store whole numbers", description: "In Swift, whole numbers (integers) are stored using the 'Int' data type. You can declare an integer using the 'var' or 'let' keywords. For example: let age: Int = 25. You can also omit the data type if Swift can infer it from the value: var score = 100. Integers in Swift are type-safe, meaning you cannot assign a non-integer value to an 'Int' variable or constant. \n\nSwift provides various integer types like 'Int8', 'Int16', 'Int32', and 'Int64' for different storage capacities, but in most cases, 'Int' is sufficient as it automatically matches the size of the platform's native word size (e.g., 32-bit or 64-bit). Integers can also be negative: let temperature = -5. Use 'Int' when you need to store and manipulate whole numbers in Swift.", emoji: "☎️"),
        Lezione(name: "How to store decimal numbers", description: "In Swift, decimal numbers are stored using the 'Double' or 'Float' data types. 'Double' is the most commonly used type as it provides higher precision, while 'Float' is used when less precision is sufficient. You can declare a decimal number using the 'var' or 'let' keywords.\n\n For example: let pi: Double = 3.14159. You can also omit the data type if Swift can infer it from the value: var temperature = 98.6. If you need less precision, you can explicitly use 'Float': let weight: Float = 70.5. Swift ensures type safety, so you cannot assign a decimal value to an integer variable without explicit conversion. Use 'Double' by default unless you have a specific reason to use 'Float'.", emoji: "☎️"),
        Lezione(name: "Lezione 5", description: "Contenuto", emoji: "☎️"),
        Lezione(name: "Lezione 6", description: "Contenuto", emoji: "☎️"),
        Lezione(name: "Lezione 7", description: "Contenuto", emoji: "☎️")
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack(spacing: 20){
                    ForEach(lezioni.indices, id: \.self) { index in
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
                                        .fill(.red.opacity(0.5))
                                        
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
                }
                .padding(.top, 50)
            }
        
    }
}

#Preview {
    Section1()
}
