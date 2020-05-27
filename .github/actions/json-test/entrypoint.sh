#!/bin/bash

find
python3 /sandbox/csaf_2.0/json_schema/test/validator.py /sandbox/csaf_2.0/json_schema/csaf_json_schema.json /sandbox/csaf_2.0/json_schema/CVE-2018-0171-modified.json
echo "::set-output result=good"
