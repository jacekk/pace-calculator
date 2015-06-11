# Runners calculator


### Requirements

* Node ~0.10
* Npm ~2.10
* CoffeeScript ~1.9.0

### Aliases (for Ubuntu-like OSes)

* alias pace-from-time-and-dist="coffee ~/path/to/app.coffee pace"
* alias time-from-dist-and-pace="coffee ~/path/to/app.coffee time"
* alias dist-from-pace-and-time="coffee ~/path/to/app.coffee distance"

### Usage

```ruby
$ pace-from-time-and-dist 19:59 5.12
  => 3:54
$ time-from-dist-and-pace 42.195 4:30
  => 3:09:53
$ dist-from-pace-and-time 3:45 10:00
  => 2.67
```
