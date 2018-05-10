# CLI to search enrolled Alexa for Business Devices

## Requirements
- Python 2.7+

## Installation
### From pip:
```
pip install afb-search
```
### From source:
```
./setup.py install
```

## Usage
```
Usage:
    afb_search list [--profile=<profile>] [--region=<region>] [--mac-only]
    afb_search search (mac | serial | name) <search> [--profile=<profile>] [--region=<region>]
    afb_search (-h | --help)
    afb_search --version
    
Options:
    -h --help               Show this screen.
    --version               Show version.
    --mac-only              Only return the MAC instead of all device info.
    --profile=<profile>     Specify AWS profile (as defined in ~/.aws/credentials) - default "default".
    --region=<region>       Specify AWS region - default "us-east-1".
```
