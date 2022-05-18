from bs4 import BeautifulSoup

def showtitle():
    print("Run program 4 (parce html file and show title)")
    htmlfile = input("Enter a html filename to read(leave blank to set default):\n")
    if htmlfile == '':
        htmlfile = 'Customize the Django Admin With Python.html'
    file = open(htmlfile, "r")
    html_text = file.read()
    file.close()

    soup = BeautifulSoup(html_text, 'html.parser')
    print("Title is:", soup.title.string)

if __name__ == "__main__":
    showtitle()
