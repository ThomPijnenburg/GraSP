import XCTest
@testable import GraSP

final class GraphTests: XCTestCase {
    func testNumericGraph() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        
        let testEdges = [
            Edge(0, 1),
            Edge(1, 3),
            Edge(2, 3)
        ]
            
        var graph = Graph()
            
        graph.addEdge(edge: testEdges[0])
        graph.addEdge(edge: testEdges[2])
    
        print(graph.edgeView)
    }

    static var allTests = [
        ("testNumericGraph", testNumericGraph),
    ]
}
