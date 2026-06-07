from app.quotes import get_random_quote, QUOTES

def test_random_quote_in_list():
    # Sprawdza, czy funkcja zwraca cytat z listy
    quote = get_random_quote()
    assert quote in QUOTES

def test_quotes_list_not_empty():
    assert len(QUOTES) > 0