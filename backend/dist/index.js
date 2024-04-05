import { ApolloServer } from "@apollo/server";
import { startStandaloneServer } from "@apollo/server/standalone";
const typeDefs = `#graphql

  type Ad {
    id: number
    title: string
    desctription: string
    owner: string
    price: number
    ville: string
  }

  type Query {
    ads: [Ad]
  }
`;
const server = new ApolloServer({
    typeDefs,
});
const { url } = await startStandaloneServer(server, {
    listen: { port: 4000 },
});
console.log(`🚀  Server ready at: ${url}`);
//# sourceMappingURL=index.js.map