import UIKit

class Figure {
    var name: String {
        get { return "Some Figure" }
    }
    var numberOfCorners: Int {
        get { return 0 }
    }
}

class Triangle: Figure {
    override var name: String {
        get { return "Triangle" }
    }
    
    override var numberOfCorners: Int {
        get { return 3 }
    }
    
    func countArea(height: Double, side_size: Double) -> Double {
        let area = 0.5 * height * side_size
        return area
    }
}

class Circle: Figure {
    override var name: String {
        get { return "Circle" }
    }
    
    override var numberOfCorners: Int {
        get { return 0 }
    }
    
    func countArea(radius: Double) -> Double {
        let area = Double.pi * pow(radius, 2)
        return area
    }
}

class Rectangle: Figure, EqualOppositeSides {
    var height: Double = 0.0
    var width: Double = 0.0
    
    override var name: String {
        get { return "Rectangle" }
    }
    
    override var numberOfCorners: Int {
        get { return 4 }
    }
    
    func countArea() -> Double {
        let area = height * width
        return area
    }
}


protocol EqualOppositeSides {
    var height: Double { get }
    var width: Double { get }
    var perimeter: Double { get }
}

extension EqualOppositeSides {
    var perimeter: Double {
        return 2 * (self.height + self.width)
    }
}
