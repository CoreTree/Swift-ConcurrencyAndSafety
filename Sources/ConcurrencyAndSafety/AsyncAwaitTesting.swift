import Foundation

struct UserProfile {
    let user:String
    let posts:[Int]
    let comments:[Int:[String]]
}

struct AsyncTesting {
    func fetchUser(id:String) async throws -> String {
        return id
    }

    func fetchPosts(for:String) async throws -> [Int] {
        return [1, 4, 7, 14, 17, 20, 25]
    }

    func fetchComments(for postIds:[Int]) async throws -> [Int:[String]] {
        var res:[Int:[String]] = [:]
        for postId in postIds {
            res[postId] = ["Hi", "Bye", "\(postId)"]
        }
        return res
    }

    func fetchUserProfile(userId:String) async throws -> UserProfile {
        let user = try await fetchUser(id: userId)
        let posts = try await fetchPosts(for: user)
        let comments = try await fetchComments(for: posts)
        return UserProfile(user: user, posts: posts, comments: comments)
    }
}
