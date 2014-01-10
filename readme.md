#Split Off Ruby Hashes
A little complemtent to ActiveSupport's slice. With this method you can quickly create a subhash and pass it to a method as an argument. Your original hash will contain only those keys/values that you have not split off.

## Installation

    gem install 'split_off'

## Usage

    require 'split_off'

    hash = {one: 1, two: 2, three: 3, zero: nil}
    hash.split_off!(:one, :two, :zero) # => {:one=>1, :two=>2}
    hash # => {:three => 3}

