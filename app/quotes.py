import random

QUOTES = [
    "Nie odkładaj na jutro tego, co możesz zrobić dziś.",
    "Sukces to suma małych wysiłków powtarzanych dzień po dniu.",
    "Wyzwania czynią życie ciekawym.",
    "Nie ma rzeczy niemożliwych.",
    "Każdy dzień jest nową szansą.",
]


def get_random_quote() -> str:
    """Zwraca losowy cytat z listy QUOTES."""
    return random.choice(QUOTES)
