# Refactoring Challenge

There is a simple ruby file `order_report.rb`. Please refactor this file. Of course, you can create new files or directories if you want.


# Before starting

Please run the below command on console.
```
$ bundle
```

# Execute Test

```
$ bundle exec rspec spec
```

______

# Refactoring steps

I've mainly validated the code to SOLID principles

## Single responsibility principle
That was the most violated rule, code contained one main class handling almost all responibilites, I have extracted the code to two new Modules, one for Range filtering, and one for Amount summation

## Open/Closed principle

Consider the following lines from the original code

```ruby
orders_within_range.each do |order|
  sum += order.amount
end
```

This also applied for the date range picker class, regarding the field containing date to compare with

## Other

* Copied the created modules, and the class Order, to separeted file, one for each.