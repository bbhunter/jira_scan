# coding: utf-8
#
# This file is part of JiraScan
# https://github.com/bcoles/jira_scan
#

Gem::Specification.new do |s|
  s.name        = 'jira_scan'
  s.version     = '0.0.6'
  s.required_ruby_version = '>= 2.0.0'
  s.date        = '2023-01-30'
  s.summary     = 'Jira scanner'
  s.description = 'A simple remote scanner for Atlassian Jira'
  s.license     = 'MIT'
  s.authors     = ['Brendan Coles']
  s.email       = 'bcoles@gmail.com'
  s.files       = ['lib/jira_scan.rb']
  s.homepage    = 'https://github.com/bcoles/jira_scan'
  s.executables << 'jira-scan'

  s.add_dependency 'terminal-table', '~> 3.0'
  s.add_dependency 'logger', '~> 1.4'
end
