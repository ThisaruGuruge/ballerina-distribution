import ballerina/ftp;
import ballerina/io;
import ballerina/lang.'string as strings;

public function main() returns error? {
    // Creates the client with the connection parameters, host, username, and
    // password. An error is returned in a failure. The default port number
    // `21` is used with these configurations.
    ftp:ClientConfiguration config = {
        protocol: ftp:FTP,
        host: "ftp.example.com",
        auth: {credentials: {username: "user1", password: "pass456"}}
    };
    ftp:Client clientEp = check new (config);

    // Add a new file to the given file location. In error cases,
    // an error is returned. The local file is provided as a stream of
    // `io:Block` in which 1024 is the block size.
    stream<io:Block, io:Error?> bStream
        = check io:fileReadBlocksAsStream("/local/logFile.txt", 1024);
    check clientEp->put("/server", bStream);
}
