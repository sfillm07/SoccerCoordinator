//: Playground - noun: a place where people can play

import UIKit

// I would use a function to add each player to the array to prevent misspellings

let players: [[String:Any]] = [
    [
        "name": "Joe Smith",
        "height": 42.0,
        "experience": "Yes",
        "guardian": "Jim and Jan Smith"
    ],
    [
        "name": "Jill Tanner",
        "height": 36.0,
        "experience": "Yes",
        "guardian": "Clara Tanner"
    ],
    [
        "name": "Bill Bon",
        "height": 43.0,
        "experience": "Yes",
        "guardian": "Sarah and Jenny Bon"
    ],
    [
        "name": "Eva Gordon",
        "height": 45.0,
        "experience": "No",
        "guardian": "Wendy and Mike Gordon"
    ],
    [
        "name": "Matt Gill",
        "height": 40.0,
        "experience": "No",
        "guardian": "Charles and Sylvia Gill"
    ],
    [
        "name": "Kimmy Stein",
        "height": 41.0,
        "experience": "No",
        "guardian": "Bill and Hillary Stein"
    ],
    [
        "name": "Sammy Adams",
        "height": 45.0,
        "experience": "No",
        "guardian": "Jeff Adams"
    ],
    [
        "name": "Kari Saygun",
        "height": 42.0,
        "experience": "Yes",
        "guardian": "Heather Bledsoe"
    ],
    [
        "name": "Suzane Greenberg",
        "height": 44.0,
        "experience": "Yes",
        "guardian": "Henrietta Dumas"
    ],
    [
        "name": "Sal Dali",
        "height": 41.0,
        "experience": "No",
        "guardian": "Gala Dali"
    ],
    [
        "name": "Joe Kavalier",
        "height": 39.0,
        "experience": "No",
        "guardian": "Sam and Elaine Kavalier"
    ],
    [
        "name": "Ben Finkelstein",
        "height": 44.0,
        "experience": "No",
        "guardian": "Aaron and Jill Finkelstein"
    ],
    [
        "name": "Diego Soto",
        "height": 41.0,
        "experience": "Yes",
        "guardian": "Robin and Sarika Soto"
    ],
    [
        "name": "Chloe Alaska",
        "height": 47.0,
        "experience": "No",
        "guardian": "David and Jamie Alaska"
    ],
    [
        "name": "Arnold Willis",
        "height": 43.0,
        "experience": "No",
        "guardian": "Claire Willis"
    ],
    [
        "name": "Phillip Helm",
        "height": 44.0,
        "experience": "Yes",
        "guardian": "Thomas Helm and Eva Jones"
    ],
    [
        "name": "Les Clay",
        "height": 42.0,
        "experience": "Yes",
        "guardian": "Wynonna Brown"
    ],
    [
        "name": "Herschel Krustofski",
        "height": 45.0,
        "experience": "Yes",
        "guardian": "Hyman and Rachel Krustofski"
    ]
]


var experiencedPlayers: [[String:Any]] = []
var inexperiencedPlayers: [[String:Any]] = []

var dragons: [[String:Any]] = []
var sharks: [[String:Any]] = []
var raptors: [[String:Any]] = []


for player in players {
    if let experience = player["experience"] as? String {
        if experience == "Yes"  {
            experiencedPlayers.append(player)
        } else {
            inexperiencedPlayers.append(player)
        }
    }
}

// Sorts each array by the height of the player from tallest to shortest
experiencedPlayers.sort { ($0["height"] as? Double)! > ($1["height"] as? Double)! }
inexperiencedPlayers.sort { ($0["height"] as? Double)! > ($1["height"] as? Double)! }

//print(experiencedPlayers)


func teamDistribution(team: [[String:Any]]) {
        for (index, value) in team.enumerated() {
        if index % 3 == 0 {
            dragons.append(value)
        } else if index % 3 == 1 {
            sharks.append(value)
        } else if index % 3 == 2 {
            raptors.append(value)
        }
    }
}

teamDistribution(team: experiencedPlayers)
teamDistribution(team: inexperiencedPlayers)

func teamMeanHeight(team: [[String:Any]]) -> Double {
    
    var teamHeightArray: [Double] = []
    var teamHeight: Double = 0.0
    var teamCount:Double = 0.0
    
    for player in team {
        if let height = player["height"] as? Double {
            teamHeightArray.append(height)
            }
        }
    
    for i in teamHeightArray {
        teamHeight += i
    }
    
    teamCount = Double(teamHeightArray.count)
    
    return teamHeight / teamCount
}

teamMeanHeight(team: dragons)
teamMeanHeight(team: sharks)
teamMeanHeight(team: raptors)



