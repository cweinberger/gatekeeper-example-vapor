import Vapor
import Gatekeeper

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "It works!"
    }
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }

    let protectedRoutes = router.grouped(GatekeeperMiddleware.self)
    protectedRoutes.get("protected/hello") { req in
        return "Protected Hello, World!"
    }
}
