//: Test tasks

//1

//clouser printing "I love Swift"
var myClosure = {
  print ("I love Swift")
}

//call clouser
myClosure()

//method repeat clouser any times
func repeatTask(times: Int, task: () -> Void){
  for _ in 1...times {
    task()
  }
}

//call method
repeatTask(times: 10, task: myClosure)

//2

//movements
enum Direction {
  case left, right, up, down
}

//class of moving point
class Point {
  // property with initial coordinates
  var location = (x: 0, y: 0)
  
  //method for points move
  func move(direction: [Direction]) {
    for i in direction {
      switch i {
      case .up: location.y += 1
      case .down: location.y -= 1
      case .right: location.x += 1
      case .left: location.x -= 1
      }
    }
  }
  
  //method printing last coordinates of point
  func printLastLocation(){
    print ("Координаты точки на плоскости - x:(\(location.x)), y:(\(location.y))")
  }
}

//sequence of movements
var movemets: [Direction] = []
movemets.append(.up)
movemets.append(.up)
movemets.append(.left)
movemets.append(.down)
movemets.append(.left)
movemets.append(.down)
movemets.append(.down)
movemets.append(.right)
movemets.append(.right)
movemets.append(.down)
movemets.append(.right)

//create instance of Point class
var point1 = Point()
//call method for move point
point1.move(direction: movemets)
//print results
point1.printLastLocation()

//3

class Rectangle {
  var lenght: Int
  var weight: Int
  
  //method calculating perimeter of rectangle
  func perimeterRectangle() {
    let perimeter = (lenght + weight) * 2
    //and print result
    print ("Периметр прямоугольника равен \(perimeter) см")
  }
  
  init(lenght: Int, weight: Int) {
    self.lenght = lenght
    self.weight = weight
  }
}

// create instance of class rectangle
var rectangle1 = Rectangle(lenght: 8, weight: 10)
//call method and print result
rectangle1.perimeterRectangle()

//4

//MARK: - computed area of rectangle
extension Rectangle {
  //computed properties calculating area of rectangle
  var areaRectangle: Int {
    return lenght * weight
  }
}

//print area instance of class rectangle
print("Площадь прямоугольника равна \(rectangle1.areaRectangle) см")


