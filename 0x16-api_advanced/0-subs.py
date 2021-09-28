#!/usr/bin/python3
"""
queries the Reddit API and returns the number of subscribers
(not active users, total subscribers) for a given subreddit
GET /r/subreddit/about
https://www.reddit.com/r/redditdev/about.json
https://www.reddit.com/r/programming/about.json
"subscribers": 62195
"""

import json
import requests


def number_of_subscribers(subreddit):
    """Return the number of subscribers"""
    url = "https://www.reddit.com/r/"
    url = url + subreddit + "/about/.json"

    headers = {
        'User-Agent': 'My User Agent 1.0',
        'From': '149@holbertonschool.com'
    }
    result = requests.get(url, headers=headers)
    if result.status_code == 200:
        result = result.json()
        return result['data']['subscribers']
    else:
        return 0
