require 'mocha-cakes'
assert = require 'assert'

inputFile = require '../src/input_file'

Feature 'Input file tests', ->

  Scenario 'Get input file from fixtures', ->

    users = null

    Given 'Read file', (done) ->
      inputFile.getCsvFile "#{__dirname}/fixtures/exampleOfInput.csv", (err, returnedUsers) ->
        if err then return done err
        users = returnedUsers
        done()

    Then 'Check users', ->
      assert.ok users.length is 4
