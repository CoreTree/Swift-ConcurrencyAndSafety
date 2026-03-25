// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

@main
struct ConcurrencyAndSafety {
    static func main() {
        if #available(macOS 15.0, *) {
            //Without using Actor, still requires macOS >=15.0
            let semaphore = DispatchSemaphore(value: 0)
            Task.detached {
                let userId = "1245780"
                let atesting = AsyncTesting()
                do {
                    let userProfile = try await atesting.fetchUserProfile(userId: userId)
                    print("UserProfile.userId: \(userProfile.user)")
                } catch {
                    print(error.localizedDescription.debugDescription)
                }
                semaphore.signal()
            }
            semaphore.wait()
            print("Semaphore waited")
        } else {
            print("MacOS 15.0 not available, noop.")
        }
    }
}
