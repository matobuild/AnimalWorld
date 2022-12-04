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
          
            headerView
                .padding(.bottom, 50)
                        
            VStack(alignment: .leading) {
                Text("MATO DOG")
                    .font(.title2)
                    .bold()
                Text("I like to eat and poop")
                    .font(.subheadline)
                    .italic()
                    .padding(.bottom)
                
                
             Divider()
                
                HStack{
                    Image(systemName: "house")
                    Text("Live at bangok Thailand")
                }
                .font(.title3)
            }
            .padding(.horizontal)
            
            
           
                
            
     
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
  
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            Image("Cover")
                .resizable()
                .scaledToFill()
                .frame(height: 300)
                .clipped()
                            
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
            
            ZStack{
                Circle()
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color(.lightGray))
                
                Button {
                    //change cover img
                } label: {
                    Image(systemName: "camera.fill")
                        .frame(width: 40, height: 40)
                        .foregroundColor(.black)
                        .overlay(Circle().stroke(Color.white, lineWidth: 2 ))
                    
                }
            } .offset(x: 360, y: 2)
            
            
        }
      
    }
}
