# linear1
A gem that does linear algebra to an extent
## Installation

|Method|Runtime|Development|
|:----:|:-----:|:---------:|
|`Gemfile`|`gem 'linear1'`| `gem 'linear1', group: :development`|
|RubyGems|`gem install linear1`    |   `gem install linear1 --development`    |
|`.gemspec`|`gem.add_runtime_dependency "linear1"`|`gem.add_development_dependency "linear1"`  |

## Usage
`$ linear1 help`

`$ linear1 graph _equation_`

`$ linear1 display _equation_`

`$ linear1 execute x _equation_`

### equations
Replace `_equation_` with one of these equations:

`standard A B C`

`point-slope slope x1 y1`

`slope-intercept slope y_intercept`

`function [slope = 1] [y_intercept = 0] [power = 1]` Not working

`direct-variation constant_of_variation` Not implemented

## Badges
[![Build Status](https://travis-ci.org/Zrp200/linear1.svg?branch=master)](https://travis-ci.org/Zrp200/linear1)
[![Code Climate](https://codeclimate.com/github/Zrp200/linear1/badges/gpa.svg)](https://codeclimate.com/github/Zrp200/linear1)
[![Test Coverage](https://codeclimate.com/github/Zrp200/linear1/badges/coverage.svg)](https://codeclimate.com/github/Zrp200/linear1)
