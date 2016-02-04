PostType = GraphQL::ObjectType.define do
  name "Post"
  description "Blog post"
  interfaces [NodeIdentification.interface]
  global_id_field :id
  field :title, !types.String, "Title"
  field :summary, !types.String, "Summary"
  field :body, !types.String, "Body content"
  field :author_id, !types.Int, "Author id"
  field :author do
    type AuthorType
    resolve -> (post, args, ctx) {
      puts "post: #{post.inspect}, args: #{args.inspect}"
      Author.find(post.author_id)
    }
  end
end
