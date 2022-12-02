// ⓒ Bithead LLC 2022. All rights reserved.

/**
 Please refer to grade-01/Introduction.md for more information.

 Welcome! This is the first page you should start on.

 This test is designed to familarize yourself with the process of learning how to program a computer.

 - Press the "Empty Diamond" button next to `final class BeginHereTests`. It should show a "Play" (▷) button when your mouse rests over the diamond.

 Xcode should build and run your tests. You should see a "Tests succeeded" pop-up.
 
 If Xcode fails to build and run your tests, contact your teacher.

 # The Debug area

 The Debug area shows us if the tests pass. It also shows us what our program is doing. You may hear others refer to the Debug area as the "console." Consoles are a very common interface programmers, system administrators, etc. use to debug their systems.

 You should see "Hello, World" in the Debug area. The Debug area is located on the bottom of this window. If you do not see the Debug area, press `Command` + `shift` + y to open it. Scroll through the Debug area and find "Hello, World."

 # Notes & Information

 You may see commands wrapped in back ticks, such as `print`. These may indicate a key command (e.g. `shift` key), a Swift function (e.g. `print`), or Swift variable (e.g. `numberOfBooks`). These are useful to identify computer code and operations.

 After you are finished, continue to Lesson 1!
 */

import XCTest

final class BeginHereTests: XCTestCase {

    func testHelloWorld() throws {
        /**
         Let's run this test! Tap the diamond ▷ button next to `func testHelloWorld` to run this test.

         Running this test will "print" the string "Hello, World" to the Debug area. Open the Debug area and find "Hello, World" (it will be displayed without quotes).

         `print` is a Swift built-in command that will "print" a "string" to the Debug area. Swift has many helpful built-in commands. We will learn more about these commands in later lessons.
         */
        print("Hello, World")
    }

    func testComments() throws {
        /**
         Comments are used to help clarify or describe what an operation in our code is doing. In fact, this is a comment!

         We can write a single line comment with `//` or a multi-line comment, such as this one, in `/** */`. Any text, code, etc. that is encapsulated by a comment will _not_ be ran.

         ---

         During your study, you will be required to uncomment test operations in order to finish a test.

         Below is a commented out test operation. Meaning, it's code that _won't_ run until you remove the whacks (`//`) from the beginning of the operation.

         Please remove the `//` from the beginning of the operation below and run the test.
         */
        //XCTAssertTrue(true)

        /**
         You may also be asked to comment an operation.

         To do this, add `//` to the front of the operation below.
         */
        XCTAssertTrue(false)
    }

    func testWhatIsABug() throws {
        /**
         Concept: What is a "bug"?

         Bugs are logic in a computer program that produce the incorrect behavior.

         Imagine you are trying to watch a movie on Netflix. You tap on the new "Top Gun: Maverick" movie. Instead, Netflix starts playing "Maverick" starring Mel Gibson! This is not the expected behavior! This is a bug!

         Bugs are experienced in nearly every software app you have used. It can be as simple as a never-ending loading indicator, to a button tap not performing an expected operation.
         */
    }
}

/**
 Teacher: Debugging build solutions
   - Make sure there is an appropriate target device. If the project's deployment target is _greater_ than any available simulator, set the deployment target version to match the highest available simulator version. This may happen after upgrading to newer versions of Xcode.
 */
