//
//  ContentView.swift
//  Grids
//
//  Created by Adityaa Mehra on 15/07/21.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        //MARK:- LazyHGrid
        let fixedRows = Array(repeating: GridItem(.fixed(100), spacing: 5, alignment: .center), count: 3)
        ScrollView(.horizontal , showsIndicators: false){
        LazyHGrid(rows: fixedRows, content: {
            ForEach(1..<101){i in
            Text("Placeholder \(i)")
            }
        })
        }
        
        //MARK:- LazyVGrid
        /*
         let adaptiveColumns = Array(repeating: GridItem(.adaptive(minimum: 100)), count: 3)
         let flexibleColumns = Array(repeating: GridItem(.flexible(minimum: 0)), count: 3)
         let fixedColumns = Array(repeating:  GridItem(.fixed(100), spacing: 5, alignment: .center), count: 3)
         */
        /*
         ScrollView(showsIndicators: false) {
         LazyVGrid(columns: adaptiveColumns, content: {
         ForEach(1..<201){i in
         Text("Placeholder \(i)")
         }
         })
         }
         */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
