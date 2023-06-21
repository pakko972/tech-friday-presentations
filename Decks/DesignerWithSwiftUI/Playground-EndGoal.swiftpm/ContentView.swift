import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            ViewThatFits(in: .horizontal) {
                accountList(itemView: accountItemViewWithTwoColumns)
                accountList(itemView: accountItemViewWithOneColumn)
            }.tabItem {
                Image(systemName: "square.dashed.inset.filled")
                Text("Comptes")
            }
            
            Text("2").tabItem {
                Image(systemName: "square.dashed.inset.filled")
                Text("Suivi / Validation")
            }
            
            Text("3").tabItem {
                Image(systemName: "square.dashed.inset.filled")
                Text("Profil")
            }
        }
        .allowsTightening(true)
        .lineLimit(1)
        .tint(.bnpp)
        .dynamicTypeSize(DynamicTypeSize.xSmall...DynamicTypeSize.accessibility1)
    }
    
    func accountList(itemView: @escaping (AccountItem) -> some View) -> some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text("83,19 EUR")
                        .font(.largeTitle)
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                            .padding(10)
                    }
                    .font(.title2)
                    .background {
                        Circle().foregroundStyle(.tertiary)
                    }
                }
                Text("Solde total au 27/10/2021")
                    .bold()
                Text("Solde à venir au 28/10/2021 : 82,98 EUR")
                    .bold()
                    .opacity(0.75)
            }
            .foregroundColor(.white)
            .padding()
            
            ScrollView {
                Section {
                    VStack(spacing: 20) {
                        ForEach(accounts) { account in
                            VStack {
                                itemView(account)
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.secondaryBackground)
                            }
                        }
                        .shadow(color: Color.primary.opacity(0.1), radius: 10)
                        .padding(.horizontal)
                    }
                } header: {
                    SearchField(text: "Recherche une opération")
                        .padding()
                }
                .padding(.vertical, 10)
            }
            .background {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.background)
                    .ignoresSafeArea(edges: .bottom)
            }
        }
        .background {
            mbeGradient
                .ignoresSafeArea()
        }
    }
    
    func accountItemViewWithTwoColumns(_ account: AccountItem) -> some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack(alignment: .firstTextBaseline) {
                Text(account.name)
                    .font(.headline)
                Spacer()
                Text(account.currentAmount.formatted(.currency(code: account.currencyCode)))
                    .font(.headline)
                    .foregroundColor(.accentColor)
            }
            
            HStack {
                Text("N° \(account.anonymizedID)")
                    .bold()
                    .font(.callout)
                    .foregroundStyle(.secondary)
                Text(" - \(account.kind)")
                    .bold()
                    .font(.footnote)
                    .foregroundStyle(.secondary)
            }
            Spacer(minLength: 10)
            Text("Solde à venir : \(account.futureAmount.formatted(.currency(code: account.currencyCode)))")
                .bold()
                .font(.footnote)
                .foregroundStyle(.secondary)
        }
    }
    
    func accountItemViewWithOneColumn(_ account: AccountItem) -> some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(account.name)
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("N° \(account.anonymizedID)")
                .bold()
                .font(.callout)
                .foregroundStyle(.secondary)
            Text(account.kind)
                .bold()
                .font(.footnote)
                .foregroundStyle(.secondary)
            Text("Solde à venir : \(account.futureAmount.formatted(.currency(code: account.currencyCode)))")
                .bold()
                .font(.footnote)
                .foregroundStyle(.secondary)
            Text(account.currentAmount.formatted(.currency(code: account.currencyCode)))
                .font(.headline)
                .foregroundColor(.accentColor)
        }
    }
}

struct MyPreviewProvider_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
