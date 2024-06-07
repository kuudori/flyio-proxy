
# Fly.io Proxy

This project sets up a Squid proxy server on the Fly.io platform, allowing you to use it as a proxy for your applications or services.

## Prerequisites

- [Fly.io account](https://fly.io/) and [Flyctl](https://fly.io/docs/flyctl/installing/) installed

## Setup

1. Clone this repository:
   ```
   git clone https://github.com/yourusername/flyio-proxy.git
   cd flyio-proxy
   ```

2. If you want to change the port, open the `fly.toml` file and replace all occurrences of the current port number (e.g., 41641) with your desired port number.
   ```toml
   [env]
     SQUID_PORT = 41645
   ```

3. Deploy the application to Fly.io:
   ```
   flyctl deploy
   ```

4. Once the deployment is complete, you can use the assigned URL as your proxy server address, along with the port number you configured.

## Configuration

The Squid proxy server is configured using the `squid.conf` file. You can modify this file to customize the behavior of the proxy server according to your needs.

## Usage

To use the Fly.io Proxy, configure your application or service to use the assigned URL and port number as the proxy server address.

## License

This project is licensed under the [MIT License](LICENSE).