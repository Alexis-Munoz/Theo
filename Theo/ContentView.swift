//
//  ContentView.swift
//  Theo
//
//  Created by Alexis Muñoz on 1/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ARViewContainer()
            .edgesIgnoringSafeArea(.all)
            .overlay(SaveButton(), alignment: .topTrailing)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SaveButton: View {
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                for (jointName, jointEntity) in BodySkeleton().joints {
                    print("Joint Name: \(jointName)")
                    print("Joint Position: \(jointEntity.position)")
                }
            }) {
                Label("Emergency crash button", systemImage: "square.and.arrow.up")
            }
            
//            Button(action: {
//                // Code to save current joint positions to a json file
//
//                let encoder = JSONEncoder()
//                let jsonData = try encoder.encode(BodySkeleton().joints)
//                                let documentsUrl = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
//                                let fileUrl = documentsUrl.appendingPathComponent("joints.json")
//                                try jsonData.write(to: fileUrl)
//                                print("Joint positions saved to: \(fileUrl.path)")
//            }) {
//                Label("Save current joint positions to a json file", systemImage: "square.and.arrow.up")
//            }
            
            .foregroundColor(.white)
            .padding()
        }
    }
}
