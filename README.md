# Band Pass Filter

A company that makes digital audio workstation plugins. Create a filter that musicians apply to their tracks to change how they sound. Write a band pass filter for the company.

## Brief

- Takes three different inputs: music track to be filtered (array of frequencies as integers), lower limit (integer), upper limit (integer)
- Any frequency in array below lower limit will be moved to the lower limit
- Same with the upper limit

## Inputs => Outputs

[200], 100, 300 => [200]

[50], 100, 300 => [100]

[350], 100, 300 => [300]

[450, 600, 120, 250, 300], 200, 500 => [450, 500, 200, 250, 300]

[nil, 200], 100, 200 => raise error: 'input corrupted'

[], 100, 200 => raise error: 'no frequencies supplied'

[20, 1200] => [40, 1000] (upper and lower limits used default values)

## Defaults

default lower limit: 40
default upper limit: 1000