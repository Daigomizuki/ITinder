//
//  BottomView.swift
//  ITinder
//
//  Created by 水木大悟 on 2020/05/26.
//  Copyright © 2020 水木大悟. All rights reserved.
//

import SwiftUI

struct BottomView : View {
    
    @EnvironmentObject var obs : observer
    
    var body: some View{
        
        HStack{
            
            Button(action: {
                
                if self.obs.last != -1{
                    
                    self.obs.updateDB(id: self.obs.users[self.obs.last], status: "")
                }
                
            }) {
                
                Image("reload").resizable().frame(width: 25, height: 25).padding()
                
            }.foregroundColor(.yellow)
            .background(Color.white)
            .shadow(radius: 25)
            .clipShape(Circle())
            
            Button(action: {
                
                if self.obs.last == -1{
                    
                    //intial user...
                    self.obs.updateDB(id: self.obs.users[self.obs.users.count - 1], status: "reject")
                }
                else{
                    //if last user index is 4 means current user index will be 4-1=3
                    self.obs.updateDB(id: self.obs.users[self.obs.last - 1], status: "reject")
                }
                
            }) {
                
                Image("clear").resizable().frame(width: 30, height: 30).padding()
                
            }.foregroundColor(.red)
            .background(Color.white)
            .shadow(radius: 25)
            .clipShape(Circle())
            
            
            
            Button(action: {
                
            }) {
                
                Image("star").resizable().frame(width: 25, height: 25).padding()
                
            }.foregroundColor(.yellow)
            .background(Color.gray)
            .shadow(radius: 25)
            .clipShape(Circle())
            
            
            
            Button(action: {
                // same here also
                if self.obs.last == -1{
                    
                    //intial user...
                    self.obs.updateDB(id: self.obs.users[self.obs.users.count - 1], status: "liked")
                }
                else{
                    //if last user index is 4 means current user index will be 4-1=3
                    self.obs.updateDB(id: self.obs.users[self.obs.last - 1], status: "liked")
                }
                
            }) {
                
                Image("heart").resizable().frame(width: 25, height: 25).padding()
                
            }.foregroundColor(.red)
            .background(Color.white)
            .shadow(radius: 25)
            .clipShape(Circle())
            
            
            Button(action: {
                
            }) {
                
                Image("current").resizable().frame(width: 25, height: 25).padding()
                
            }.foregroundColor(.purple)
            .background(Color.gray)
            .shadow(radius: 25)
            .clipShape(Circle())
            
            
        }
    }
    
}
