def isHex(s: str) -> bool:
    # guard clauses -------------------
    if len(s) == 0 or len(s) == 1:
        return False

    if s.startswith("0x") == False:
        return False
    # ---------------------------------

    test = "0123456789abcdefABCDEF"

    for val in s[2:]:
        if val not in test:
            return False

    return True


def main() -> None:
    print(isHex("0x1A"))


if __name__ == '__main__':
    main()

# isHex('0x1A') => true
