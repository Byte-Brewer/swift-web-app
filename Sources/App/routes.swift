import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {

    let helloController = HelloController()
    let viewController = ViewController()

    try router.register(collection: helloController)
    try router.register(collection: viewController)
}
