# Str::Filter

Garbage in, goodness out...

[![Build Status](https://travis-ci.org/tscornpropst/Str-Filter.svg?branch=master)](https://travis-ci.org/tscornpropst/Str-Filter)
[![Coverage Status](https://coveralls.io/repos/tscornpropst/Str-Filter/badge.png)](https://coveralls.io/r/tscornpropst/Str-Filter)

## DESCRIPTION

Str::Filter is a collection of common routines for processing mainly input data but also works to filter outbound data. These filters are intended to be called in high volume environments so, there is not a lot of handing data back and forth. These subs work on the actual value passed so, beware, your data WILL be transformed.

There are additional filtering capabilities. See `perldoc Str::Filter`.

Feel free to submit requests for additional features/filters.

## USAGE

```
use Str::Filter qw(:ALL);

sub filtration {
    filter_leading_whitespace( $_[0] );
    filter_trailing_whitespace( $_[0] );
    filter_collapse_whitespace( $_[0] );
}

filtration($input);

# cleansed, no more whitespace
print "input\n";

```

## INSTALL

To install this module, run the following commands:

```
  perl Makefile.PL
  make
  make test
  make install
```

Copyright (C) 2005 - 2014, Trevor S. Cornpropst
