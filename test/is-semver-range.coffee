describe 'is-semver-range', ->
  Given -> @subject = require '../lib/is-semver-range'

  describe 'not a range', ->
    context 'all numbers', ->
      Then -> @subject('2.0.0').should.be.false()

    context 'with equal sign', ->
      Then -> @subject('=2.0.0').should.be.false()
      
    context 'with prerelease stuff', ->
      Then -> @subject('2.0.0-rc1').should.be.false()

  describe 'a range', ->
    context 'gt', ->
      Then -> @subject('>2.0.0').should.be.true()

    context 'gte', ->
      Then -> @subject('>=2.0.0').should.be.true()

    context 'lt', ->
      Then -> @subject('<2.0.0').should.be.true()

    context 'lte', ->
      Then -> @subject('<=2.0.0').should.be.true()

    context 'or', ->
      Then -> @subject('2.0.0 || 4.0.0').should.be.true()

    context 'tilde', ->
      Then -> @subject('~2.0.0').should.be.true()

    context 'carot', ->
      Then -> @subject('^2.0.0').should.be.true()

    context 'x', ->
      Then -> @subject('2.0.x').should.be.true()

    context 'omission', ->
      Then -> @subject('2').should.be.true()
      
