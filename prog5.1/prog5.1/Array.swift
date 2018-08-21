class Array<T> : SortableList<T>{
    
    private var _count: Int
    
    override init(list: LinkedList<T>? = nil) {
        self._count = 0
        super.init(list: list)
    }
    subscript(index: Int) -> T {
        get {
            return self.get(index: index)
        }
        set(newObject) {
            self.set(object: newObject, at: index)
        }
    }
    override var count: Int {
        return self._count
    }
    override var description: String {
        return "(Array 0->)"+super.description+"<-" + String(self.count-1)
    }
    func get(index: Int) -> T{
        
        
        let node = getNodeAtIndex(index: index)
        return node!.object
    }
    
    func set(object: T, at: Int){
        
        
        
        let node = getNodeAtIndex(index: at)
        node!.object = object
        
        
        
    }
    override func add(object: T) {
        super.add(object: object)
        self._count += 1
    }
    
    override func remove(node: Node<T>) -> Bool {
        let nodeRemoved: Bool = super.remove(node: node)
        if nodeRemoved {
            self._count -= 1
        }
        return nodeRemoved
    }}
