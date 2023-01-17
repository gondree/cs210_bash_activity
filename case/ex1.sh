#!/usr/bin/env bash

for arg in "$@"; do
  case $arg in
    -s=*|--save=*)
      SAVEPATH="${arg#*=}"
      shift # move past the '=val' part of '-s=val'
      ;;
    --help|-h)
      echo "Demonstrates simple argument parsing"
      echo "To use:"
      echo "\t$0 --save=[path]"
      echo "\t$0 -s=[path]"
      exit 0
      ;;
    -*|--*)
      echo "Unknown option $arg"
      exit 1
      ;;
    *)
      echo "Found extra argument $arg"
      ;;
  esac
done

echo SAVEPATH is "$SAVEPATH"
