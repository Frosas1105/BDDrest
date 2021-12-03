from pytest_bdd.scenario import scenario
import requests
from pytest_bdd import scenarios, given, then
import pytest

url = "https://api.duckduckgo.com/?q=presidents+of+the+united+states&format=json"

scenarios('.../features/presidents.feature', example_converters=dict(presidents=str))

@given('the DuckDuckGo is queried for presidents of the united states')
def ddg_querie(presidents):
    r = requests.get(url)
    resp_data = r.json()
    return resp_data

@then('the response contains "<presidents>"')
def verify_presidents(ddg_querie, presidents):
    namesStr = str(ddg_querie)
    for names in namesStr:
        assert names == presidents
