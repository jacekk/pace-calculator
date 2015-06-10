assert = require 'assert'
PaceCalc = require '../pace-calc'

describe 'pace-calc', ->

	calc = null

	testData = [
		{ time: '4:00', dist: 1, pace: '4:00' }
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

	return
