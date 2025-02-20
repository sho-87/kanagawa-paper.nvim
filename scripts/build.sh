#!/bin/env bash

nvim -u minit.lua --headless +"lua require('kanagawa-paper.extras').setup()" +qa
