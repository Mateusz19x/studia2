from app.quotes import get_random_quote

def main():
    quote = get_random_quote()
    print(f"Cytat dnia: {quote}")

if __name__ == "__main__":
    main()