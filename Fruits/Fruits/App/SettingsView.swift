//
//  SettingsView.swift
//  Fruits
//
//  Created by Woogi on 2022/04/19.
//

import SwiftUI

struct SettingsView: View {
  // MARK: - PROPERTIES
  
  @Environment(\.presentationMode) var presentationMode
  @AppStorage("isOnboarding") var isOnboarding: Bool = false
  
  // MARK: - BODY
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 20) {
          // MARK - Section 1
          
          GroupBox(
            label:
              SettingsLabelView(labelText: "Fruits", labelImage: "info.circle"),
            content: {
              
              Divider().padding(.vertical, 4)
              
              
              HStack(alignment: .center, spacing: 10) {
                Image("logo")
                  .resizable()
                  .scaledToFit()
                  .frame(width: 80, height: 80)
                
                Text("Most Fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more ")
              }
              }
          )
          
          // MARK - Section 2
          
          GroupBox(
            label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
          ) {
            Divider().padding(.vertical, 4)
            
            Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
              .padding(.vertical, 8)
              .frame(minHeight: 80)
              .layoutPriority(1)
              .font(.footnote)
              .multilineTextAlignment(.leading)
            
            Toggle(isOn: $isOnboarding, label: {
              if isOnboarding {
                Text("Restarted".uppercased())
                  .fontWeight(.bold)
                  .foregroundColor(Color.green)
              } else {
                Text("Restart".uppercased())
                  .fontWeight(.bold)
                  .foregroundColor(Color.secondary)
              }
            })
              .padding()
              .background(
                Color(UIColor.tertiarySystemBackground)
                  .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
              )
              
          }
          
          // MARK - Section 3
          
          GroupBox(
            label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
          ) {
            SettingsRowView(name: "Developer", content: "Woogi")
            SettingsRowView(name: "Designer", content: "Woogi")
            SettingsRowView(name: "Compatibility", content: "iOS 15")
            SettingsRowView(name: "Github", linkLabel: "Woogi-Kang", linkDestination: "www.github.com")
            SettingsRowView(name: "Instagram", linkLabel: "Woogi-Kang", linkDestination: "www.github.com")
            SettingsRowView(name: "SwiftUI", content: "2.0")
            SettingsRowView(name: "SwiftUI", content: "1.1.0")
          }
        } // VStack
        .navigationTitle(Text("Settings"))
        .navigationBarTitleDisplayMode(.large)
        .navigationBarItems(
          trailing: Button(
            action: {
              presentationMode.wrappedValue.dismiss()
            }) {
              Image(systemName: "xmark")
            }
        )
        .padding()
      } // ScrollView
    } // Navigationview
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
      .preferredColorScheme(.dark)
  }
}
