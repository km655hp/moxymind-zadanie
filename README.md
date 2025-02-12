# Steps to run it locally
1. Instal Python
- https://www.python.org/downloads/

2. Install Robot Framework
- For more details see Robot Framework documentation https://robotframework.org/?tab=1#getting-started
- install command: 
    - pip install robotframework
- check if successfully installed
    - robot --version

3. Install Selenium Library
- pip install robotframework-seleniumlibrary

4. Run tests
- to execute all test cases use command:
    - robot selenium/Tests
- to extecute specific test suite use command:
    - robot selenium/Tests/LoginTestSuite.robot