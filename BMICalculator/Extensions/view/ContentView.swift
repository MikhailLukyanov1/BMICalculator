//
//  ContentView.swift
//  BMICalculator
//
//  Created by David Cormell on 23/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var height: String = ""
    @State private var weight: String = ""
    @State private var bmiCalculation: Double = 0
    @State private var bmiClassification: String = ""
    @State private var unitOfMeasurement: String = ""
    
    var body: some View {

        VStack {
            Image("PublicHealth").resizable()
                .aspectRatio(contentMode: .fit)
            List {

                VStack {
                    TextField("Height in centimeters", text: $height)
                    TextField("Weight in kilograms", text: $weight)
                }
                VStack(alignment: .leading, spacing: 10) {
                    
                    Button("Calculate BMI", action: {
                        let BMIclass = BMICalculations()
                        bmiCalculation = BMIclass.calculateBmi(weight: Double(weight) ?? 0, height: Double(height) ?? 0)
                        
                        bmiClassification = BMIclass.lookUpBmiClassification(bmi: bmiCalculation)
                        
                    })


                    Text("Your BMI is: \(bmiCalculation)")
                    Text("You are: \(bmiClassification)")

                
                }
                .padding(20)

            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
