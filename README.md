# Intro to RSpec

This is a simple Ruby calculator that has addition, subtraction, and multiplication calculating functionalities. It also allows you to clear or remove the last number inserted. The purpose of this calculator is to mimic a simple real-world object that many people are familiar with so you can learn RSpec by testing something you already know how to use.

## Using the Calculator

There is some code commented out at the bottom of the file. This is driver code, and should return `true` for everything you see if you run it.

To play with the calculator, load up irb (` $ irb `) and then:

```ruby
load 'calculator.rb'

calc = Calculator.new
calc.push(1)
calc.push(2)
calc.push(3)

calc.nums
# => [1, 2, 3]

calc.add
# => 6

calc.multiply
# => 6

calc.subtract
# => -4

calc.remove_last
# => [1, 2]

calc.clear
# => []
```

## Running the Calculator Tests

First, you will need to install RSpec. This requires RubyGems.

```
gem install rspec
```

Second, you will need to have Ruby 1.9.3 or greater. The tests currently pass with Ruby 2.0.0 and 1.9.3; I cannot guarantee functionality for any other version of Ruby.

To run the tests, type:

```
rspec calculator_spec.rb
```

This will return:

```
Caculator
  #multiply
    works
  #push
    adds new numbers
    accumulates numbers
    requires an argument
    does not accept more than 1 argument
  #nums
    should be nil on init

Finished in 0.00516 seconds
6 examples, 0 failures

Randomized with seed 21811
```

The test run order is randomized to help you spot any potential problems with your code or your test suite.

## Writing More Calculator Tests

The `calculator_spec.rb` file has a few contexts with no tests in them. You should write some! Here are some helpful resources:

* [Better Specs](http://betterspecs.org/) - comparison of good specs and bad specs
* [RSpec Expectations](http://rubydoc.info/gems/rspec-expectations/frames) - guides for using RSpec

Some things to keep in mind:

* Each test block (starts with `it 'should do this thing' do`) should contain only one assertion. Assertions are the lines that include `expect` (`expect(@calc.nums).to be_nil`).
* Anything in a `before` block is run before each test.
* Variables with an `@` symbol in front of them are instance variables and can be used throughout your file.
* This test file is intentionally not perfect. What tests are missing for `#push` and `#initialize`? Is there functionality missing from the Calculator itself? Can the tests be refactored?

## Adding New Functionality to the Calculator

Try added a divide function, returning an error if someone tries to add a string to the calculator, rounding, or other advanced functionality. Write your tests before you write your code!