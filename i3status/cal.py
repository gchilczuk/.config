# -*- coding: utf-8 -*-

import subprocess


class Py3status:

    def __init__(self):
        self.full_text = '📅'

    def click_info(self):
        return {
            'full_text': self.full_text,
            'cached_until': self.py3.CACHE_FOREVER
        }

    def on_click(self, event):
        subprocess.call(["gsimplecal"])