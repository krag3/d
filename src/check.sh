#!/bin/sh


echo "\033[33mCheck super...\033[0m"
ERROR=0;

IS_SU=$(id -u)
echo -n "run in su: "
if [ $IS_SU -eq 0 ]; then \
  echo "\033[32mYES\033[0m"; \
else \
  echo "\033[31mNO\033[0m"; \
fi

echo -n "sudo: "
if [ $IS_SU -ne 0 ]; then
  if [ -z `which sudo` ]; then
    echo "\033[31mNot Found\033[0m";
    ERROR=1;
  else
    echo "\033[32mOK\033[0m";
  fi
else
  echo "\033[32mSKIP\033[0m"
fi

if [ $ERROR -ne 0 ]; then
  echo
  echo "\033[31mPlease install sudo or run in su\033[0m";
  echo "\033[31mExiting...\033[0m";
  exit 1;
fi