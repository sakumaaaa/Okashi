//
//  OkashiData.swift
//  Okashi
//
//  Created by asaken_n44 on 2023/05/05.
//

import Foundation

//お菓子データ検索用クラス
class OkashiData: ObservableObject {
   //web API検索用メソッド　第一引数：keyword 検索したワード
    func serachOkashi(keyword: String) {
        //デバッグエリアに出力
        print("serchOkashiメソッドで受け取った値：\(keyword)")
    }//serchOkashi
}//OkashiData
