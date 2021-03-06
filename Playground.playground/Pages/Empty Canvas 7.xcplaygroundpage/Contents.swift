//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
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
let t = Tortoise(drawingUpon: canvas)

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

// Move the origin from the bottom-left corner of the canvas to it's centre point
canvas.translate(to: Point(x: 100,
                           y: 100))

// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Scale
let scale = 20

// Pen width
t.lineWidth = 2

// Diagonal
let diagonal = Int(sqrt(2) * Double(scale))

//Setup
t.penUp()
t.left(by: 90)
t.forward(steps: 1 * scale)
t.right(by: 90)
t.penDown()

//Function
func drawArrow(){

// Draw
    t.penDown()
t.forward(steps: 3 * scale)
t.right(by: 90)
t.forward(steps: 1 * scale)
t.left(by: 135)
t.forward(steps: diagonal * 2)
t.left(by: 90)
t.forward(steps: diagonal * 2)
t.left(by: 135)
t.forward(steps: 1 * scale)
t.right(by: 90)
t.forward(steps: 3 * scale)
t.left(by: 90)
t.forward(steps: 2 * scale)

// Reposition to Next Arrow
t.penUp()
t.left(by: 90)
t.forward(steps: 5 * scale)
t.penDown()
}
//Draw Arrows
drawArrow()
drawArrow()
drawArrow()
drawArrow()
drawArrow()


func nextRow() {
//Setup to Next Row
t.penUp()
t.left(by: 90)
t.forward(steps: 4 * scale)
t.left(by: 90)
t.forward(steps: 25 * scale)
t.right(by: 180)
}
//Second Row
nextRow()
//Draw Arrows
drawArrow()
drawArrow()
drawArrow()
drawArrow()
drawArrow()

//Third Row
nextRow()
//Draw Arrows
drawArrow()
drawArrow()
drawArrow()
drawArrow()
drawArrow()

//Fourth Row
nextRow()
//Draw Arrows
drawArrow()
drawArrow()
drawArrow()
drawArrow()
drawArrow()

//Fith Row
nextRow()
//Draw Arrows
drawArrow()
drawArrow()
drawArrow()
drawArrow()
drawArrow()

//Sixth Row
nextRow()
//Draw Arrows
drawArrow()
drawArrow()
drawArrow()
drawArrow()
drawArrow()

//Seventh Row
nextRow()
//Draw Arrows
drawArrow()
drawArrow()
drawArrow()
drawArrow()
drawArrow()

//Show Turtle
t.drawSelf()
t.currentPosition()
t.currentHeading()
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
