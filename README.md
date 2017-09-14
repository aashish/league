# League

A ruby library/gem for generating ranking file from organised data in input file. The input is well formed text file. This gem will parse the provided sample-input.txt file by passing name on the command line. Output the correct result via stdout to the console.

The input contains results of games, one per line. See sample-input.txt for details. The output wil be ordered from most to least points, following the format specified in expected-output.txt.

This gem will not be handling malformed input files.

## Installation

Install it yourself as:

    $ gem install league

## Usage

League can be used from the command line or as part of a Ruby web framework. You can run as

    league sample-input.txt


## Custom script

You can write your own script to process `sample-input.txt` file. Create file `generate_result.rb` and add following code 

    require 'league'

    # Read sample-input.txt
    league = League::Soccer.new(ARGV.first)
    
    # Parse the file, process and display ranks to console
    league.result

Run as

    $ generate_result.rb sampe-input.txt

## Output

    $ generate_result.rb sample-input.rb
    Please find the teams with ranks of the league below:
    1. Tarantulas 6 pts
    2. Lions 5 pts
    3. FC Awesome 1 pts
    4. Snakes 1 pts
    5. Grouches 0 pts

## Contributing

1. Fork it ( https://github.com/[my-github-username]/league/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
