# import emoji module
import emoji
import requests
from bs4 import BeautifulSoup


response = requests.get("https://carpedm20.github.io/emoji/")
soup = BeautifulSoup(response.text, 'html.parser')
smiles = soup.find_all('tr')

# bilding text
text = []
for smile in smiles:
    smile_info = smile.find_next('td')
    try:
        text.append(smile_info.next_sibling.string)
    except:
        pass


# build a dict
dict = {}
for word in text:
    words_to_add = word[1:-1].split('_')
    for key in words_to_add:
        dict[key] = word


def getemojedtext():
    usertext = input("Enter a text witch you want to emojing (leave blank to set default):\n")
    if usertext == '':
        usertext = "In zoo panda live 9 years ."
    string = ''

    for word in usertext.split(' '):    
        try:
            smile = dict[word]
        except:
            smile = ''
        try:
            dig = int(word)
        except:
            dig = ''

        if dig :
            pass
        else:
            string += word + " "
        
        if smile:
            string += " " + smile + " "
    
    print(emoji.emojize(string))



if __name__ == "__main__":
    getemojedtext()
   

 
