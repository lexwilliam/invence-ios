//
//  BranchDialog.swift
//  invence
//
//  Created by Alexander William on 17/04/24.
//

import Foundation
import SwiftUI

struct SelectBranchDialog: View {
    var branches: Array<CompanyBranch>
    var onBranchClicked: (CompanyBranch) -> Void
    
    var body: some View {
        VStack {
            List {
                ForEach(branches) { branch in
                    Text(branch.name)
                        .onTapGesture {
                            self.onBranchClicked(branch)
                        }
                }
            }
        }
        .padding()
    }
}
