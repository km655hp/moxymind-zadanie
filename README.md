# Steps to run it locally
1. Install **Python** 3.12.2
- https://www.python.org/downloads/

2. Install **Robot Framework**
- For more details see Robot Framework documentation https://robotframework.org/?tab=1#getting-started
- install command: 
    - _pip install robotframework_
- check if successfully installed
    - _robot --version_

3. Install **Selenium Library**
- _pip install robotframework-seleniumlibrary_

4. Run tests
- to execute all test cases use command:
    - _robot selenium/Tests_
- to extecute specific test suite use command:
    - _robot selenium/Tests/LoginTestSuite.robot_
