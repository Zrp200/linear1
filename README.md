# linear
A gem that does linear algebra
## Installation

|  Method  |               Runtime           |               Development               |
|:--------:|:-------------------------------:|:---------------------------------------:|
|`Gemfile` |					`gem 'linear'`          |   `gem 'linear', group: :development`   |
| Terminal |         `gem install linear`    |   `gem install linear --development`    |
|`.gemspec`|`gem.add_runtime_dependency "linear"`|`gem.add_development_dependency "linear"`  |

## Usage
`$ linear help`

`$ linear graph` _equation_

`$ linear display` _equation_

`$ linear execute x` _equation_`

### equations
Replace _equation_ with one of these equations

`standard a b c`

`point-slope slope x y`

`function [slope = 1] [y_intercept = 0] [power = 1]`

## Badges
[![Build Status](https://travis-ci.org/Zrp200/linear.svg?branch=master)](https://travis-ci.org/Zrp200/linear)
[![Code Climate](https://codeclimate.com/github/Zrp200/linear/badges/gpa.svg)](https://codeclimate.com/github/Zrp200/linear)
[![Test Coverage](https://codeclimate.com/github/Zrp200/linear/badges/coverage.svg)](https://codeclimate.com/github/Zrp200/linear)
