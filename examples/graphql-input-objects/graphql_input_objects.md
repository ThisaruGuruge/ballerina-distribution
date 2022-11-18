# Input objects

GraphQL resources can have record types as input parameters, which will be mapped to `INPUT_OBJECT`s in the generated GraphQL schema. According to the GraphQL specification, an input type cannot be used as an output type. Therefore, using the same type as an input and an output will result is a compilation error.

This example shows a GraphQL endpoint, which has a field `addPost` with an input of type `NewPost` in the root `Mutation` type.

For more information on the underlying package, see the [GraphQL package](https://lib.ballerina.io/ballerina/graphql/latest/).

::: code graphql_input_objects.bal :::

Run the service by executing the following command.

::: out graphql_input_objects.server.out :::

Send the following document to the GraphQL endpoint to test the service.

::: code graphql_input_objects.graphql :::

To send the document, use the following cURL command in a separate terminal.

::: out graphql_input_objects.client.out :::
