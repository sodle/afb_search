#!/usr/bin/env bash
###
# Bash Script to list the MAC address of each Echo enrolled in Alexa for Business,
# across multiple AWS accounts and regions.
# Scott Odle, Arizona State University <sjodle@asu.edu>, 2018
###

# List of AWS accounts to search, as defined by profiles in the AWS CLI credentials file (~/.aws/credentials)
ACCOUNTS=( 'default' 'my-corporate-account' 'my-dev-account' 'student-account' )

# List of AWS regions to search. Note that at time of writing (5/2018), AFB exists only in us-east-1,
# and searching another region will cause an error.
REGIONS=( 'us-east-1' )

for acct in ${ACCOUNTS[@]}
do
    for reg in ${REGIONS[@]}
    do
        echo "Searching region ${reg}, account ${acct}." >&2
        /usr/bin/env afb_search list --mac-only --profile=${acct} --region=${reg}
    done
done
