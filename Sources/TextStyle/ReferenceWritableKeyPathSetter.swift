struct ReferenceWritableKeyPathSetter<Root> {

    let write: (Root) -> ()
    
    private let keyPath: AnyKeyPath
    private let value: Any

    subscript<Value>(_ keyPath: ReferenceWritableKeyPath<Root, Value>) -> Value? {
        guard self.keyPath == keyPath else { return nil }
        return value as? Value
    }

    init<Value>(keyPath: ReferenceWritableKeyPath<Root, Value>, value: Value) {
        self.write = { $0[keyPath: keyPath] = value }
        self.keyPath = keyPath
        self.value = value
    }
}

extension Array {
    subscript<Root, Value>(_ keyPath: ReferenceWritableKeyPath<Root, Value>) -> Value? where Element == ReferenceWritableKeyPathSetter<Root> {
        first { $0[keyPath] != nil }?[keyPath]
    }
}
