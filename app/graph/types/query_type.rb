QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root for this schema"

  field :post do
    type PostType
    description "Post"
    resolve -> (obj, args, ctx) do
      Post.find(args["id"])
    end
  end

  field :posts do
    type GraphQL::ListType.new(of_type: PostType)
    description "List of posts"
    resolve -> (obj, args, ctx) do
      Post.all
    end
  end

  field :node, field: NodeIdentification.field
end
