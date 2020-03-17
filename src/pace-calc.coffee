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
		paceSeconds = (pace - paceMinutes) * 60

		moment.duration({
			minutes: paceMinutes
			seconds: Math.round paceSeconds
		}).format('m:ss')

	getDistance: (pace, time, precision)->
		timeSecons = timeToSeconds(time)
		paceSecons = timeToSeconds(pace)

		dist = timeSecons / paceSecons
		dist.toFixed(precision || 2)

	getTime: (distance, pace)->
		kilometres = normalizeDistance(distance)
		paceInSeconds = timeToSeconds(pace)
		timeInSeconds = paceInSeconds * kilometres

		timeMinutes = Math.floor timeInSeconds / 60
		timeSeconds = timeInSeconds - timeMinutes * 60

		format = if timeMinutes >= 60 then 'h:mm:ss' else 'm:ss'

		moment.duration({
			minutes: timeMinutes
			seconds: Math.round timeSeconds
		}).format(format)

module.exports = PaceCalc
