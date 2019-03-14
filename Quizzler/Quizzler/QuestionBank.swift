//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Bart Dietl on 11/03/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        
        // Creating a quiz item and appending it to the list
        let item = Question(text: "Czy Grześkowski ma kolege o ksywce \"Sisio\"?", correctAnswer: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "Czy Artur za młodu był członkiem składu raperskiego?", correctAnswer: true))
        
        list.append(Question(text: "Czy Darii wymarzonymi wakacjami była by wycieczka Koleją Transsyberyjską?", correctAnswer: false))
        
        list.append(Question(text: "Czy Helena ma prawo jazdy?", correctAnswer: false))
        
        list.append(Question(text: "Czy ulubioną audycją Żenii w radiu jest \"Bal czy Szmal\"?", correctAnswer: true))
        
        list.append(Question(text: "Czy Piotrka hobby jest łowienie ryb?", correctAnswer: false))
        
        list.append(Question(text: "Czy Bart był kiedyś na wymianie z programu Erazmus?", correctAnswer: false))
        
        list.append(Question(text: "Czy Zbyś zna osobiście wicepremiera Słowacji?", correctAnswer: false))
        
        list.append(Question(text: "Czy Aldona skończyła teatrologię?", correctAnswer: true))
        
        list.append(Question(text: "Czy Michał gra w World of Warcraft po stronie Hordy?", correctAnswer: true))
        
        list.append(Question(text: "Czy Jan pracował 3 lata jako asystent profesora na uczelni w Madrycie?", correctAnswer: false))
        
        list.append(Question(text: "Czy Paweł spędza niemal każde wakacje nad Bałtykiem?", correctAnswer: false))
        
        list.append(Question(text: "Czy największym hobby Holgera jest kolarstwo?", correctAnswer: true))
        
    }
    
    
    
}
