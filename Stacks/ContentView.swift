//
//  ContentView.swift
//  Stacks
//
//  Created by Jose on 3/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CabeceraView()
            HStack(spacing:15) {
                LuchadorView(luchador: "Goku", fuerza: "800/1000", extra: "Ultra Instinto", colorTexto: .black, colorFondo: .purple)
                
                ZStack {
                    LuchadorView(luchador: "Vegeta", fuerza: "790/1000", extra: "Mega Instinto", colorTexto: .blue, colorFondo: Color(red:240/255,green:240/255, blue:240/255))
                    Text("Lo puedes entrenar!")
                        .font(.system(.caption,design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color(red:255/255,green:183/255, blue:37/255))
                        .offset(x: 0, y: 87)
                }
            }.padding(.horizontal)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CabeceraView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 2){
            Text("Elige")
                .font(.system(.largeTitle,design: .rounded))
                .fontWeight(.black)
            Text("Tu Luchador")
                .font(.system(.largeTitle,design: .rounded))
                .fontWeight(.black)
        }
    }
}

struct LuchadorView: View {
    
    var luchador : String
    var fuerza : String
    var extra : String
    var colorTexto : Color
    var colorFondo : Color
    
    var body: some View {
        VStack{
            Text(luchador)
                .font(.system(.title,design: .rounded))
                .fontWeight(.black)
                .foregroundColor(colorTexto)
            Text(fuerza)
                .font(.system(size: 15,weight: .heavy,design: .rounded))
                .foregroundColor(colorTexto)
            Text(extra)
                .font(.headline)
                .foregroundColor(.gray)
        }
        .frame(minWidth:0,maxWidth: .infinity,minHeight: 100,maxHeight: 250)
        .padding(40)
        //Aqui usamos Color.purple, pero se podría usar solo .purple
        .background(colorFondo)
        .cornerRadius(10)
    }
}

/*struct LuchadorView: View {
    var body: some View {
        VStack{
            Text("Goku")
                .font(.system(.title,design: .rounded))
                .fontWeight(.black)
                .foregroundColor(.white)
            Text("$$800 / 1000")
                .font(.system(size: 15,weight: .heavy,design: .rounded))
                .foregroundColor(.white)
            Text("Ultra Instinto.")
                .font(.headline)
                .foregroundColor(.gray)
        }
        .frame(minWidth:0,maxWidth: .infinity,minHeight: 100,maxHeight: 250)
        .padding(40)
        //Aqui usamos Color.purple, pero se podría usar solo .purple
        .background(Color.purple)
        .cornerRadius(10)
    }
}*/
/* PARA VEGETA
struct ExtractedView: View {
    var body: some View {
        VStack{
            Text("Vegeta")
                .font(.system(.title,design: .rounded))
                .fontWeight(.black)
                .foregroundColor(.black)
            Text("$$790/1000")
                .font(.system(size: 15,weight: .heavy,design: .rounded))
                .foregroundColor(.black)
            Text("Mega Instinto.")
                .font(.headline)
                .foregroundColor(.blue)
        }
        .frame(minWidth:0,maxWidth: .infinity,minHeight: 100,maxHeight: 250)
        .padding(40)
        //Aqui usamos Color.purple, pero se podría usar solo .purple
        .background(Color(red:240/255,green:240/255, blue:240/255))
        .cornerRadius(10)
    }
}*/
