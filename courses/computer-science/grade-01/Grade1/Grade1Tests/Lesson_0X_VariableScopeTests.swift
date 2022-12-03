// ⓒ Bithead LLC 2022. All rights reserved.

/**
 Lesson 0X: Variable Scope

 Variables can be "visible" depending on where it is declared in your program.

 Scoping your variables, to only the place where they are needed, reduces the possibility of introducing bugs in to your program.
 */

import XCTest

fileprivate let scopeTestsName = "ScopeTests"

final class Lesson_0X_ScopeTests: XCTestCase {

    let isTestEnabled: Bool = true

    func testIfLetScope() throws {
        /**
         `if let` Scoped Variables

         Variables created via `if let` are scoped only to the block of `if` statement block.
         */

        let name: String? = "George"

        if let name {
            // `name` is visible only to this block of code
            print("name:", name)
        }
        else {
            /**
             Uncomment this line of code to see Xcode display an error.
             */
            //print("name:", name)
        }

        /**
         Uncomment this line of code to see Xcode display an error.
         */
        //print("name:", name)

        /**
         As you can see, `name` is visible only to the `if let` statement block.
         */
    }

    func testFuncScope() throws {
        /**
         Function Scoped Variables

         Variables scoped by function are variables only visible to the function.

         `nameOfGame` can only be accessed by this function, `testFuncScope`.
         */

        let nameOfGame = "Minecraft"
        print("nameOfGame:", nameOfGame)

        /**
         Swift allows us to delcare functions within functions.

         Let's explore how scoping a variable to a function prevents us from seeing it in other contexts.
         */

        func turnWheel() {
            var numberOfTurns = 0
            numberOfTurns += 1
            print("numberOfTurns", 1)
        }

        /**
         Uncomment `numberOfTurns` below.

         Xcode is telling you that it can't find `numberOfTurns`. It can't find it, because `numberOfTurns` is scoped to the `turnWheel` function. In other words, `numberOfTurns` is visible only to `turnWheel`.

         Comment `numberOfTurns` when finished.
         */
        //numberOfTurns = 2

        /**
         Uncomment `numberOfTurns` below.

         Here is another example where `numberOfTurns` is not in scope.

         Comment `numberOfTurns` when finished.
         */
        func pushWheel() {
            //numberOfTurns = 1
        }
    }

    func testClassScope() throws {
        /**
         Class Scoped Variables

         Variables scoped by class, are variables that are visible only to the class.

         Press keys: control (^) + Command (⌘) + left-click the `isTestEnabled`.

         Doing this will "jump to the definition" where `isTestEnabled` is defined. You should "jump" to the top of the `class` definition, where it is declared.
         */
        print("isTestEnabled:", isTestEnabled)
    }

    func testFileScope() throws {
        /**
         File Scoped Variables

         Variables scoped to a file, such as this file, are variables visible only to this file.

         We can declare a variable to the file's scope by using `fileprivate` or `private`.

         Jump to definition: control (^) + Command (⌘) + left-click the `scopeTestsName`.

         You should "jump" to the top of this file.

         You will see that this variable is scoped to this file using `fileprivate`. No other file within this project can see the `scopeTestsName` variable except this file.
         */
        print("scopeTestsName", scopeTestsName)
    }

    func testGlobalScope() throws {
        /**
         Global Variables

         Global variables are variables that can be accessed from any part of your app.

         The prevailing principle is to avoid global variables if you can. It reduces the chance that more than one place changes the variable without the other knowing. This can create very difficult to find bugs.

         However, there are some very narrow cases where global variables are useful. If you follow these rules, you will avoid the issues above:

           - Make all global variables immutable (unchangeable)
           - Limit only to default (or fallback) configuration

         Below is a global variable.

         Jump to definition: control (^) + Command (⌘) + left-click the `lessonCreatorName`.

         You should "jump" to the `Global.swift` file.
         */
        print("lessonCreatorName:", lessonCreatorName)
    }

    func testModuleScope() throws {
        /**
         Module Scope

         Variables can be scoped by module. Before we can talk about variables that are scoped by a module, we need to know what a module is!

         Modules group a set of related `public` interfaces. Interfaces being functions, classes, or variables.

         In every test file you will see an `import XCTest`. `XCTest` is a module. It contains interfaces (functions, classes, etc.) related to testing your program.

         An example of a class provided by `XCTest` is `XCTestCase`. You will notice `XCTestCase` at the beginning of this file!

         An example of a function provided by `XCTest` is `XCTAssertTrue`. You have seen this function several times.

         ---

         Great! Now we have a simple understanding of a module.

         Don't feel confused if it doesn't make sense. Modules will be explained in future lessons.

         ---

         When a variable is scoped to a module, it is `internal` to that module. Meaning, the interface (class, function, etc.) is only visible to other interfaces within the same module.

         We will explore this further in future lessons.
         */
    }
}
