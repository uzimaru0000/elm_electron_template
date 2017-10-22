'use strict';

require('./index.html');

const elm = require('./elm/Main.elm');
const mountNode = document.getElementById('main');

const app = elm.Main.embed(mountNode);