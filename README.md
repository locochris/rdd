rdd
===

[![Build Status](https://travis-ci.org/locochris/rdd.png)](https://travis-ci.org/locochris/rdd)
[![Dependency Status](https://gemnasium.com/locochris/rdd.png)](https://gemnasium.com/locochris/rdd)

Installation
---

```
gem install rdd
```

# Usage

* create a `spec/readme_spec.rb` spec file

``` ruby
require 'rdd/rspec'

describe_readme(File.expand_path('../../../README.md', __FILE__))
```

* run the spec

```
rspec -cfn spec/readme_spec.rb
```

# Example Usages
---

### Example: First example
``` ruby
p 1 + 1
# => 2
```

### Example: Second example
``` ruby
a = 6
b = 7
p a + b
# => 13
p a * b
# => 42
```

