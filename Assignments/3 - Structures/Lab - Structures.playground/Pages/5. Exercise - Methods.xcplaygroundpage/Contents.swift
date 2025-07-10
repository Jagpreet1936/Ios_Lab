/*:
## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    func description(){
        print("the title of book is \(title) whose author is \(author) it has \(pages) pages and cost \(price)")
    }
}
let B1 = Book(title: "Swift", author: "Random", pages: 500, price: 600)
B1.description()


//:  A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    mutating func like(){
        likes+=1
    }
}
var P1 = Post(message: "Hello World", likes: 10, numberOfComments: 20)
print("the number of likes before calling the method is \(P1.likes)")
P1.like()
print("the number of likes after calling the method is \(P1.likes)")


/*:
[Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Workout Functions](@next)
 */
