from distutils.log import error


def filereader():
    print("Run program 3 (filereader)")
    filename = input("Enter a filename to read(leave blank to set default):\n")
    if filename == '':
        filename = 'testfile1.txt'
    print('You entered :', filename)
    
    error = ''
    try:
        file = open(filename, "r")
    except Exception as e:
        error = e

    if error:
        print('Cannot read file, error: ', error)
    else:
        print(file.read())
        file.close()

if __name__ == "__main__":
    filereader()