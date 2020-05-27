#!/bin/bash
#echo "::set-output name=result::good"

FAIL=0
SCHEMA=sandbox/csaf_2.0/json_schema/csaf_json_schema.json 

validate() {
  echo -n "Testing file $1 against schema sandbox/csaf_2.0/json_schema/csaf_json_schema.json ... "
  if python3 sandbox/csaf_2.0/json_schema/test/validator.py $SCHEMA $1; then
    echo SUCCESS
  else
    echo FAILED
    FAIL=1
  fi

}

validate sandbox/csaf_2.0/json_schema/CVE-2018-0171-modified.json
validate sandbox/csaf_2.0/json_schema/CVE-2018-0171-modified.json1

exit $FAIL
