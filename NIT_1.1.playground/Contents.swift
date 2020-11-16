import UIKit

class Figure {
    var name: String = "Some Figure"
    var numberOfCorners: Int = 0
}

class Triangle: Figure {
    func countArea(height: Double, side_size: Double) -> Double {
        let area = 0.5 * height * side_size
        return area
    }
}

class Circle: Figure {
    func countArea(radius: Double) -> Double {
        let area = Double.pi * pow(radius, 2)
        return area
    }
}

class Rectangle: Figure, equalOppositeSides {
    var height: Double = 0.0
    var width: Double = 0.0
    
    func countArea() -> Double {
        let area = height * width
        return area
    }
}


protocol equalOppositeSides {
    var height: Double { get }
    var width: Double { get }
    var perimeter: Double { get }
}

extension Rectangle {
    var perimeter: Double {
        return 2 * (self.height + self.width)
    }
}

