import Vapor

/// Called after your application has initialized.
public func boot(_ app: Application) throws {
    let appName = "Vapor Swift Server-side app"
    print("\(appName) :: pre-started phase!")
}
