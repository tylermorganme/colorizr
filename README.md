## Overview
This gem extends the String class by adding functions that will add various colors to output text.

## Usage
**Class methods**

- `String.colors` lists symbols of all available colors

- `String.sample_colors` outputs a short sample of each color

**Color Methods**

Each color has its own method that can be used on any string (e.g. if you want to output a string in red you could use the `.red` method)

Example:
```
test_string = "a string"
puts test_string.blue
```

**Available Colors**
All of these colors can be called as methods on any string.
- red
- green
- yellow
- blue
- pink
- light_blue
- white
- light_grey
- black

## Installation
- Download this repo.
- Run gem `install colorizr`
- Include colorizr in your project by adding the line `require 'colorizr'`

For more information about install gems check out [this link](http://ruby.about.com/od/advancedruby/a/gitgem.htm)
