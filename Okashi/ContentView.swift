//
//  ContentView.swift
//  Okashi
//
//  Created by asaken_n44 on 2023/05/05.
//

import SwiftUI

struct ContentView: View {
    //OkashiDataを参照する状態変数
    @StateObject var okashiDataList = OkashiData()
    //入力された文字列を保存する状態変数
    @State var inputText = ""
    
    var body: some View {
        //垂直にレイアウト
        VStack {
            //文字を受け取るTextFieldを表示する
            TextField("キーワード",
                      text:  $inputText,
            prompt: Text("キーワードを入力してください"))
            .onSubmit {
                //入力完了直後に検索をする
                okashiDataList.serachOkashi(keyword: inputText)
            }//.onSubmit
            //キーボードの改行を検索に変更する
            .submitLabel(.search)
            //上下左右に空白を空ける
            .padding()
        }//VStack
    }//View
}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
