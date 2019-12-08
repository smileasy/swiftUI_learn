import UIKit
import SwiftUI

func dataMax<T>(_ x: T, _ y: T) -> T where T: Comparable {
    return y >= x ? y : x
}

//let x = 1000, y = 200
//let result = dataMax(x, y)
//print(result)

//
//public protocol View {
//
//    /// The type of view representing the body of this view.
//    ///
//    /// When you create a custom view, Swift infers this type from your
//    /// implementation of the required `body` property.
//    associatedtype Body : View
//
//    /// Declares the content and behavior of this view.
//    var body: Self.Body { get }
//}
//
//struct ContentView: View {
//    var body: some View {
//        NavigationView {
//            List(landMarks) { landMark in
//                landMarkCell(landMark: landMark)
//            }.navigationBarTitle(Text("少林寺啦啦啦"),  displayMode: .large)
//        }
//
//    }
//}

protocol ObjectDescription {
    associatedtype MyDescription: Comparable
    var myDescription:  Self.MyDescription {get}
}

class Person: ObjectDescription {
    var myDescription: some Comparable {
        return "99999"
    }
}

let pe = Person()
