import complex

while True:
	text = input('Bitkal > ')
	result, error = complex.run('<stdin>', text)

	if error: print(error.as_string())
	elif result: print(repr(result))