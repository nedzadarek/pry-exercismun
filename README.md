# Pry::Exercismun version 0.0.1

Unofficial commands useful while working with exercism.io.  
The commands range from testing to fetching next exercises.  
Any version smaller than 1.0.0 is considered as alpha, beta, not-stabble or just NOT YET tested.


## Installation

Add this line to your application's Gemfile:

    gem 'pry-exercismun'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pry-exercismun

## Usage

After you install it you should be able to run commands after you run pry.
Every commands has 2 forms:

* longer: `exercism-submit`
* shorter: `esubmit`
 
There are following commands:

* [exercism-fetch](#efetch)
* [exercism-submit](#esubmit)
* [exercism-test](#etest)


### <a name="efetch"></a>exercism-fetch

Fetch current exercises.

    [1] pry(main)> efetch
    ruby - leap
    javascript - bob
    elixir - bob
    clojure - bob
    python - bob
    haskell - bob
    objective-c - bob
    scala - bob
    Exercises written to D:\programowanie\Ruby\exercism.io

### <a name="esubmit"></a>exercism-submit

Submit your exercise to exercism.io.

If you are in the directory of your submission file(for example you are in `/bob/`) and
your directory is the same as your exercise(`/bob` and `bob.rb`) you simply run:

    exercism-submit

If directory name is not the same as submission file(Directory: `/nucleotide-count`, submission file: `dna.rb`)
you must give file name(without `rb`)

    exercism-submit dna
    
In last case, when you are not in the directory of your submission file you must provide path:

    exercism-submit ruby/nucleotide-count/dna

### <a name="etest"></a>exercism-test

Run test file.
The above conditions for `exercism-submit` apply also for `exercism-test`:

    exercism-test
    exercism-test nucleotide-count
    exercism-test ruby/nucleotide-count/nucleotide-count

In most cases, directory name is the same as test file(with "_test.rb" at the end) so you can simply use first command

    exercism-test
    
    
## License:

I don't like long licenses but license of *exercism.io* tells to use this license.
Full copy of license in "LICENSE.txt"



GNU Affero General Public License

Copyright (C) 2013 Darek Nêdza, nedzadarek@gmail.com

This program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more details.