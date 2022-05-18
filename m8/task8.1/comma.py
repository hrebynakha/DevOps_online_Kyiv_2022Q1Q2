def list_touple():
    print("Run program 2 (python program, which ccept comma-separated numbers and show")
    print ("tuple and list of them)")
    numbers = input("Enter a comma-separated numbers (leave blank to set default):\n")
    if numbers == '':
        numbers = '1,2,7,43,9'
    print('You entered :', numbers)
    num_list = list(numbers.split(','))
    print(num_list)
    print(type(num_list))
    num_tup = tuple(numbers.split(', '))
    print(num_tup)
    print(type(num_tup))


if __name__ == "__main__":
    list_touple()