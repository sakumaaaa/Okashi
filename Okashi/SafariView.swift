//
//  SafariView.swift
//  Okashi
//
//  Created by asaken_n44 on 2023/05/05.
//

import SwiftUI
import SafariServices

//SFSafariViewControllerを起動する構造体
struct SafariView: UIViewControllerRepresentable {
    //表示するホームページのURLを受け取る変数
    let url: URL
    
    //表示するViewを生成するときに実行
    func makeUIViewController(context: Context) -> SFSafariViewController {
        //Safari起動
        return SFSafariViewController(url: url)
    }
    
    //Viewが更新されたときに実行
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        //処置なし
    }
}
