PostType = GraphQL::ObjectType.define do
  name "Post"
  description "Blog post"
  interfaces [NodeIdentification.interface]
  global_id_field :id
  field :title, !types.String, "Title"
  field :summary, !types.String, "Summary"
  field :body, !types.String, "Body content"
end
