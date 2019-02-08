# Web-testing-cucumber

### Description
I have created a cucumber-based testing framework using Gherking syntax to test the 'https://www.bbc.co.uk' website, specifically the login page. I have taken a POM approach by including separate pages for the homepage and login page which allows the tests I create to be more reusable and maintainable in the future. It also ensures a DRY approach to coding. I have created UI tests that check whether the error messages that appear on screen for an end user for different scenarios are correct using capybara.

### Languages
Ruby

### How to download
1. Copy/Clone the URL on GitHub
2. Open selected text editor
3. In selected text editor, open up in-built terminal and type 'git clone' followed by the URL copied from GitHub 

### How to run tests
1. Open up terminal in cloned repository
3. Bundle install 
4. Use ```gem install cucumber``` if not already installed
2. Run ```'cucumber'``` in terminal

### Challenges
1. Creating instance variables and attribute accessors to store the error message string and then using those variables within the tests
2. Creating a POM

### Learning points
1. Better understanding of how to apply the gherkin syntax within cucumber in order to create UI tests
2. Greater knowledge of storing strings within attribute accessors and applying them to the UI tests 
3. How to target specific elements within a web page using IDs