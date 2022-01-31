//: [Previous](@previous) / [Next](@next)
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */
canvas.highPerformance = true



/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */

//Background
canvas.drawShapesWithFill = true
canvas.fillColor = .black
canvas.drawRectangle(at: Point (x: 0, y: 0), width: 400, height: 600)

// Stride
for width in stride(from: -100, through: 800, by: 16) {
    
    //lines
    canvas.defaultLineWidth = 1
    canvas.lineColor = .white
    canvas.drawLine(from: Point (x: width - 100, y: 150), to: Point (x: 200, y: 1000))
}

//BIg Cross
canvas.fillColor = .black
canvas.drawShapesWithFill = true
var bigCross: [Point] = []
bigCross.append(Point (x: 150, y: 150))
bigCross.append(Point (x: 150, y:  400))
bigCross.append(Point (x: 50, y: 400))
bigCross.append(Point (x: 50, y: 500))
bigCross.append(Point (x: 150, y: 500))
bigCross.append(Point (x: 150, y: 600))
bigCross.append(Point (x: 250, y: 600))
bigCross.append(Point (x: 250, y: 500))
bigCross.append(Point (x: 350, y: 500))
bigCross.append(Point (x: 350, y: 400))
bigCross.append(Point (x: 250, y: 400))
bigCross.append(Point (x: 250, y:  150))
canvas.drawCustomShape(with: bigCross)

//Stride
for height in stride(from: 150, through: 600, by: 50) {
    for width in stride(from: 150, through: 250, by: 50) {
//Triangles
     //   canvas.fillColor = .white
       // var bigCross: [Point] = []
        //bigCross.append(Point (x: width - 0, y: height - 15))
        //bigCross.append(Point (x: width - 0, y:  height - 0))
        //bigCross.append(Point (x: width - 0, y: height - 0))
        //bigCross.append(Point (x: width - 10, y: height - 15))
       // bigCross.append(Point (x: width - 50, y: height - 25))
       // bigCross.append(Point (x: width - 50, y: height - 35))
       // bigCross.append(Point (x: width - 30, y: height - 35))
       // bigCross.append(Point (x: width - 30, y: height - 50))
        //bigCross.append(Point (x: width - 30, y: height - 25))
      //  bigCross.append(Point (x: width - 0, y: height - 25))
       // bigCross.append(Point (x: width - 0, y: height - 25))
        //bigCross.append(Point (x: width, y:  height))
      //  canvas.drawCustomShape(with: bigCross)
    }
}
        
// Manditory
canvas.drawAxes(withScale: true, by: 50, color: .green)

canvas.highPerformance = false
/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")
 
 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
