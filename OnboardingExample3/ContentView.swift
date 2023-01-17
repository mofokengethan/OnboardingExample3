//
//  ContentView.swift
//  OnboardingExample3
//
//  Created by Ethan Mofokeng on 12/18/22.
//  Design Credit: https://www.pexels.com/@cottonbro/
//  Design Credit: https://dribbble.com/shots/15266900-Mobile-app-login-screen-and-sign-up-flow
//

import SwiftUI

extension Color {
    static let venetianRed = Color(red: 203/255, green: 1/255, blue: 15/255)
    static let ouCrimsonRed = Color(red: 135/255, green: 14/255, blue: 21/255)
}

struct ContentView: View {
    @State var email = ""
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea()
                
                // MARK: BACKGROUND IMAGE
                VStack {
                    Image("background")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .ignoresSafeArea()
                    Spacer()
                }
                
                
                VStack(alignment: .leading) {
                    Spacer()
                    
                    VStack {
                        HStack {
                            
                            // MARK: VIEW GREETING
                            Text("Hi!")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                                .padding(.horizontal)
                            Spacer()
                        }
                        
                        // MARK: USER INPUT COMPONENT
                        VStack(alignment: .leading) {
                            TextField("Email", text: $email)
                                .padding()
                                .background(Color.white.cornerRadius(8).opacity(0.8))
                            
                            NavigationLink(destination: {
                                LoginView()
                            }, label: {
                                Text("Continue")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.ouCrimsonRed.cornerRadius(8))
                            })
                            
                            HStack {
                                Spacer()
                                Text("or")
                                    .padding()
                                    .foregroundColor(.white)
                                Spacer()
                            }
                            
                            ThirdPartyLoginComponent(
                                image: "facebook",
                                title: "Continue with Facebook"
                            )
                            
                            ThirdPartyLoginComponent(
                                image: "google",
                                title: "Continue with Google"
                            )
                            
                            ThirdPartyLoginComponent(
                                image: "apple",
                                title: "Continue with Apple"
                            )
                            
                            HStack {
                                Text("Dont' have an account?")
                                    .foregroundColor(.white)
                                    .bold()
                               NavigationLink(destination: {
                                   SignUpView()
                               }, label: {
                                   Text("Sign Up")
                                       .bold()
                                       .foregroundColor(.venetianRed)
                               })
                               .navigationTitle("")
                            }
                            
                            Text("Forgot your password?")
                                .bold()
                                .foregroundColor(.venetianRed)
                                .padding(.vertical)
                        }
                        .padding(.horizontal, 20)
                    }
                    .padding(.vertical, 20)
                    .padding(.horizontal, 5)
                    .background(
                        Color.gray
                            .cornerRadius(8)
                            .padding(10)
                            .opacity(0.4)
                    )
                }
            }
        }
        .tint(.white)
    }
}

struct LoginView: View {
    @State var password = ""

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            // MARK: BACKGROUND IMAGE
            VStack {
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .ignoresSafeArea()
                Spacer()
            }
            
            
            VStack(alignment: .leading) {
                
                VStack {
                    HStack {
                        
                        // MARK: VIEW GREETING
                        Text("Log in")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                        Spacer()
                    }
                    
                    // MARK: USER INPUT COMPONENT
                    VStack(alignment: .leading) {
                        
                        HStack(alignment: .top) {
                            Image("profile")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Circle())
                                .frame(width: 120, height: 120)
                                .padding(.horizontal, 0)
                            
                            VStack(alignment: .leading) {
                                Text("Jane Dow")
                                    .fontWeight(.heavy)
                                    .foregroundColor(.white)
                                Text("jane.doe@gmail.com")
                                    .foregroundColor(.white)
                                    .fontWeight(.medium)
                            }
                            .padding(.top)
                        }
                        
                        TextField("Password", text: $password)
                            .padding()
                            .background(Color.white.cornerRadius(8).opacity(0.8))
                            .overlay {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(lineWidth: 2)
                                    .foregroundColor(.venetianRed)
                            }
                        
                        Text("Continue")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.ouCrimsonRed.cornerRadius(8))
                       
                        
                    }
                    .padding(.horizontal, 20)
                }
                .padding(.vertical, 20)
                .padding(.horizontal, 5)
                .background(
                    Color.gray
                        .cornerRadius(8)
                        .padding(10)
                        .opacity(0.4)
                )
            }
        }
    }
}

struct SignUpView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            // MARK: BACKGROUND IMAGE
            VStack {
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .ignoresSafeArea()
                Spacer()
            }
            
            
            VStack(alignment: .leading) {
                Spacer()
                    .frame(height: 60)
                VStack {
                    HStack {
                        
                        // MARK: VIEW GREETING
                        Text("Sign Up")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                            .padding(.bottom)
                        Spacer()
                    }
                    
                    // MARK: USER INPUT COMPONENT
                    VStack(alignment: .leading) {
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Looks like you don't have an account. Let's create a new account for")
                                .foregroundColor(.white)
                                .fontWeight(.medium)
                            
                            Text("jane.doe@gmail.com")
                                .fontWeight(.heavy)
                                .tint(.white)
                        }
                        .padding(.bottom)

                        
                        TextField("Email", text: $email)
                            .padding()
                            .background(Color.white.cornerRadius(8).opacity(0.8))
                            .overlay {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(lineWidth: 2)
                                    .foregroundColor(.venetianRed)
                            }
                        TextField("Password", text: $password)
                            .padding()
                            .background(Color.white.cornerRadius(8).opacity(0.8))
                            .overlay {
                                HStack {
                                    Spacer()
                                    Text("View")
                                }
                                .padding(.trailing)
                            }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("By selecting Agree and continue below, I agree to")
                                .foregroundColor(.white)
                                .fontWeight(.medium)
                            +
                            Text(" Terms of Service and Privacy Policy")
                                .foregroundColor(.venetianRed)
                        }
                        .padding(.vertical)
                        
                        Text("Agree and continue")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.ouCrimsonRed.cornerRadius(8))
                    }
                    .padding(.horizontal, 20)
                }
                .padding(.vertical, 20)
                .padding(.horizontal, 5)
                .background(
                    Color.gray
                        .cornerRadius(8)
                        .padding(10)
                        .opacity(0.4)
                )
            }
        }
    }
}


struct ThirdPartyLoginComponent: View {
    let image: String
    let title: String
    var body: some View {
        HStack() {
            Spacer()
            Image(image)
                .resizable()
                .frame(width: 40, height: 40)
            Spacer()
            Text(title)
                .fontWeight(.bold)
            Spacer()
            Spacer()
        }
        .padding(10)
        .frame(maxWidth: .infinity)
        .background(Color.white.cornerRadius(8))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
