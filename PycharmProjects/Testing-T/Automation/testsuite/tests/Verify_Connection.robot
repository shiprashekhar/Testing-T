*** Settings ***
Resource         /Users/Shipra/PycharmProjects/Testing-T/Automation/testsuite/Resources/page_objects/common_settings.robot

*** Test Cases ***
Adding a new connection
| |  [Tags]                               | Ok                                                       |                                                       |
| |  Login as a test user                 |                                                          |                                                       |
| |  Adding a new tint                    |                                                          |                                                       |
| |  Add instafeed                        |                                                          |                                                       |
| |  Edit tint                            |                                                          |                                                       |
| |  Page Should Not Contain Element      | jquery=.content-types > h3                               |                                                       |
| |  Delete current tint                  |                                                          |                                                       |



