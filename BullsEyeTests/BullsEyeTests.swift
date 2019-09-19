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

// 1. Tell the test case about what project you want to test
// Give this file access to the functions and variables in the project
@testable import BullsEye

class BullsEyeTests: XCTestCase {
  
  // 2. Create the global variable for BullsEyeGame
  //       -JAVA: BullEyesGame game;
  var game: BullsEyeGame!
  
  override func setUp() {
    super.setUp()
    // 3. Initialize the global variable
    // -  JAVA: game = new BullEyeGame();
    game = BullsEyeGame();
  }
  
  override func tearDown() {
    // 4. close the game
    game = nil
    super.tearDown()
  }
  
  // R1: Test that a new game is started correctly
  // Expect output - round = 1, totalPoints = 0
  // Expected output is actually that round = 1, not 0
  func testStartNewGame() {
    // 1. Start a new game
    game.startNewGame()
    // 2. Check that starting round number = 1
    XCTAssertEqual(1, game.round)
    // 3. Check that total starting points = 0
    XCTAssertEqual(0, game.scoreTotal)
  }
  
  // R2: Test that a new round gets created
  // - A1: Current round counter increases by 1
  // - A2: Points for current round = 0
  // - A3: new random target nubmer is gneerated
  func testStartNewRound() {
    // 1. Start a new game
    // ----------------------
    game.startNewGame()
    let initialRoundNumber = 1
    let initialRoundPoints = 0
    let initialTargetNumber = game.targetValue
    
    // tests to check the initial state of the game
    XCTAssertEqual(initialRoundNumber, game.round)
    XCTAssertEqual(initialRoundPoints, game.scoreRound)
    
    // 2. Start a new round
    // ----------------------
    game.startNewRound()
    
    // 3. Check the current round number
    // -------------------------
    XCTAssertEqual(initialRoundNumber+1, game.round)
    
    // 4. Check the points for the round
    //test
    // -------------------------
    XCTAssertEqual(0, game.scoreRound)
    
    // 5. Check that you have a random number as the target
    // -------------------------
    // check the new target number is different from initial target number
    XCTAssertNotEqual(initialTargetNumber, game.targetValue)
    
  }
  
}
