// ⓒ Bithead LLC 2022. All rights reserved.

/**
 Lesson 02: Primitive Data Types

 This lesson is designed to teach you about primitive types. Primitive data types are the "basic" built-in data types that Swift supports.

 Said another way, each data type represents a different type of data. Sometimes you want to hold on to a number. Other times a name of a customer. Other times you may want to know if something is "on" or "off."
 */

import XCTest

final class Lesson_02_PrimitiveDataTypesTests: XCTestCase {

    func testNumericDataTypes() throws {
        /**
         Numeric Data Types

         There are three main built-in primitive numeric types.
           - `Int` - Any whole number
           - `Float` - A decimal value with less precision
           - `Double` - A decimal value with more precision

         ---

         `Int` Data Types

         An `Int` is designed to contain a whole number. You can use an `Int` for:
           - The age of a user
           - The number of items in a user's shopping bag
           - The number of users connected to your server

         Let's start adding items to our bag!

         Add the appropriate `numberOfPencils` to your bag to make the test pass.
         */
        let numberOfBooks = 3
        let numberOfPencils = 0
        let numberOfItemsInBag = numberOfBooks + numberOfPencils
        XCTAssertEqual(numberOfItemsInBag, 7)

        /**
         Decimal Data Types (`Float` & `Double`)

         If you recall, our description of `Float` and `Double` talked about "precision." What does "precision" mean? Simply, precision is the number of digits that can be stored after the decimal value.

         The precision for a `Float` data type is less than a `Double`. In other words, a "small"" decimal value may be stored in a `Float`. A "large" decimal value can be stored in a `Double`.

         Imagine the following equation using a `Float` value:
         ```
         let value: Float = Float(1) / 3
         print(value)
         // prints: 0.333333
         ```

         Now imagine the same equation using a `Double` value:
         ```
         let value: Double = Double(1) / 3
         print(value)
         // prints: 0.33333333333333
         ```

         As you can see, a `Double` can hold many more digits past the decimal point. This is because the "bag" that represents the `Double` is much larger than the "bag" that represents a `Float`. A `Float` could be considered a "hand bag", while a `Double` could be likened to a "duffle bag."

         This next test requires a bit of arithmetic. We want to know how much a single pie represents when we only have three pieces of pie.

         Change the value of `onePieceOfPie` to be `1` to make the test pass.
         */
        let numberOfPiecesInPie = Float(3)
        let onePieceOfPie = Float(2) / numberOfPiecesInPie
        XCTAssertEqual(onePieceOfPie, 0.3333, accuracy: 0.01)

        /**
         Great!

         `1` piece of pie represents `0.3333333` pieces of pie!

         Remember, when you want to represent a decimal value, use a `Float`!

         For most cases, we will use a `Float`. It's designed for fast operation and uses less memory than a `Double`. For graphics, which we will learn in the future, it will become very useful!

         Some other uses of `Float` are:
           - Represent the price of a product on your online store
           - Compute the percent off of a product. Imagine a product that is 33% off (`Float(10) * Float(0.33) = 3.33`). This tells you that the product is $3.33 less than $10.00 or $6.66.
           -

         It's important to note that the product of an equation, such as our $10.00 - $3.33, may produce a _rounded_ value. Again, `Float` can only hold so many digits past the decimal point. In these cases where the number exceeds the storage of a `Float`, a `Float` will round the last digit. If the last digit is >= 5, then it will round the last digit up. For example, the product of `10.00 - 3.33` _may_ be `6.67`. Not `6.66`.

         --

         Arithmetic with `Int`s and `Float`s

         At times we want to perform arithmetic on `Int`s and `Float`s. To do this, we must cast the `Int` to a `Float` before we can perform a computation.
         */
        let intValue = 1
        print("intValue:", intValue)
        let floatValue = Float(3)
        print("floatValue:", floatValue)

        /**
         Uncomment out the two lines below. Notice the error that Xcode provides. It's trying to tell you that it can't divide an `Int` with a `Float` value. To cast our `intValue` to a `Float`, all we have to do is wrap our `intValue` in a `Float` initializer.

         Change `intValue` to `Float(intValue)` and run the test.
         */
        //let result = intValue / floatValue
        //XCTAssertEqual(result, 0.33, accuracy: 0.01)

        /**
         Dividing `Int`s

         At times we may divide whole numbers and wonder why we don't get the expected result. Remember, an `Int` is a whole number. If we divide two `Int`s, the result will be a whole number!

         Let's see this in action.
         */
        let numberOfPeas = 8
        let numberOfPods = 3
        let numberOfPeasInAPod = numberOfPeas / numberOfPods
        XCTAssertEqual(numberOfPeasInAPod, 2)

        /**
         But wait? Isn't `8 / 3 = 2.66~`?

         How can we get the right answer?

         Using what we learned so far, divide our two existing values, `numberOfPeas` and `numberOfPods`, to produce the correct value of `2.66~`.
         */
        let trueNumberOfPeasInAPod: Float = 0
        XCTAssertEqual(trueNumberOfPeasInAPod, 2.66, accuracy: 0.01)

        /**
         We will explore more `Int` and `Float` arithmetic in future lessons. For now, keep an eye open for this. You may produce a bug you did not expect!

         ---

         Arithmetic Operators

         Swift supports the following arithmetic operators for all numeric types:

           (+) Addition
           (-) Subtraction
           (/) Division
           (*) Multiplication
         */
    }

    func testStrings() throws {
        /**
         Strings

         A `String` is a sequence of characters enclosed with double quotes.
         */
        let aString: String = "I am a string of characters"
        print("aString:", aString)

        /**
         Like all other data types, a `String` data type can be inferred. Meaning, we do not have to define the type of the variable as `String`. Swift will do it automatically for us!
         */
        let aSecondString = "I am a string too"
        print("aSecondString:", aSecondString)

        /**
         Strings are used almost everywhere. They can be used for:
           - Displaying useful feedback to the user (e.g. "An error occurred. Please try again")
           - Asking a user for information (e.g. "What is your name?")
           - A player's game score "Score: 1,000,500"

         Anywhere you see a sequnce of characters, a `String` is backing it.

         ---

         `String` interpolation

         String interpolation is the process of "injecting" one or more strings in another string.

         We can interpolate strings by wrapping a string variable with `\()`.

         Change the `username` variable to a value that makes the test pass.
         */
        let username = ""
        let usernameSalutation = "Hello, \(username)!"
        XCTAssertEqual(usernameSalutation, "Hello, SquishyLad")

        /**
         You can interpolate as many values into a `String` as needed.

         Change the variable values below to make the test pass.
         */
        let age = 0
        let name = ""
        let response = "\(name) is \(age) years old"
        XCTAssertEqual(response, "Bob is 10 years old")

        /**
         Now you try!

         Add your friend's name to `friendName` and add the string to `farewell` to make the test pass.
         */
        let friendName = ""
        let farewell = "Goodbye, !"
        XCTAssertEqual(farewell, "Goodbye, Tim!")

        /**
         We spoke earlier that a `String` is a sequence of characters.

         A `Character`, like a `String`, is another data type. A `Character` represents a single character!

         Like all data types, a `Character` is actually a number! Computers define specific numbers to represent specific characters.

         For example, the capital letter `A` is represented as `65`. This mapping of `65` to `A` is called an "encoding". We "code" the character `A` to the number `65`. There are few popular character encoding formats. The most popular is ASCII or the American Standard Code for Information Interchange.

         Refer to `computer-science/images/ascii.png` to see the full list of character number values.

         Let's `print` a `Character`'s respective number.

         What value does it print out?
         */
        let aCharacter: Character = "B"
        print("aCharacter:", aCharacter.asciiValue ?? "")

        /**
         For now, ignore `?? ""`. This is required as the value of `asciiValue` is `Optional`. We will talk about `Optional`s in a future lesson. What `?? ""` does is say, "if `asciiValue` is `nil`, return an empty `String`."

         Swift does not assume that a single `Character` in quotes, such as `"C"`, is a `Character`. Instead, it always assumes it is a `String`. That is why we had to cast `aCharacter` as a `Character`.

         If you try to assign more than one `Character` to a variable that is a `Character` type, Swift will fail to build.

         Uncomment `anotherCharacter` to see the error.
         */
        //let characters: Character = "DE"

        /**
         Swift will say you are trying to assign a `String` to a `Character` variable.

         Comment the operation above to remove the error.

         ---

         Summary:
           - A `Character` represents a single character.
           - A `String` represents a sequence of characters.
         */
    }

    func testBooleans() throws {
        /**
         Booleans

         A boolean value contains either a "true" or "false" value.

         We can define a boolen as follows:
         */
        let isTrue: Bool = true
        let isFalse: Bool = false
        print(isTrue, isFalse)

        /**
         Like most other data types, `Bool` values can be inferred.
         */
        let alsoTrue = true
        let alsoFalse = false
        print(alsoTrue, alsoFalse)

        /**
         A `Bool` is a data type used primarily for conditional tests. Rather, when we want to test if something is `true` or `false`, we use a `Bool`.

         A `Bool` may be used for:
           - Testing if a user is over the age of 18
           - Testing if a user has filled out all required fields within a form
           - Testing if a user has items in their digital shopping cart

         ---

         Below, the defined `legalAdultAge` is assigned `18`. We want to know if our user is of adult legal age. Update the value of `usersAge` to make the test pass.
         */
        let legalAdultAge = 18
        let usersAge = 8
        let isLegalAge = usersAge >= legalAdultAge
        XCTAssertTrue(isLegalAge)

        /**
         When we compare `usersAge` to `legalAdultAge` using the `>=` operator, Swift will store the result of that value as a `Bool` in `isLegalAge`.

         There are many comparison operators. Many will be used in the tests below.

         Swift supports the following comparison operators:

           (<)  Less than
           (>)  Greater than
           (<=) Less than or equal to
           (>=) Greater than or equal to
           (==) Equal to
           (!=) Not equal to

         ---

         Please complete the tests below.
         */
        let myAge = 5
        let myFriendsAge = 4
        let isAgeEqual = myAge == myFriendsAge
        XCTAssertTrue(isAgeEqual, "My age must be equal to my friend's age")

        let papasAge = 40
        let childAge = 40
        let isAgeNotEqual = papasAge != childAge
        XCTAssertTrue(isAgeNotEqual, "Papa's age must be older than their child's age")

        let isPaperOlder = papasAge > childAge
        XCTAssertTrue(isPaperOlder, "Papa must be older than child")

        let isChildYounger = childAge < papasAge
        XCTAssertTrue(isChildYounger, "Child must be younger than papa")

        /**
         Let's try using the `<=` and `>=` operators.
         */
        let priceOfCheese = 9.00
        let priceOfMilk = 0.00
        let priceOfCereal = 3.50

        XCTAssertTrue(priceOfMilk >= priceOfCereal, "Milk is usually more expensive than cereal")
        XCTAssertTrue(priceOfMilk <= priceOfCheese, "Milk is about as expensive as a bowl")

        /**
         Logical Operators

         Logical operators combine `Bool` values.

         Swift supports the following logical operators:

           (!)  Logical NOT - Inverts the `Bool` value
           (&&) Logical AND
           (||) Logical OR

         ---

         Let's make two comparisons using the logical operators!

         Change Mama's age to be less than papa's, but greater than her child's.
         */
        let mamasAge = 44
        let isMamaOldest = mamasAge <= papasAge
        let isMamaOlder = mamasAge >= childAge

        // (&&) AND operator
        XCTAssertTrue(isPaperOlder && isChildYounger, "Papa should be older and the child should be younger")
        // (||) OR operator
        XCTAssertTrue(isMamaOlder || isPaperOlder, "Mama OR papa is older than their child")
        // (!) NOT operator
        XCTAssertTrue(!isMamaOldest, "Mama is NOT the oldest")

        /**
         That's a lot to learn, but don't worry! We will practice `Bool` operations more in the future.

         You can always refer back to this lesson if you need a refresher.
         */
    }

    /**
     Choosing the right data type

     It can sometimes be a challenge to know what data type best fits a given situation.

     Here are some helpful rules you can follow:
       - Will the value always be represented as a number? If so, use `Int`.
       - Will the number value ever be fractional? If so, use `Float`.
       - Will the decimal value require a precision greater than 6 digits past the decimal? If so, use `Double`.
       - Will the value only ever be `true` or `false`? If so, use `Bool`.

     Everythine else can be a `String`.
     */
}
