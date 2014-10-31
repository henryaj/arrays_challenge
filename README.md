| [*Makers Academy*](http://www.makersacademy.com) | Week 4 |
| ------------------------------------------------ | ------ |

# Arrays Challenge

Weekly challenge from week four at Makers Academy.

Our task was to rewrite Ruby's `inject` method, either by reopening the `Array` class and monkey-patching, or by subclassing `Array`. We had to use RSpec testing throughout.

I opted to reopen `Array` and add a new method to it – `injector` – which handles calls with a symbol:

```ruby
array.injector(:+)
```

–and with an index and a block:

```ruby
array.injector(0) { |mem, x| mem + x }
```
