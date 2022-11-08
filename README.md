# Pace calculator for runners


### Requirements

* Node [v18] - others not tested
* Yarn

### Aliases (for Ubuntu-like OSes)

* alias pace-from-time-and-dist="~/path/to/node_modules/.bin/coffee ~/path/to/app.coffee pace"
* alias time-from-dist-and-pace="~/path/to/node_modules/.bin/coffee ~/path/to/app.coffee time"
* alias dist-from-pace-and-time="~/path/to/node_modules/.bin/coffee ~/path/to/app.coffee distance"

### Usage

```ruby
$ pace-from-time-and-dist 19:59 5.12
  => 3:54
$ time-from-dist-and-pace 42.195 4:30
  => 3:09:53
$ dist-from-pace-and-time 3:45 10:00
  => 2.67
```
