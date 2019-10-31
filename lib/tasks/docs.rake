 task docs: :environment do
# GraphQLDocs.build(schema: "../app/graphql/trex_backend_schema.rb")
schema = GraphQL::Schema.define do
  query (Types::QueryType)
  mutation (Types::MutationType)
end
GraphQLDocs.build(schema: schema)
end
