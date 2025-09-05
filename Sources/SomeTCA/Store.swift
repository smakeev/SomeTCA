public struct Reducer<State, Action> {
    public let reduce: (inout State, Action) -> Void
    public init(_ reduce: @escaping (inout State, Action) -> Void) { self.reduce = reduce }
}

public final class Store<State, Action>: ObservableObject {
    @Published public private(set) var state: State
    private let reducer: Reducer<State, Action>
    public init(initialState: State, reducer: Reducer<State, Action>) {
        self.state = initialState
        self.reducer = reducer
    }
    public func send(_ action: Action) {
        reducer.reduce(&state, action)
    }
}
