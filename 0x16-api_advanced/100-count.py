#!/usr/bin/python3
"""
a recursive function that queries the Reddit API,
parses the title of all hot articles, and prints a
sorted count of given keywords (case-insensitive,
delimited by spaces
"""
import requests


def counter(letter, text, dictionary):
    ''' count letters '''
    for i in text.split():
        if letter.lower() == i.lower():
            dictionary[letter] += 1


def count_words(subreddit, word_list, dictionary={}, end=None, init=False):
    ''' prints the titles of the first 10 hot posts '''

    base_url = "https://www.reddit.com"
    # set header
    headers = {
        "User-Agent": "My User Agent 1.0"}
    # get sub-reddit info
    request_info = requests.get(
        base_url + '/r/{}/hot.json?after={}'.format(subreddit, end),
        headers=headers,
        allow_redirects=False,
        )
    if request_info.status_code == 404:
        return
    hottest = request_info.json().get("data").get("children")

    # initialize dictionary
    if not init:
        for k in word_list:
            dictionary[k] = 0
    init = True
    for i in hottest:
        for e in word_list:
            counter(e, i.get("data").get("title"), dictionary)
    # check for exit
    excheck = request_info.json().get("data").get("after")
    if not excheck:
        if len(set(list(dictionary.values()))) <= 1:
            sorted_list = sorted(list(dictionary.items()))
        else:
            sorted_list = sorted(
                            dictionary.items(),
                            key=lambda x: x[1],
                            reverse=True)
        for key, val in sorted_list:
            if val != 0:
                print("{}: {}".format(key, val))
        return
    return count_words(subreddit, word_list, dictionary, excheck, init)


if __name__ == "__main__":
    number_of_subscribers()
