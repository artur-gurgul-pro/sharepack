
public extension Sequence {
    func dictionay<T>(keyPath: KeyPath<Element, T>) -> [T: Element] {
        var dictionary =  [T: Element]()
        
        for elemement in self {
            let key = elemement[keyPath: keyPath]
            dictionary[key] = elemement
        }
        
        return dictionary
    }
}