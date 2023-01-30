# JiraScan

## Description

JiraScan is a simple remote scanner for Atlassian Jira.

## Installation

Install from RubyGems.org:

```
gem install jira_scan
```

Install from GitHub:

```
git clone https://github.com/bcoles/jira_scan
cd jira_scan
bundle install
gem build jira_scan.gemspec
gem install --local jira_scan-0.0.6.gem
```

## Usage (command line)

```
% jira-scan -h
Usage: jira-scan <url> [options]
    -u, --url URL                    Jira URL to scan
    -s, --skip                       Skip check for Jira
    -i, --insecure                   Skip SSL/TLS validation
    -v, --verbose                    Enable verbose output
    -h, --help                       Show this help
```

## Usage (ruby)

```ruby
#!/usr/bin/env ruby
require 'jira_scan'
url = 'https://jira.example.local/'
JiraScan::detectJiraDashboard(url)                 # Check if a URL is Jira using Dashboard page
JiraScan::detectJiraLogin(url)                     # Check if a URL is Jira using Login page
JiraScan::devMode(url)                             # Check if dev mode is enabled
JiraScan::userRegistration(url)                    # Check if user registration is enabled
JiraScan::userServiceDeskRegistration(url)         # Check if Service Desk user registration is enabled
JiraScan::userPickerBrowser(url)                   # Check if User Picker Browser is accessible
JiraScan::restUserPicker(url)                      # Check if REST User Picker is accessible
JiraScan::restGroupUserPicker(url)                 # Check if REST Group User Picker is accessible
JiraScan::viewUserHover(url)                       # Check if View User Hover is accessible
JiraScan::metaInf(url)                             # Check if META-INF contents are accessible
JiraScan::getVersionFromDashboard(url)             # Retrieve Jira version from Dashboard page
JiraScan::getVersionFromLogin(url)                 # Retrieve Jira version from Login page
JiraScan::getServerInfo(url)                       # Retrieve Jira software information
JiraScan::getGadgets(url)                          # Retrieve list of installed gadgets
JiraScan::getLinkedApps(url)                       # Retrieve list of linked applications
JiraScan::getDashboards(url)                       # Retrieve list of dashboards
JiraScan::getPopularFilters(url)                   # Retrieve list of popular filters
JiraScan::getResolutions(url)                      # Retrieve list of resolutions
JiraScan::getProjects(url)                         # Retrieve list of projects
JiraScan::getProjectCategories(url)                # Retrieve list of project categories
JiraScan::getUsersFromUserPickerBrowser(url)       # Retrieve list of first 1,000 users from User Picker Browser
JiraScan::getFieldNamesQueryComponentDefault(url)  # Retrieve list of field names from QueryComponent!Default.jspa
JiraScan::getFieldNamesQueryComponentJql(url)      # Retrieve list of field names from QueryComponent!Jql.jspa
```

