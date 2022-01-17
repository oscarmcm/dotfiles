import os
import sys
import pprint
import datetime
from code import InteractiveConsole

try:
    import see
except ImportError:
    pass

try:
    import gnureadline as readline
except ImportError:
    try:
        import readline
    except ImportError:
        print('Module readline not available.')

import rlcompleter
readline.parse_and_bind('tab: complete')

# Enable a History
HISTFILE = os.path.expanduser('~/.pyhistory')

# Read the existing history if there is one
if os.path.exists(HISTFILE):
    readline.read_history_file(HISTFILE)

# Set maximum number of items that will be written to the history file
readline.set_history_length(300)

def savehist():
    import os
    try:
        import gnureadline as readline
    except ImportError:
        import readline

    HISTFILE = os.path.expanduser('~/.pyhistory')
    readline.write_history_file(HISTFILE)

import atexit
atexit.register(savehist)

del rlcompleter
del atexit

# Silly import I use to quickly load items I'm currently
# testing at any given moment. Safe to remove & ignore
# try:
    # from localdev import *
# except ImportError:
    # print('ERROR LOCALDEV')
    # pass


def my_displayhook(value):
    global pprint  # Needed since Django 1.5, WTF?
    if value is not None:
        try:
            import __builtin__
            __builtin__._ = value
        except ImportError:
            import builtins
            builtins._ = value

        pprint.pprint(value)


sys.displayhook = my_displayhook
WELCOME = ''

if 'DJANGO_SETTINGS_MODULE' in os.environ:
    from django.apps import apps
    from django.conf import settings as S
    from django.db.models import Q
    from django.test.client import Client
    from django.test.utils import setup_test_environment, \
                                  teardown_test_environment

    class DjangoModels(object):
        'Loop through all the models in INSTALLED_APPS and import them.'
        def __init__(self):
            for m in apps.get_models():
                setattr(self, m.__name__, m)

    A = DjangoModels()
    C = Client()

    #setup_test_environment()
    S.DEBUG_PROPAGATE_EXCEPTIONS = True

    WELCOME += '''
Django environment detected.
* Your INSTALLED_APPS models are available as `A`.
* Your project settings are available as `S`.
* The Django test client is available as `C`.

Warning: the Django test environment has been set up; to restore the
normal environment call `teardown_test_environment()`.

Warning: DEBUG_PROPAGATE_EXCEPTIONS has been set to True.
'''

c = InteractiveConsole(locals=locals())
c.interact(banner=WELCOME)

sys.exit()

