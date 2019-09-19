/// Copyright (c) 2019 Razeware LLC
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import XCTest

class BullsEyeUITests: XCTestCase {
  
  override func setUp() {
    // In UI tests it is usually best to stop immediately when a failure occurs.
    continueAfterFailure = false
    
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    XCUIApplication().launch()
  }
  
  override func tearDown() {
    
  }
  
  // IOS UI Testing follows the same process
  // as Selenium Testing:
  // 1. FIND THE ELEMENT
  //    - Button <button>, TextBox <input>, Link <a>
  // 2. DO SOMETHING WITH THE ELEMENT
  //    - click() --> click on the element
  //    - sendKeys() --> typing into the element
  
  
  // T1: When person presses the Hit Me button,
  // they should see a popup box
  func testPressingHitMeShowsAlertBox() {
    
    // 0. Get a reference to the app
    let app = XCUIApplication()
    
    // 1. Find the Hit Me Button
    let hitMeButton = app.buttons["hit me!"]
    
    // 2. Check that the hit me button exists
    XCTAssertEqual(true, hitMeButton.exists)
    
    // 3. Click on the Hit Me Button
    hitMeButton.tap()
    
    // 4. Check that an alert appears (popup box)
    //      - (does the alert box exist?)
    
    // 4a.  Get the alert box
    let alertBox = app.alerts
    // 4b. Check that it exists
    XCTAssertNotNil(alertBox)
  }
  
  // T2: By default, label at top of screen says
  // "Get as close as you can to:"
  func testDefaultLabelCode() {
    let app = XCUIApplication()
    // 1. find the label at the top
    let label = app.staticTexts["Get as close as you can to: "]
    // 2. check that it exists
    XCTAssertNotNil(label)
    // 3. check that the text in the label matches
    // what you expect "Get as close as you can to:"
    XCTAssertEqual("Get as close as you can to: ",label.label)
  }
  
  // T4: Pressing the TYPE button updates the
  // label at top of screen to say:
  // "Guess where the slider is:"
  func testTypeGameMode() {
    let app = XCUIApplication()
    // 1. get the type button
    let typeButton = app/*@START_MENU_TOKEN@*/.buttons["Type"]/*[[".segmentedControls.buttons[\"Type\"]",".buttons[\"Type\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    // 2. test that button exists
    XCTAssertEqual(true, typeButton.exists)
    // 3. press the button
    typeButton.tap();
    // 4. get the label at top of scrren
    let label = app.staticTexts["Guess where the slider is: "]
    // 5. check that label exists
    XCTAssertNotNil(label)
    // 6. check the text in the label
    XCTAssertEqual("Guess where the slider is: ", label.label)
  }
  
  
  // T3: Pressing the Start Over button resets the
  // Score and Round label text
  func testStartOverButton() {
    
  }
  
  
  
  // T5: Pressing the SLIDE button updates the
  // game to the default mode
  func testSlideGameMode() {
    
  }
  
  
}
