# GlobalTintBug

This project shows Global Tint bug in SwiftUI.

Uses Global AccentColor described in this article:

https://www.bigmountainstudio.com/members/posts/27630-how-do-i-add-a-global-accent-color-to-a-swiftui-1-0-project

However action sheets behave oddly.

```
struct ContentView: View {
    @State var isPresented: Bool = false
    var body: some View {
        Button("Present Sheet"){
            isPresented.toggle()
        }
        .actionSheet(isPresented: $isPresented){
            ActionSheet(title: Text("title"), buttons: [
                .default(Text("item 1")),
                .default(Text("item 2")),
                .cancel()
            ])
        }
    }
}
```

<img src="https://github.com/edwurtle/GlobalTintBug/blob/main/TintBug.gif" width="300" />
