import sys, getopt
from time import sleep
import easydate,emotions,htmlparcer,comma,computerinfo,filereader

helptext = 'usage: task8_1.py gethomework'

def gethomework():
    print("Lets show yo home work...")
    easydate.printdatetime() 
    comma.list_touple()
    filereader.filereader()
    htmlparcer.showtitle()
    emotions.getemojedtext()
    computerinfo.showPCinfo()
    print("Home work is done!")



def main(argv):
   
    if argv:
        for opt in argv:
            if opt == 'gethomework':
                gethomework()
            else:
                print(helptext)
    else:
       print(helptext)
    
        

if __name__ == "__main__":
    main(sys.argv[1:])