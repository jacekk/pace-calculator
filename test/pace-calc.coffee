assert = require 'assert'
PaceCalc = require '../pace-calc'

describe 'pace-calc', ->

	calc = null

	testData = [
		{ time: '4:00', dist: 1, pace: '4:00' }
		{ time: '5:00', dist: 1.25, pace: '4:00' }
		{ time: '23:12', dist: 5.73, pace: '4:03' }
		{ time: '1:08:19', dist: 21.0975, pace: '3:14' }
		{ time: '2:15:17', dist: 42.195, pace: '3:12' }
	]

	beforeEach ->
		calc = new PaceCalc
		return

	it 'should return proper pace', ->
		for item in testData
			pace = calc.getPace(item.time, item.dist)
			assert.equal(pace, item.pace)
		return

	it 'should return proper distance', ->
		for item in testData
			distance = calc.getDistance(item.pace, item.time)
			assert.equal(distance, item.dist)
		return

	it 'should return proper time', ->
		for item in testData
			time = calc.getTime(item.dist, item.pace)
			assert.equal(time, item.time)
		return

	return
