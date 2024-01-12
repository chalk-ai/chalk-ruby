## ChalkRuby Ruby

Ruby client for Chalk!

https://rubygems.org/gems/chalk_ruby

## Getting Started

First, install ChalkRuby Ruby API Client via the [RubyGems](https://rubygems.org/) package manager:

```bash
gem install chalk_ruby
```

Then, create a new client using your client ID and client secret:

```ruby
client = ChalkRuby::Client.create('my-client-id', 'my-client-secret')
results = client.query(
  input: { 'user.id': 'my-user-id' },
  output: %w(user.id user.name user.email)
)
```

## License

The Chalk Ruby API Client is an open-sourced software licensed under the [Apache 2 License](LICENSE.md).
