//var exec = require('cordova/exec');

function SpeechPlugin() {}

SpeechPlugin.prototype.speak = function (text) {
  cordova.exec(function () {}, function () {}, "SpeechPlugin", "speak", [ text ]);
}

module.exports = SpeechPlugin;