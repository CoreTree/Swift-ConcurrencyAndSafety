import Foundation

actor UserProfileActor {
    var user:String = ""
    var posts:[Int] = []
    var comments:[Int:[String]] = [:]

    private func fetchUser(id:String) async -> String {
        return id
    }

    private func fetchPosts(for:String) async -> [Int] {
        return [1,4,7,14,17,20,23]
    }

    private func fetchComments(for postIds:[Int]) async -> [Int:[String]] {
        var res:[Int:[String]] = [:]
        for postId in postIds {
            res[postId] = ["hi", "eyb", "\(postId)"]
        }
        return res
    }

    func setUser(user:String) {
        self.user = user
    }

    func setPosts(posts:[Int]) {
        self.posts = posts
    }

    func setComments(comments:[Int:[String]]) {
        self.comments = comments
    }

    //@MainActor
    func fetch(userId:String) async {
        let user = await fetchUser(id: userId)
        let posts = await fetchPosts(for: user)
        let comments = await fetchComments(for: posts)
        setUser(user: user)
        setPosts(posts: posts)
        setComments(comments: comments)
    }
}
