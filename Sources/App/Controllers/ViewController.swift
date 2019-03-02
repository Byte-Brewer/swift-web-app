//
// Created by kzonix on 3/2/19.
//

import Foundation
import Vapor

public final class ViewController: RouteCollection {

    public func boot(router: Router) throws {
        let helloRoutes = router.grouped("api", "view")
        helloRoutes.post(use: view1)
        helloRoutes.post("json", use: view3)
        helloRoutes.get("welcome", String.parameter, use: view2)
    }

    public func view1(_ req: Request) throws -> Future<View> {
        return try req.content.decode(User.self).flatMap { u in
            return try req.view().render("view1", u)
        };
    }

    public func view3(_ req: Request) throws -> Future<User> {
        return try req.content.decode(User.self).map { u in
            return u
        };
    }


    public func view2(_ req: Request) throws -> Future<View> {
        return try req.view().render("view2", [
            "name": req.parameters.next(String.self)
        ])
    }
}
