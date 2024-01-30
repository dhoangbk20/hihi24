
"use strict";

let Gpgsa = require('./Gpgsa.js');
let Gpgsv = require('./Gpgsv.js');
let Sentence = require('./Sentence.js');
let GpgsvSatellite = require('./GpgsvSatellite.js');
let Gprmc = require('./Gprmc.js');
let Gpgga = require('./Gpgga.js');

module.exports = {
  Gpgsa: Gpgsa,
  Gpgsv: Gpgsv,
  Sentence: Sentence,
  GpgsvSatellite: GpgsvSatellite,
  Gprmc: Gprmc,
  Gpgga: Gpgga,
};
