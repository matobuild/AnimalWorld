//
//  FeedView.swift
//  AnimalWorld
//
//  Created by kittawat phuangsombat on 2022/11/14.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView{
            LazyVStack {
                ForEach(0...20, id: \.self){ display in
                    DisplayRowView()
                    
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
