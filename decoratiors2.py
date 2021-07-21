def decorator(func):
    def decorated(h, w):
        if h > 0 and w > 0:
            func(h, w)
        else:
            print("Error")
    return decorated

@decorator
def square(h, w):
    print(h * w)

def square2(h, w):
    print(h * w)

square(3,3)
decorator(square2)(-3,3)