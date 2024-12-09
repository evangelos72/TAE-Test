# Project Test Suite

## Overview

Hello! This is the testing project I did for the interview


## How to run all test suites
```bash
robot tests/
```
## How to run specific test suites
```bash
robot tests/videoTest.robot tests/galleryTest.robot
```
## How to run all tests in parallel
```bash
pabot --testlevelsplit tests/
```
## How to run tests from slowest to fastest suite
```bash
pabot --ordering pabot-ordering.txt tests/
```
## How to run all tests with specified browser
```bash
robot --variable BROWSER:firefox tests/
```