QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root for this schema"

  field :posts do
    type PostType
    description "Posts"
    resolve -> (obj, args, ctx) do
      Hashie::Mash.new({ id: rand(1000), title: 'Test', summary: 'Test Summary', body: 'Test Body' })
    end
  end

  field :node, field: NodeIdentification.field
end
