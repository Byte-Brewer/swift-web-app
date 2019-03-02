import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    let helloController = HelloController()
    try router.register(collection: helloController)
}
