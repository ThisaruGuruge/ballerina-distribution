# Input types

GraphQL resources can have input parameters, which will be mapped to input values in the generated GraphQL schema.

Inputs can be optional and/or defaultable types. If an input is optional, it will be mapped to a nullable type in the GraphQL schema. If an input has a default value, it will be added as a default value in the GraphQL schema.

This example shows a GraphQL endpoint, which has field `greeting` which has an input argument `name` of type `String!`.

For more information on the underlying package, see the [GraphQL package](https://lib.ballerina.io/ballerina/graphql/latest/).

::: code graphql_input_types.bal :::

Run the service by executing the following command.

::: out graphql_input_types.server.out :::

Send the following document to the GraphQL endpoint to test the service.

```graphql
{
    greeting(name: "Walter")
}
```

To send the document, use the following cURL command in a separate terminal.

::: out graphql_input_types.client.out :::
