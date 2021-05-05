# spm-transitive

Try to compile `MyFrameworkC`.  It will fail with

    🛑 MyFrameworkB-Swift.h: Module 'MySwiftLibrary' not found

There are 3 XCode frameworks and one SPM library.  The dependency graph is simply:

    MyFrameworkC -> MyFrameworkB -> MyFrameworkA -> MySwiftLibrary

- **MySwiftModule** declares a single  `@objc public protocol` and that's it.

- **MyFrameworkA** is empty.

- **MyFrameworkB** imports `MySwiftModule` and defines a public `@objc` class that conforms to the protocol declared in `MySwiftLibrary`.

- **MyFrameworkC** simply attempts to `import MyFrameworkB`.
