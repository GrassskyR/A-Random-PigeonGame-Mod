"""Tutorial completion flag from the selected, reviewed sample contract."""
from tools.versioning import context

def tutorial_flag():
    values = context().progress["tutorial"]
    return values["key"], values["value"]

def __getattr__(name):
    if name in ("KEY", "VALUE"):
        return tutorial_flag()[name == "VALUE"]
    raise AttributeError(name)
