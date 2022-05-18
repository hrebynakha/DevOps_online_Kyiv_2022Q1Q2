import datetime
from unicodedata import name

def printdatetime():
    print("Run program 1 (display current date and time)")
    # simple
    timenow = datetime.datetime.now()
    print("Date time now:", str(timenow))
    # formating
    print("Formatted time:",timenow.strftime("%d-%B-%G %H:%M:%S"))


if __name__ == "__main__":
    printdatetime()

