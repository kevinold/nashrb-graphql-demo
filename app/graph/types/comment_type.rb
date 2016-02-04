CommentType = GraphQL::ObjectType.define do
  name "Comment"
  description "Comment"
  interfaces [NodeIdentification.interface]
  global_id_field :id
  field :name, !types.String, "Name"
  field :body, !types.String, "Comment"
end
