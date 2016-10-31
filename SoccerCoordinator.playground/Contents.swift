//: Playground - noun: a place where people can play

import UIKit

var playersArray: [[String:Any]] = []

// This function adds players to the playersArray
func addPlayer(name: String, height: Double, experience: String, guardian: String) {
    let player: [String:Any] = [
            "name": name,
            "height": height,
            "experience": experience,
            "guardian": guardian
        ]
    
    playersArray.append(player)
}

addPlayer(name: "Joe Smith", height: 42.0, experience: "Yes", guardian: "Jim nad Jan Smith")
addPlayer(name: "Jill Tanner", height: 36.0, experience: "Yes", guardian: "Clara Tanner")
addPlayer(name: "Bill Bon", height: 43.0, experience: "Yes", guardian: "Sarah and Jenny Bon")
addPlayer(name: "Eva Gordon", height: 45.0, experience: "No", guardian: "Wendy and Mike Gordon")
addPlayer(name: "Matt Gill", height: 40.0, experience: "No", guardian: "Charles and Sylvia Gill")
addPlayer(name: "Kimmy Stein", height: 41.0, experience: "No", guardian: "Bill and Hillary Stein")
addPlayer(name: "Sammy Adams", height: 45.0, experience: "No", guardian: "Jeff Adams")
addPlayer(name: "Kari Saygun", height: 42.0, experience: "Yes", guardian: "Heather Bledsoe")
addPlayer(name: "Suzane Greenberg", height: 44.0, experience: "Yes", guardian: "Henrietta Dumas")
addPlayer(name: "Sal Dali", height: 41.0, experience: "No", guardian: "Gala Dali")
addPlayer(name: "Joe Kavalier", height: 39.0, experience: "No", guardian: "Same and Elaine Kavalier")
addPlayer(name: "Ben Finkelstein", height: 44.0, experience: "No", guardian: "Aaron and Jill Finkelstein")
addPlayer(name: "Diego Soto", height: 41.0, experience: "Yes", guardian: "Robin and Sarika Soto")
addPlayer(name: "Chloe Alaska", height: 47.0, experience: "No", guardian: "David and Jamie Alaska")
addPlayer(name: "Arnold Willis", height: 43.0, experience: "No", guardian: "Claire Willis")
addPlayer(name: "Phillip Helm", height: 44.0, experience: "Yes", guardian: "Thomas Helm and Eva Jones")
addPlayer(name: "Les Clay", height: 42.0, experience: "Yes", guardian: "Wynonna Brown")
addPlayer(name: "Herschel Krustofski", height: 45, experience: "Yes", guardian: "Hyman and Rachel Krustofski")

var experiencedPlayers: [[String:Any]] = []
var inexperiencedPlayers: [[String:Any]] = []

// This function distributes players based on their experience
func experienceDistribution(team: [[String:Any]]) {
    for player in team {
            if let experience = player["experience"] as? String {
                if experience == "Yes"  {
                    experiencedPlayers.append(player)
                } else {
                    inexperiencedPlayers.append(player)
            }
        }
    }
}

experienceDistribution(team: playersArray)



// Sorts each array by the height of the player
experiencedPlayers.sort { ($0["height"] as? Double)! < ($1["height"] as? Double)! }
inexperiencedPlayers.sort { ($0["height"] as? Double)! > ($1["height"] as? Double)! }


var dragons: [[String:Any]] = []
var sharks: [[String:Any]] = []
var raptors: [[String:Any]] = []


func playerDistribution(experienceGroup: [[String:Any]]) {
        for (index, value) in experienceGroup.enumerated() {
        if index % 3 == 0 {
            dragons.append(value)
        } else if index % 3 == 1 {
            sharks.append(value)
        } else if index % 3 == 2 {
            raptors.append(value)
        }
    }
}

playerDistribution(experienceGroup: experiencedPlayers)
playerDistribution(experienceGroup: inexperiencedPlayers)



// This function creates a letter sent to the guardians of the player

func playerLetter(teamArray: [[String:Any]], teamName: String, firstPractice: String) {
    
    for player in teamArray {
        if let name = player["name"] as? String, let guardian = player["guardian"] as? String {
            print("Dear \(guardian),\n\(name) has been selected to play for the \(teamName).  The first practice will be on \(firstPractice). We look forward to having an exciting season\n")
        }
    }
}

playerLetter(teamArray: dragons, teamName: "Dragons", firstPractice: "")

 
 
// This function takes one of the teams as an arguement and will calculate the average height of the players
func teamAverageHeight(team: [[String:Any]]) -> Double {
    
    var teamHeightArray: [Double] = []
    var teamHeight: Double = 0.0
    
    for player in team {
        if let height = player["height"] as? Double {
            teamHeightArray.append(height)
            }
        }
    
    for i in teamHeightArray {
        teamHeight += i
    }

    
    return teamHeight / Double(teamHeightArray.count)
}


teamAverageHeight(team: dragons)
teamAverageHeight(team: sharks)
teamAverageHeight(team: raptors)











