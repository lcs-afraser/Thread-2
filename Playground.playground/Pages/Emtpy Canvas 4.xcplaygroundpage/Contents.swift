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
let canvas = Canvas(width: 400, height: 600)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

canvas.highPerformance = true
//Colour
let paleGreen = Color(hue: 107, saturation: 63, brightness: 75, alpha: 100)
let offWhite = Color(hue: 87, saturation: 5, brightness: 88, alpha: 100)
//Background
canvas.fillColor = paleGreen
canvas.drawShapesWithFill = true
canvas.drawRectangle(at: Point (x: -10, y: -10), width: 500, height: 700)
canvas.fillColor = .black
canvas.drawRectangle(at: Point (x: 0, y: 0), width: 400, height: 400)
//Circles
for vertical in stride(from: 0, through: 400, by: 40) {
    for horizontal in stride(from: 0, through: 400, by: 40) {
        if horizontal + vertical <= 400 {
            canvas.fillColor = offWhite
        }
        
        else {
            canvas.fillColor = paleGreen
        }
        canvas.drawEllipse(at: Point (x: horizontal, y: vertical), width: 36, height: 36)
        canvas.fillColor = paleGreen
        canvas.drawEllipse(at: Point (x: horizontal, y: 0), width: 36, height: 36)
        canvas.drawEllipse(at: Point (x: 0, y: vertical), width: 36, height: 36)
    }
}
canvas.textColor = .black
canvas.drawText(message: "pixies", at: Point (x: 10, y: 405), size: 72, kerning: 0)
canvas.drawText(message: "saturday", at: Point (x: 15, y: 555), size: 12, kerning: 0)
canvas.drawText(message: "december 13 1986", at: Point (x: 15, y: 535), size: 12, kerning: 0)
canvas.drawText(message: "9 pm over 21", at: Point (x: 15, y: 515), size: 12, kerning: 0)
canvas.drawText(message: "at the rat", at: Point (x: 278, y: 555), size: 12, kerning: 0)
canvas.drawText(message: "528 commonwealth", at: Point (x: 278, y: 535), size: 12, kerning: 0)
canvas.drawText(message: "boston, mass.", at: Point (x: 278, y: 515), size: 12, kerning: 0)
canvas.textColor = .white
canvas.drawText(message: "with", at: Point (x: 278, y: 460), size: 15, kerning: 0)
canvas.drawText(message: "throwing muses", at: Point (x: 278, y: 440), size: 15, kerning: 0)
canvas.drawText(message: "big dipper", at: Point (x: 278, y: 420), size: 15, kerning: 0)

canvas.highPerformance = false
