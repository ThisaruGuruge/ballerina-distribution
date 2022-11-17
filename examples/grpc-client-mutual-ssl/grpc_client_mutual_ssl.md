# Client - Mutual SSL

Ballerina supports mutual SSL, which is a certificate-based authentication process in which two parties (the client and server) authenticate each other by verifying the digital certificates. It ensures that both parties are assured of each other's identity.

>**Info:** For more information on the underlying module, see the [`grpc` module](https://lib.ballerina.io/ballerina/grpc/latest).

>**Info:** Setting up the client is the same as setting up the simple RPC client with additional configurations. You can refer to the [simple RPC client](/learn/by-example/grpc-client-simple/) to implement the client used below.

>**Tip:** You may need to change the certificate file path, private key file path, and trusted certificate file path  in the code below. 

   ::: code grpc_client_mutual_ssl.bal :::

Execute the command below to run the client.

>**Info:** As a prerequisite to running the client, start a [sample service secured with Mutual SSL](/learn/by-example/grpc-service-mutual-ssl/).

   ::: out grpc_client_mutual_ssl.out :::
