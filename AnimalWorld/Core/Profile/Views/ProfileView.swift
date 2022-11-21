//
//  ProfileView.swift
//  AnimalWorld
//
//  Created by kittawat phuangsombat on 2022/11/14.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment:.leading) {
            ZStack(alignment: .bottomLeading) {
                Image("DogCover")
                    .resizable()
                    .scaledToFill()
                
                Image("DogProfileImg")
                    .resizable()
                    .frame(width: 160, height: 160)
                    .clipShape(Circle())
                    .offset(x: 16, y: 30)
                
                ZStack{
                    Circle()
                        .frame(width: 40, height: 40)
                        .foregroundColor(Color(.lightGray))
                    
                    Button {
                        //change profile img
                    } label: {
                        Image(systemName: "camera.fill")
                            .frame(width: 40, height: 40)
                            .foregroundColor(.black)
                            .overlay(Circle().stroke(Color.white, lineWidth: 2 ))
                        
                    }
                } .offset(x: 140, y: 20)
                
            }
            .frame(height: 96)
            
            
            Spacer()
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

