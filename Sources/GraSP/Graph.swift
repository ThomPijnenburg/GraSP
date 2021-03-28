struct GraSP {
    var text = "Hello, World!"
}


struct Graph {
    var adj: [Int: [Int: Edge]] = [:]
    var nodes: [Int: Node] = [:]
    
    public init() {
        self.adj = [:]
        self.nodes = [:]
    }
}

extension Graph {
    public init(edges: [Edge], nodes: [Int: Node]) {
        for e in edges {
            self.addEdge(edge: e)
        }
        self.nodes = nodes
    }
}

extension Graph {
    mutating func addEdge(edge: Edge) {
        if !self.nodes.keys.contains(edge.src) {
            self.adj[edge.src] = [:]
        }
        self.adj[edge.src]?[edge.tgt] = edge
    }
    
    mutating func addEdges(edges: [Edge]) {
        _ = edges.map { self.addEdge(edge:$0) }
    }
}

extension Graph {
    public var edgeView: [Int: [Int: Edge]] {
        return self.adj
    }
}


struct Edge {
    var src: Int
    var tgt: Int
    var directed: Bool = false
    
    public init(_ src: Int, _ tgt: Int) {
        self.src = src
        self.tgt = tgt
    }
    
    // Implement Printable protocol
    public var description: String {
        return "\(src) -> \(tgt)"
    }
}

extension Edge {
    public init(_ src: Int, _ tgt: Int, directed: Bool) {
        self.src = src
        self.tgt = tgt
        self.directed = directed
    }
}

struct Node {
    var id: Int
}
