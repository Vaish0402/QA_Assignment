 # QA Intern Assignment –Automation Testing for APIs

 ## Project Overview
    -This project is a demonstration of **API Test Automation** using the **Robot Framework** and the **ReqRes API** (`https://reqres.in/`), a public RESTful service for testing.  
    -The goal of this assignment is to validate different HTTP methods (**GET**, **POST**, and **PUT**) using automated test cases that verify both **positive** and **negative** scenarios.


## Project Structure
    QA_Assignment/
    ├── tests/
    │ └── api_tests.robot
    ├── requirements.txt
    └── README.md

    **File Descriptions:**
    - **tests/api_tests.robot** → Main test suite containing all API test cases.  
    - **requirements.txt** → List of Python dependencies required for execution.  
    - **README.md** → Project documentation and usage guide.  

##  Setup Instructions
    ## Prerequisites
        Ensure the following are installed on your system:
            - **Python 3.10+**
            - **pip** (Python package manager)
            - **Internet connection** (to access the ReqRes API)

    # 1. Install Required Libraries
        In your project directory, run:
            -pip install robotframework robotframework-requests

        Or, if you prefer using the requirements.txt file, run:
            -pip install -r requirements.txt



    # 2.Execute the Test Suite
        Step 1: Run all test cases with:
            robot tests/api_tests.robot
  
        Step 2: View Test Reports:
            After execution, Robot Framework automatically generates the following files:
                -output.xml – Raw test output
                -log.html – Detailed execution log
                -report.html – Summary report with pass/fail results

## TESTING PROCEDURE

    1. **Environment Setup**  
        - Installed required libraries: `robotframework` and `robotframework-requests`.  
        - Configured a Robot Framework test suite (`api_tests.robot`) using **RequestsLibrary**.  
        - Established a session with the base URL `https://reqres.in` for API interaction.

    2. **Test Case Design**  
        - Created individual test cases for **GET**, **POST**, and **PUT** methods.  
        - Covered both **positive** and **negative** scenarios, such as missing bodies and invalid endpoints.  
        - Added assertions to validate **HTTP status codes** and **response structure**.

    3. **Execution**  
        - Ran the test suite using:
            robot tests/api_tests.robot
    
        - Robot Framework automatically generated output files:
            - `output.xml` – Raw results  
            - `log.html` – Detailed step log  
            - `report.html` – Summary of all test cases  

    4. **Validation and Reporting**  
        - Verified that all responses matched expected outcomes (200/201 codes).  
        - Confirmed that invalid requests were handled gracefully.  
        - Reviewed generated reports to ensure all **6 test cases passed successfully**


 
