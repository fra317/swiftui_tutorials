//
//  Section1.swift
//  swiftui_tutorials
//
//  Created by Francesco Prisco on 05/12/24.
//

import SwiftUI

struct Section2: View {
    
    let lezioni: [Lezione] = [
        Lezione(name: " How to store truth with Booleans", description: "In Swift, the 'Bool' data type is used to store truth values. A Boolean value can only be one of two possible states: 'true' or 'false'. These values are integral to decision-making in programming and are widely used to represent the truth or falsity of a condition, enable control flow, and manage program logic. You can declare a Boolean variable or constant using the keywords 'var' or 'let', followed by the name of the variable, an optional type declaration, and an initial value. For example: let isComplete: Bool = true. If the type can be inferred from the value, you can omit the explicit ': Bool' type annotation. For example: let isSunny = true. Booleans declared with 'var' can be modified later, while those declared with 'let' are constants and cannot change after their initial assignment. Booleans are often used in conditional statements like 'if', 'else if', and 'else' to control the flow of a program. For example: if isRainy { print(Take an umbrella.) } else { print(No need for an umbrella.) }. Swift provides logical operators for working with Booleans, such as NOT ('!'), AND ('&&'), and OR ('||'). The NOT operator negates a Boolean value, AND returns 'true' only if both conditions are 'true', and OR returns 'true' if at least one condition is 'true'. Booleans can also control loops like 'while', where the loop continues as long as the Boolean condition remains 'true'. Additionally, the 'toggle()' method can flip a Boolean's value between 'true' and 'false'. For example: var isOn = true; isOn.toggle(); print(isOn). Swift Booleans are type-safe, meaning you cannot assign non-Boolean values to them. They are commonly used in functions that check conditions and return a Boolean result. For example: func isEven(_ number: Int) -> Bool { return number % 2 == 0 }. This ensures clear and concise code when making decisions or checking states. Mastering the use of Booleans is fundamental for controlling logic and building functional Swift applications.", emoji: "☎️"),
        Lezione(name: "How to join strings together", description: "In Swift, you can join strings together using concatenation or string interpolation. Concatenation involves combining strings using the '+' operator. For example: let greeting = Hello + - - + World; print(greeting). This will output: 'Hello World'. Alternatively, you can use string interpolation, which allows you to embed variables or expressions directly into a string by using '\("expression")'. For example: let name = Alice; let message = Hello, \("name")!; print(message). This will output: 'Hello, Alice!'. String interpolation is often preferred as it makes the code more readable and flexible. For instance, you can include calculations directly in the string: let total = 42; let summary = The total is \("total * 2"). You can also build multi-line strings using three double quotes: let multiline = This is line one.\nThis is line two.. Combining strings efficiently is a crucial skill in Swift, especially for creating dynamic content in your applications.", emoji: "☎️"),
        Lezione(name: "Why does Swift have string interpolation?"
, description: "Swift has string interpolation to provide a simple and efficient way to create strings that include variables, constants, or expressions. String interpolation allows you to embed values directly into a string using the '\("expression")' syntax, which makes code more readable and reduces the need for complex concatenation operations. For example: let name = Alice; let age = 25; let message = My name is \("name") and I am \("age") years old. This produces: My name is Alice and I am 25 years old. Without interpolation, you would need to concatenate strings and convert values to strings manually, which can make the code harder to read and more error-prone. String interpolation also supports advanced formatting, such as specifying precision for numbers: let pi = 3.14159; let result = The value of pi is \("String(format: %.2f, pi)").By using string interpolation, developers can write cleaner and more expressive code, improving both productivity and code maintainability.", emoji: "☎️"),
        Lezione(name: "Summary:Simple data", description: "Swift provides simple data types like Int for whole numbers, Double and Float for decimal numbers, Bool for truth values, and String for text. Integers store whole numbers like 42, while Doubles and Floats handle decimal values like 3.14, with Double being more precise. Booleans represent true or false values, useful in decision-making. Strings are used for text and support concatenation with '+' or interpolation with '\("value")' to embed variables. These basic types are foundational for working with data in Swift, allowing you to build functional and expressive applications.", emoji: "☎️"),
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
                                        .fill(.blue.opacity(0.5))
                                        
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
    Section2()
}
