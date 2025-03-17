# ChalkRuby - Ruby Client for Chalk

[![Gem Version](https://badge.fury.io/rb/chalk_ruby.svg)](https://badge.fury.io/rb/chalk_ruby)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)

A Ruby client library for [Chalk](https://chalk.ai/), a feature engineering platform for machine learning and data applications.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chalk_ruby'
```

And then execute:

```bash
bundle install
```

Or install it directly:

```bash
gem install chalk_ruby
```

## Quick Start

```ruby
# Create a client with credentials
client = ChalkRuby::Client.create(
  'my-client-id',
  'my-client-secret',
  'my-environment-id' # Optional, can also use CHALK_ACTIVE_ENVIRONMENT env var
)

# Query features
results = client.query(
  input: { 'user.id': 'my-user-id' },
  output: %w(user.id user.name user.email),
  query_name: 'user_profile' # Optional: for tracking and monitoring
)

# Access feature values
puts results['user.name']
```

## Authentication

Authentication can be provided in multiple ways:

1. Directly in the client constructor:
   ```ruby
   client = ChalkRuby::Client.create('my-client-id', 'my-client-secret')
   ```

2. Using environment variables:
   ```
   CHALK_CLIENT_ID=my-client-id
   CHALK_CLIENT_SECRET=my-client-secret
   CHALK_ACTIVE_ENVIRONMENT=my-environment # Optional
   ```
   ```ruby
   client = ChalkRuby::Client.create
   ```

## Advanced Usage

### Query Options

The `query` method supports several options:

```ruby
client.query(
  input: { 'user.id': 'my-user-id' },
  output: %w(user.id user.name user.credit_score),
  now: Time.now,                      # Optional: time at which to evaluate the query
  staleness: { 'user.credit_score': '1d' }, # Optional: max staleness for cached features
  tags: { 'environment': 'production' },    # Optional: tags for resolver selection
  branch: 'my-feature-branch',        # Optional: route request to a specific branch
  correlation_id: 'request-123',      # Optional: ID for tracing in logs
  query_name: 'user_profile',         # Optional: semantic name for the query
  timeout: 5.0                        # Optional: timeout in seconds
)
```

### Configuration

Create a client with custom configuration:

```ruby
config = ChalkRuby::Config.new(
  client_id: 'my-client-id',
  client_secret: 'my-client-secret',
  environment: 'my-environment',
  query_server: 'https://custom-query-server.chalk.ai',
  api_server: 'https://custom-api.chalk.ai',
  additional_headers: { 'X-Custom-Header': 'value' }
)

client = ChalkRuby::Client.create_with_config(config)
```

## Requirements

- Ruby 2.7 or higher

## Version

Current version: `0.2.8`

## License

The Chalk Ruby Client is open-sourced software licensed under the [Apache 2.0 License](LICENSE).