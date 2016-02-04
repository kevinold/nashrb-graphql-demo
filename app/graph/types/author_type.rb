AuthorType = GraphQL::ObjectType.define do
  name "Author"
  description "Author"
  interfaces [NodeIdentification.interface]
  global_id_field :id
  field :name, !types.String, "Name"
end
