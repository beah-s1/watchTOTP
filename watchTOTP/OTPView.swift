//
//  OTPView.swift
//  watchTOTP
//
//  Created by 阿部 賢太郎 on 2022/07/08.
//

import SwiftUI

struct OTPView: View {
    @ObservedObject var token: TOTPCredential
    var body: some View {
        VStack(alignment: .leading){
            Text(token.token)
                .font(.largeTitle)
            ProgressView(value: (Double(token.remainCount) / 30.0))
        }
        .padding()
        .background(Color("BaseColor"))
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding()
    }
}

struct OTPView_Previews: PreviewProvider{
    static var previews: some View {
        Group {
            OTPView(token: .init("HXDMVJECJJWSRB3HWIZR4IFUGFTMXBOZ"))
            OTPView(token: .init("HXDMVJECJJWSRB3HWIZR4IFUGFTMXBOZ"))
                .preferredColorScheme(.dark)
        }
    }
}
