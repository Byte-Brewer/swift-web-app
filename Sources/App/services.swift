//
// Created by kzonix on 3/2/19.
//

import Foundation
import Vapor

extension Services {
    /// Vapor's default services. This includes many services required to successfully
    /// boot an Application. Only for special use cases should you create an empty `Services` struct.
    public static func `configurableServices`() -> Services {

        var services = Services.default()

        // register custom service
        // services.register ...
        return services
    }

}