def checkIfPrime():
    I, temp = 0, 0
    n = int(str(int(input("please give a number : "))))
    for I in range(2, n // 2):
        if n % I == 0:
            temp=1
            break
    if temp == 1:
        return("given number is not prime")
    else:
        return("given number is prime")

if __name__ == "__main__":
    print(checkIfPrime())