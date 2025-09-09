### Example 1: CLI Greeting Tool
**File:** `src/greet.rb`

```ruby
puts "What is your name?"
name = gets.chomp
puts "Hello, #{name}! Welcome to Ruby."

How to run 
ruby src/greet.rb

Expected output 

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

How to run 

bundle exec ruby src/app.rb

Test endpoints:
	•	http://localhost:4567/hello → Hello from your Ruby API!
	•	http://localhost:4567/greet?name=Mungai →

    {"message":"Hello, Mungai!","timestamp":"2025-09-09 18:45:23 +0300"}

    ---

### **AI Prompt Journal**
Go back and log the prompts you used. Example:

```markdown
#### Prompt 1
**Prompt:** "Give me step-by-step instructions to install Ruby on macOS"
**AI Response (summary):** Installed via Homebrew, updated PATH.
**Reflection:** Fixed permission issues by moving from system Ruby (2.6) to Homebrew Ruby (3.4).

#### Prompt 2
**Prompt:** "Show me how to write and run a Hello World program in Ruby."
**AI Response (summary):** Provided one-line `puts "Hello, World!"`.
**Reflection:** Confirmed Ruby setup works.

#### Prompt 3
**Prompt:** "Help me build a CLI tool in Ruby that asks for a name and greets the user."
**AI Response (summary):** Shared code with `gets.chomp`.
**Reflection:** First interactive script ran successfully.

#### Prompt 4
**Prompt:** "How do I build a minimal Sinatra API in Ruby?"
**AI Response (summary):** Shared `get '/hello'` and explained running with Bundler.
**Reflection:** Learned how Ruby frameworks structure endpoints.