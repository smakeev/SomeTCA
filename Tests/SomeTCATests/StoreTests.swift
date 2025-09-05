import XCTest
@testable import SomeTCA

final class StoreTests: XCTestCase {
    func testStore() {
        struct State { var count = 0 }
        enum Action { case inc }
        let reducer = Reducer<State, Action> { state, action in
            if case .inc = action { state.count += 1 }
        }
        let store = Store(initialState: State(), reducer: reducer)
        store.send(.inc)
        XCTAssertEqual(store.state.count, 1)
    }
}
