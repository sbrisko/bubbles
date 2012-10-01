#! /bin/bash
cd /Users/scottb/projects/bubble/public
srcfiles="src/init.coffee  src/InGameObjects.coffee src/Player.coffee src/Explosion.coffee src/Bullet.coffee src/Enemy.coffee src/runtime.coffee src/helper.coffee src/start.coffee"
coffee --join bubbles.js --compile $srcfiles 