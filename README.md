
To get started

1. Run "docker-compose up" to get your docker based local Postgres database up and running
2. Run SQL statements in schema.sql file to create your tables and seed them with data
3. Run "npx postgraphile -c 'postgres://myrefuge:myrefuge@localhost/myrefuge' --watch --enhance-graphiql --dynamic-json" to have postgraphile to introspect your db and build a GraphQL schema based on it
4. In your browser visit http://localhost:5000/graphiql to access the postgraphile gui to run sample queries against your graphql schema
