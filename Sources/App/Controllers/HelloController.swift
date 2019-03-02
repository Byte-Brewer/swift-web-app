//
// Created by kzonix on 3/2/19.
//

import Foundation
import Vapor

public final class HelloController: RouteCollection {

    public func boot(router: Router) throws {
        let helloRoutes = router.grouped("api", "hello")
        helloRoutes.get(String.parameter, use: greet)
        helloRoutes.post(use: postGreet)
        helloRoutes.get("welcome", use: welcome)
    }


    public func welcome(_ req: Request) throws -> Future<View> {
        return try req.view().render("welcome")
    }


    public func greet(_ req: Request) throws -> Future<View> {
        return try req.view().render("hello", [
            "name": req.parameters.next(String.self)
        ])
    }

    public func postGreet(_ req: Request) throws -> Future<View> {
        let log = try req.make(ConsoleLogger.self)
        log.info("post Hello")
        return try req.view().render("postHello",
                HelloContent(name: "Hello", date: "world"))
    }
}
