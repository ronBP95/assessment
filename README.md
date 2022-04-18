# Salsify Technical Assessment

Note: The API was already updated by the time I had begun the exercise so I manipulated some of the product data to show that updates were made to the API.

<br>

**Reflection**

1. **How does your script work? (if not addressed in comments in source)**

**Required gems**

<ul>
<li>'net/ftp'</li>
<li>'crack'</li>
<li>'http'</li>
<li>'json'</li>
</ul>

- Using the CLI, you can run "ruby index.rb" and the script with all three functions will run.
  - For security reasons, you will be asked to enter in your username and password. (These are the FTP server account credentials that were provided as part of the exercise.)
  - After the following information has been entered, the script will continue and comments about the progress of the script will be made as each function executes.
  - For ease of access in testing each component, you may run "ruby convert.rb" or "ruby api_only.rb" to test individual features of the script. (after the first time index.rb has been run)
  - After the script has completed it's job, it will notify the user in the command line.

2. **What documentation, websites, etc did you consult in doing this assignment?**

- Please see the [Resources Used](#resource) section.

3. **What third-party libraries or other tools does the script use? How did you choose each library you used?**

- Please see the [Resources Used](#resource) section.

4. **How long did you spend on this exercise? If you had unlimited additional time to spend on this, how would you spend it and how would you prioritize each item?**

<ul>
<li>Learning Time: ~ 8-9 hours</li>
<li>Development Time: ~ 8-9 hours</li>
<li>Overall Time: ~ 20 hours +/- over the course of 4 days</li>
</ul>

5. **If you were to critique your code, what would you have to say about it?**

   Overall, I am very pleased with the result of my code. If given an unlimited time frame to complete the project, I would have liked to convert my XML file to JSON without the use of a gem, and I also would have liked to call upon methods in my index file without having to compile all of the code into one file. I am very happy with the way this script came out but I know that there is always room for improvement and optimization.

<br>

<h2 id="resource"> Resources Used </h2>

The first resource I referenced when learning Ruby for this assessment was a crash course in learning ruby. Ruby was learned over the course of a couple of days in preparation for completing the required task.

This was important as it helped by:

- Assisting in proper Ruby installation
- Teaching the proper syntax, usable datatypes, methods/functions

Link: [Ruby Tutorial for Beginners](https://www.youtube.com/watch?v=t_ispmWmdjY&t=10426s)

Link: [See the Repo I built for learning here!](https://github.com/ronBP95/ruby_assessment)

<br>

<h2>Function # 1 - Access the FTP server and download the file</h2>
<hr>
<br>

I referred to the link below to understand methods that worked with FTP. I eventually came across the getbinaryfile method which allows a user to pull data from a remote file to a local file.

Syntax and formatting came as a result of my learning experience from the "Ruby Tutorial for beginners".

_Reference Links_

- https://docs.ruby-lang.org/en/2.0.0/Net/FTP.html#method-i-getbinaryfile

<h2>Function # 2 - Convert the XML format of the product list into JSON format</h2>
<hr>
<br>

I initially assumed that there was a way to convert xml to json in Ruby that could be "hardcoded" but I came across a gem that was clean, efficient and easy to use (Gem: "Crack").

_Reference Links_

- https://stackoverflow.com/questions/1530324/ruby-xml-to-json-converter

<h2>Function # 3 - Use the Salsify API to update the products with the JSON you create in the above step</h2>
<hr>
<br>

Most of my experience working with PUT requests came from form data or button inputs in Express.js but I had access to a few great resources that greatly helped me in Ruby. There were a number of gems that helped in simplifying HTTP requests but I ultimately went with the gem "HTTP" because of the ease of access, great functionality, and clear/readable documentation.

_Reference Links_

- https://www.twilio.com/blog/5-ways-make-http-requests-ruby
- https://github.com/httprb/http/wiki
- https://stackoverflow.com/questions/5410682/parsing-a-json-string-in-ruby

Special Thanks

<hr>
<br>

_To my reviewer and the rest of the Salsify team:_
<br>
Thank you for your time and consideration for the position. I look forward to potentially meeting with the rest of the team and I am more than happy to elaborate on any issues or concerns with my Ruby script.

Best,
Ron
