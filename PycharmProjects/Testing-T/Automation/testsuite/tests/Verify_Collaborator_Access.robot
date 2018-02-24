*** Settings ***
Resource         /Users/Shipra/PycharmProjects/Testing-T/Automation/testsuite/Resources/page_objects/common_settings.robot

*** Test Cases ***
Email collaborator
| |  [Tags]                           | Ok                                                                    |                           |                   |
| |  Login as a test user             |                                                                       |                           |                   |
| |  Adding a new tint                |                                                                       |                           |                   |
| |  Mouse Over                       | css=#dashboards_dropdown_toggle                                       |                           |                   |
| |  Wait Until Element Is Visible    | css=a[href="/admin/collaborators"]                                    |                           |                   |
| |  click element                    | css=a[href="/admin/collaborators"]                                    |                           |                   |
| |  wait until page contains element |  jquery=i.icon-white.fas.fa-user-plus                                  |                           |                   |
| |  click element                    | jquery=i.icon-white.fas.fa-user-plus                                  |                           |                   |
| |  Set Focus To Element             | css=#enterprise_account_add_email                                     |                           |                   |
| |  Wait Until Element Is Visible    | css=#enterprise_account_add_email                                     |                           |                   |
| |  press key                        | css=#enterprise_account_add_email                                     | ${Collemail}              |                   |
| |  click element                    | css=table.table > tbody > tr:nth-of-type(4) > td > .checkbox > label  |                           |                   |
| |  click element                    | jquery=.btn-primary.btn-lg.collaborator-account-submit                |                           |                   |
| |  click element                    | jquery=.btn.btn-primary.btn-lg.collaborator-custom-field-send         |                           |                   |
| |  Open Mailbox                     | host=imap.gmail.com                                                   | user=tintqa@gmail.com     | password=fivepass |
| |  ${LATEST} =                      | Wait For Email                                                        | sender=support@tintup.com | timeout=300       |
| |  @{inx} =                         | Get Links From Email                                                  | ${LATEST}                 |                   |
| |  Close Mailbox                    |                                                                       |                           |                   |
| |  Open Browser                     | @{inx}[1]                                                             | ${browser}                |                   |
| |  wait until page contains element |  id=credential_password                                                |                           |                   |
| |  click element                    | id=credential_password                                                |                           |                   |
| |  input text                       | id=credential_password                                                | ${pass}                   |                   |
| |  click element                    | id=credential_password_confirmation                                   |                           |                   |
| |  input password                   | id=credential_password_confirmation                                   | ${pass}                   |                   |
| |  click element                    | name=commit                                                           |                           |                   |
| |  wait until page contains         | TINTs                                                                 |                           |                   |
| |  Page Should Not Contain          | randomtint                                                            |                           |                   |
| |  close browser                    |                                                                       |                           |                   |
| |  Login as a test user             |                                                                       |                           |                   |
| |  Delete tint                      |                                                                       |                           |                   |



