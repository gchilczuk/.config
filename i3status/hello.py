# -*- coding: utf-8 -*-
from random import randint

class Py3status:

    def __init__(self):
        self.full_text = '🎲'

    def click_info(self):
        return {
            'full_text': self.full_text,
            'cached_until': self.py3.CACHE_FOREVER
        }

    def on_click(self, event):
        rn = randint(0,9)
        format_string = '🎲 {random_number}'
        data = {'random_number': rn}
        self.full_text = self.py3.safe_format(format_string, data)
