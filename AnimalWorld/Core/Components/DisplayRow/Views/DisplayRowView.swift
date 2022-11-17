//
//  DisplayRowView.swift
//  AnimalWorld
//
//  Created by kittawat phuangsombat on 2022/11/17.
//

import SwiftUI

struct DisplayRowView: View {
    var body: some View {
        VStack {
//            feed header
            HStack{
                Image(systemName: "eraser")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                VStack(alignment: .leading){
                    Text("Dogman")
                        .font(.subheadline.bold())
                    Text("5hrs")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                }
                Spacer()
                
            }
            //dog post
            Image(systemName: "square.and.arrow.up")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: 350)
                .clipShape(Rectangle())
                .background(Color.gray)
            
            //action buttons
            HStack {
                Button {
                    //bark a like
                } label: {
                    HStack{
                        Image(systemName: "pawprint")
                            .font(.headline)
                        Text("Bark")
                            .font(.subheadline)
                    }
                    
                }
                Spacer()
                
                Button {
                    //comment
                } label: {
                    HStack{
                        Image(systemName: "ellipsis.message")
                            .font(.headline)
                           Text("Comment")
                            .font(.subheadline)
                    }
                      
                }
                Spacer()
                
                Button {
                    //share
                } label: {
                    HStack{
                        Image(systemName: "wave.3.right")
                            .font(.headline)
                        Text("Share")
                            .font(.subheadline)
                    }
                }
                

            }
            .padding(.horizontal)
            .foregroundColor(.gray)
            
            Divider()
                
            
            
            
        }
    }
}

struct DisplayRowView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayRowView()
    }
}
