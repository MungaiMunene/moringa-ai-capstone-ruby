### Example 1: CLI Greeting Tool
**File:** `src/greet.rb`

```ruby
puts "What is your name?"
name = gets.chomp
puts "Hello, #{name}! Welcome to Ruby."

How to run:
ruby src/greet.rb

Expected output:

What is your name?
Mungai
Hello, Mungai! Welcome to Ruby.

Example 2: Mini Web API with Sinatra
File: src/app.rb
require 'sinatra'
require 'json'

set :server, :webrick

get '/hello' do
  "Hello from your Ruby API!"
end

get '/greet' do
  content_type :json
  name = params['name'] || 'World'
  { message: "Hello, #{name}!", timestamp: Time.now }.to_json
end

How to run: 
bundle exec ruby src/app.rb

Test endpoints:

http://localhost:4567/hello →

Hello from your Ruby API!

http://localhost:4567/greet?name=Mungai 
 {"message":"Hello, Mungai!","timestamp":"2025-09-09 18:45:23 +0300"}

 AI Prompt Journal

Prompt 1

Prompt: “Give me step-by-step instructions to install Ruby on macOS”
AI Response (summary): Recommended Homebrew install and PATH setup.
Reflection: Solved permission issues by moving from system Ruby (2.6) to Homebrew Ruby (3.4).

Prompt 2

Prompt: “Show me how to write and run a Hello World program in Ruby.”
AI Response (summary): Shared one-liner puts "Hello, World!".
Reflection: Verified Ruby environment was working.

Prompt 3

Prompt: “Help me build a CLI tool in Ruby that asks for a name and greets the user.”
AI Response (summary): Provided code using gets.chomp.
Reflection: Created first interactive script successfully.

Prompt 4

Prompt: “How do I build a minimal Sinatra API in Ruby?”
AI Response (summary): Shared sample get '/hello' route and explained running with Bundler.
Reflection: Learned how Ruby frameworks structure endpoints.

Prompt 5

Prompt: “Fix WEBrick handler error in Sinatra”
AI Response (summary): Suggested adding bundle add webrick and set :server, :webrick.
Reflection: Solved missing server issue and got the app running.

Prompt 6

Prompt: “Address already in use on port 4567”
AI Response (summary): Showed how to check processes with lsof -i :4567 and kill them, or run on a new port.
Reflection: Learned how to manage port conflicts and restart the server cleanly.

References

	•	Ruby Official Documentation
	•	Sinatra: Up and Running
	•	Bundler Documentation
	•	WEBrick Ruby Docs
	•	Homebrew Ruby Formula
	•	Common fixes referenced from:
	•	StackOverflow threads on Bundler version mismatch
	•	Developer blog posts on Sinatra with Ruby 3+
	•	GitHub issues on port conflicts in WEBrick

⸻
