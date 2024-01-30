
"use strict";

let TestArrayRequest = require('./TestArrayRequest.js')
let TestEmpty = require('./TestEmpty.js')
let TestMultipleRequestFields = require('./TestMultipleRequestFields.js')
let TestResponseOnly = require('./TestResponseOnly.js')
let TestNestedService = require('./TestNestedService.js')
let TestRequestOnly = require('./TestRequestOnly.js')
let TestRequestAndResponse = require('./TestRequestAndResponse.js')
let AddTwoInts = require('./AddTwoInts.js')
let SendBytes = require('./SendBytes.js')
let TestMultipleResponseFields = require('./TestMultipleResponseFields.js')

module.exports = {
  TestArrayRequest: TestArrayRequest,
  TestEmpty: TestEmpty,
  TestMultipleRequestFields: TestMultipleRequestFields,
  TestResponseOnly: TestResponseOnly,
  TestNestedService: TestNestedService,
  TestRequestOnly: TestRequestOnly,
  TestRequestAndResponse: TestRequestAndResponse,
  AddTwoInts: AddTwoInts,
  SendBytes: SendBytes,
  TestMultipleResponseFields: TestMultipleResponseFields,
};
