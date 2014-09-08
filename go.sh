#!/bin/bash
npm install && bower install

brunch watch &
pid1=$!
coffee server/ &
pid2=$!

wait ${pid1}
wait ${pid2}
