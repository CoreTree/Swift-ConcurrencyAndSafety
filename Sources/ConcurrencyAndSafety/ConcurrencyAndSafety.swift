// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

@main
struct ConcurrencyAndSafety {
    static func main() async {
        if #available(macOS 15.0, *) {
            //Without using Actor, still requires macOS >=15.0
            let userId = "1245780"
            let atesting = AsyncTesting()
            do {
                let userProfile = try await atesting.fetchUserProfile(userId: userId)
                print("UserProfile.userId: \(userProfile.user)")
            } catch {
                print(error.localizedDescription.debugDescription)
            }
            //UserId "1245780" should have been printed to screen at this point
            let annot = AnnotationTesting()
            await annot.concurrentMethod()
            //"Testing Concurrency" should have been printed to screen by this point
        } else {
            print("MacOS 15.0 not available, no-op.")
        }
    }
}
