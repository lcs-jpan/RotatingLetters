//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT

// Loop forever untill we get good input
var validInput = ""
while 1 == 1 {
    
    // Prompt the user
    print("Input word is? ")
    
    // Wait for input
    // Test #1: Make sure it is not nil
    guard let givenInput = readLine() else {
        
        //If we got here, inout is nil
        // Prompt again
        continue  // continue with the next iteration of while loop
        
    }
    
    // Test #2: Is the input the correct length
    if givenInput.count < 1 || givenInput.count > 30 {
        
        // If we got here, input is too short
        continue // prompt again
    }
    
    // Test #3: Check to ensure there is only UPPERCASE letters and no spaces
    for individualCharacter in givenInput {
        
        //Print the character we are looking at
        print(individualCharacter)
        
        // Check the character
        switch individualCharacter {
        case "A", "B", "C", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z":
        continue   // OK, go to next charater in the string
        default:
            continue  // stop looking, we"ve found bad input
        }
    }
    // If we got to this point, weknow the input is good
    validInput = givenInput
    break  // quit the while loop and begin PROCESS section
    
}

// PROCESS
// Now we have valid input that can be processed accroding to
// the remaining requirements of the scenarioaccroding
print(validInput)

for letter in validInput {
    
    // Check each letter to make sure it's IHOSZXN
    print(letter)
    if letter == "I" || letter == "H" || letter == "O" || letter == "S" || letter == "X" || letter == "N" {
        // Good - keep checking (continue loop)
        continue
    } else {
        // We knwo the word doesn't work, so say NO and exit
        print("NO")
        exit(0)// quit the program
    }
    
}

// OUTPUT
// If we got here, guaranteed this is a word with only acceptable letters
print("YES")





