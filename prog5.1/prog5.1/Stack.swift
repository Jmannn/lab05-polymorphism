
import Foundation

class Stack<T> : LinkedList<T> {
    var list: LinkedList<T>
    init(list: LinkedList<T>) {
        self.list = LinkedList(list: list)
    }

    
    override var description: String{
        return self.list.description
    }
    
    func push(object: T){
        self.list.add(object: object);
    }
    func pop() -> T? {
        
        if let n = self.list.tail {
            self.list.remove(node: n)
            return n.object
        } else {
            return nil
        }
    }
}
