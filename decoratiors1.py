def decorator(func):
    def decorated(h, w):
        if h > 0 and w > 0:
            func(h, w)
        else:
            print("Error")
    return decorated

@decorator
def triangle(h, w):
     print((h * w) / 2)

@decorator
def square(h, w):
    print(h * w)

triangle(3,-4)
square(3,3)