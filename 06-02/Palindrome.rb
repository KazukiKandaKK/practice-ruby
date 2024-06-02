# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    x = String(x)
    forward = x
    backward = x.reverse()

    return forward==backward
end