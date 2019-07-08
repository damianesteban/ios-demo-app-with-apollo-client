//  This file was automatically generated and should not be edited.

import Apollo

public final class AllPostsQuery: GraphQLQuery {
  public let operationDefinition =
    "query AllPosts {\n  posts {\n    __typename\n    title\n    id\n    published\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("posts", type: .nonNull(.list(.object(Post.selections)))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(posts: [Post?]) {
      self.init(unsafeResultMap: ["__typename": "Query", "posts": posts.map { (value: Post?) -> ResultMap? in value.flatMap { (value: Post) -> ResultMap in value.resultMap } }])
    }

    public var posts: [Post?] {
      get {
        return (resultMap["posts"] as! [ResultMap?]).map { (value: ResultMap?) -> Post? in value.flatMap { (value: ResultMap) -> Post in Post(unsafeResultMap: value) } }
      }
      set {
        resultMap.updateValue(newValue.map { (value: Post?) -> ResultMap? in value.flatMap { (value: Post) -> ResultMap in value.resultMap } }, forKey: "posts")
      }
    }

    public struct Post: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("published", type: .nonNull(.scalar(Bool.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(title: String, id: GraphQLID, published: Bool) {
        self.init(unsafeResultMap: ["__typename": "Post", "title": title, "id": id, "published": published])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var title: String {
        get {
          return resultMap["title"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "title")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var published: Bool {
        get {
          return resultMap["published"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "published")
        }
      }
    }
  }
}