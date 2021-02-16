function secret_handshake(code)
    codes = ["wink", "double blink", "close your eyes", "jump"]
    key = isone.(digits(code, base=2, pad=5))
    result = codes[key[1:4]]
    key[5] ? reverse(result) : result
end
