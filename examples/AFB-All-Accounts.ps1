###
# PowerShell Script to list the MAC address of each Echo enrolled in Alexa for Business,
# across multiple AWS accounts and regions.
# Scott Odle, Arizona State University <sjodle@asu.edu>, 2018
#
# Requires Python 2.7+ and the afb-search package from Pip.
# Your Python install directory and its Scripts subdirectory must both be on your path.
###

# List of AWS accounts to search, as defined by profiles in the AWS CLI credentials file (~/.aws/credentials)
$ACCOUNTS = @( 'default', 'my-corporate-account', 'my-dev-account', 'student-account' )

# List of AWS regions to search. Note that at time of writing (5/2018), AFB exists only in us-east-1,
# and searching another region will cause an error.
$REGIONS = @( 'us-east-1' )

foreach($acct in $ACCOUNTS)
{
    foreach($reg in $REGIONS)
    {
        Write-Host "Searching region $reg, account $acct."
        afb_search list --mac-only --region=$reg --profile=$acct
    }
}