*** Settings ***
Resource          /Users/Shipra/PycharmProjects/Testing-T/Automation/testsuite/Resources/page_objects/variables.robot
Library           String


*** Keywords ***
Login as a test user
| |  Open Browser                 | ${web_url}                                        | ${browser}                                                        |
| |  wait until page contains     | Log In                                            |                                                                   |
| |  page should contain element  | css=#login                                        |                                                                   |
| |  click element                | css=#login                                        |                                                                   |
| |  input text                   | css=#credential_email                             | ${email}                                                          |
| |  click element                | css=#credential_password                          |                                                                   |
| |  input password               | css=#credential_password                          | ${pass}                                                           |
| |  click element                | name=commit                                       |                                                                   |
| |  wait until page contains     | TINTs                                             |                                                                   |


Adding a new tint
| |  wait until page contains element  | jquery=i.icon-white.fas.fa-plus            |                                         | |
| |  click element                     | jquery=i.icon-white.fas.fa-plus            |                                         | |
| |  Set Browser Implicit Wait         | 5s                                         |                                         | |
| |  Set Focus To Element              | css=#newTintUsername                       |                                         | |
| |  press key                         | css=#newTintUsername                       | ${tintName}                             | |
| |  click element                     | jquery=.btn-primary.create-tint-check-name |                                         | |
| |  Set Browser Implicit Wait         | 10s                                        |                                         | |
| |  Set Focus To Element              | css=textarea[type="text"].question-input   |                                         | |
| |  press key                         | css=textarea[type="text"].question-input   | Goal                                    | |
| |  Set Browser Implicit Wait         | 20s                                        |                                         | |
| |  click element                     | jquery=.btn.btn-link.pull-left:nth(0)      |                                         | |
| |  Set Browser Implicit Wait         | 30s                                        |                                         | |
| |  wait until page contains element  | css=a[type="button"] > i.fab.fa-instagram  |                                         | |
| |  wait until page contains element  | jquery=.content-types > h3                 |                                         | |
| |  Element Should Contain            | jquery=.content-types > h3                 | Types of content you can source from... | |

Delete created tint
| |  Mouse Over                        | css=#dashboards_dropdown_toggle                                              |  |
| |  Wait Until Element Is Visible     | css=a[href="/admin/tints"]                                                   |  |
| |  click element                     | css=a[href="/admin/tints"]                                                   |  |
| |  wait until page contains element  | jquery=.dropdown.simple-dropdown > button.btn.btn-link > i.fas.fa-cog        |  |
| |  click element                     | jquery=.dropdown.simple-dropdown > button.btn.btn-link > i.fas.fa-cog        |  |
| |  click element                     | jquery=.dropdown-menu > li:nth-of-type(6) > a[href="#"].settings-item-remove |  |
| |  Set Browser Implicit Wait         | 20s                                                                          |  |
| |  Set Focus To Element              | jquery=i.fas.fa-check:nth(0)                                                 |  |
| |  Wait Until Element Is Visible     | jquery=i.fas.fa-check:nth(0)                                                 |  |
| |  Click element                     | jquery=i.fas.fa-check:nth(0)                                                 |  |

Add instafeed
| |  Page Should Contain Element    | css=a[type="button"] > i.fab.fa-instagram                                                                                           |         |
| |  Click Element                  | css=a[type="button"] > i.fab.fa-instagram                                                                                           |         |
| |  Set Focus To Element           | css=input[type="text"].edit-content-in-modal-hashtag                                                                                |         |
| |  Wait Until Element Is Visible  | css=input[type="text"].edit-content-in-modal-hashtag                                                                                |         |
| |  Set Browser Implicit Wait      | 30s                                                                                                                                 |         |
| |  press key                      | css=input[type="text"].edit-content-in-modal-hashtag                                                                                | Trump   |
| |  Click Element                  | css=button[type="button"].btn-add.btn.btn-primary.btn-lg.btn-block.edit-content-in-modal-hashtag-connect > i.icon-white.fas.fa-plus |         |
| |  Select Window                  | Instagram                                                                                                                           |         |
| |  press key                      | id=id_username                                                                                                                      | tintqa  |
| |  press key                      | id=id_password                                                                                                                      | ${pass} |
| |  Click Element                  | class=button-green                                                                                                                  |         |
| |  close browser                  |                                                                                                                                     |         |

Edit tint
| |  Login as a test user                 |                                  |  |
| |  wait until page contains element     | css=a[href="/t/randomtint/edit"] |  |
| |  Click Element                        | css=a[href="/t/randomtint/edit"] |  |
| |  Set Browser Implicit Wait            | 20s                              |  |

Delete current tint
| |  Login as a test user              |                                                                              |  |
| |  wait until page contains element  | jquery=.dropdown.simple-dropdown > button.btn.btn-link > i.fas.fa-cog        |  |
| |  click element                     | jquery=.dropdown.simple-dropdown > button.btn.btn-link > i.fas.fa-cog        |  |
| |  click element                     | jquery=.dropdown-menu > li:nth-of-type(6) > a[href="#"].settings-item-remove |  |
| |  Set Browser Implicit Wait         | 20s                                                                          |  |
| |  Set Focus To Element              | jquery=i.fas.fa-check:nth(0)                                                 |  |
| |  Wait Until Element Is Visible     | jquery=i.fas.fa-check:nth(0)                                                 |  |
| |  Click element                     | jquery=i.fas.fa-check:nth(0)                                                 |  |


Email Verification
| |  Open Mailbox  |  host=imap.gmail.com  |  user=tintqa@gmail.com    password=fivepass  |  |
| |  ${LATEST} =   |  Wait For Email       |  sender=support@tintup.com    timeout=300    |  |
| |  ${inx} =      |  Get Links From Email |  ${LATEST}                                   |  |
| |  Log   ${inx}  |                       |                                              |  |
| |  ${HTML} =     |  Open Link From Email |  ${LATEST}                                   |  |
| |  Close Mailbox |                       |                                              |  |

Horizontal Slider
| |  Edit tint                         |                                                                                                                                                |  |
| |  Page Should Not Contain Element   | jquery=.content-types > h3                                                                                                                     |  |
| |  wait until page contains element  | jquery=a.edit-accordion-personalize                                                                                                            |  |
| |  click element                     | jquery=a.edit-accordion-personalize                                                                                                            |  |
| |  Wait Until Element Is Visible     | css=#theme-choices > label.personalize-theme-basic-label:nth-of-type(6)                                                                        |  |
| |  click element                     | css=#theme-choices > label.personalize-theme-basic-label:nth-of-type(6) > input[name="personalize-theme-basic"].personalize-theme-basic.-theme |  |
| |  Wait Until Element Is Visible     | jquery=iframe#outerFrame i.fas.fa-angle-left                                                                                                   |  |

Delete tint
| |  wait until page contains element  | jquery=.dropdown.simple-dropdown > button.btn.btn-link > i.fas.fa-cog        |  |
| |  click element                     | jquery=.dropdown.simple-dropdown > button.btn.btn-link > i.fas.fa-cog        |  |
| |  click element                     | jquery=.dropdown-menu > li:nth-of-type(6) > a[href="#"].settings-item-remove |  |
| |  Set Browser Implicit Wait         | 20s                                                                          |  |
| |  Set Focus To Element              | jquery=i.fas.fa-check:nth(0)                                                 |  |
| |  Wait Until Element Is Visible     | jquery=i.fas.fa-check:nth(0)                                                 |  |
| |  Click element                     | jquery=i.fas.fa-check:nth(0)                                                 |  |
