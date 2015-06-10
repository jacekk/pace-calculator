require 'moment-duration-format'
moment = require 'moment'


class PaceCalc

	normalizeDistance = (distance)->
		if typeof distance isnt 'string'
			distance = distance.toString()
		distance = distance.replace ',', '.'
		parseFloat distance

	timeToSeconds = (time)->
		if time.split(':').length is 1
			time = "00:#{time}"
		if time.split(':').length is 2
			time = "00:#{time}"
		moment.duration(time).asSeconds()

	getPace: (time, distance)->
		seconds = timeToSeconds(time)
		kilometres = normalizeDistance(distance)
		pace = seconds / kilometres / 60

		paceMinutes = Math.floor pace
		paceSeconds = pace - paceMinutes
		paceSeconds = Math.round paceSeconds * 60

		moment.duration({
			minutes: paceMinutes
			seconds: paceSeconds
		}).format('m:ss')

	getDistance: (pace, time)->
		'@todo'

	getTime: (distance, pace)->
		'@todo'

module.exports = PaceCalc
