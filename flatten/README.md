# Flatten array

Contains two different algorithms to flatten array

## Algorithms

### Recursion flatten

Using recursion to flatten an array. Can be used in production.

### Eval flatten

Using `inspect` to flatten an array. Was tested only with integer.

## Usage

```ruby
# add lib to include path
$LOAD_PATH.unshift File.expand_path('lib', __FILE__)
require 'flatten/recursion'
# or
require 'flatten/eval'

class MyClass1
  using Flatten::Recursion

  def flatten_array_with_recursion
    [1, [2]].flatten
  end
end

class MyClass2
  using Flatten::Eval

  def flatten_array_with_eval
    [1, [2]].flatten
  end
end
```

## Tests

    $ script/test
