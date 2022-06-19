math.randomseed(os.time())

print("\n\t         _  _  /``\\      _   __  __")
print("\t|-. | | | \\/ \\ | _  | | /_\\ \\__ \\__")
print("\t| | \\_| |    | \\__| \\_| \\__ __/ __/\n")

print("\t1: 0-50    2: 0-100    3: custom")

min = nil
max = nil

repeat
	io.write("   ") input = io.read()

	validInput = true
	if input == "1" then
		print(" Option 1 chosen")
		min = 0
		max = 50
	elseif input == "2" then
		print(" Option 2 chosen")
		min = 0
		max = 100
	elseif input == "3" then
		print(" Option 3 chosen")

		repeat
			io.write("  Choose the minimum number from 0 to 500: ")
			min = io.read("*n")

			validInput = true

			if not ((min >= 0) and (min <= 500)) then
				print("  Invalid Input!")
				validInput = false
			end
		until(validInput)

		repeat
			io.write("  Choose the maximum number from 0 to 500: ")
			max = io.read("*n")

			validInput = true

			if not ((max >= 0) and (max <= 500)) then
				print("  Invalid Input!")
				validInput = false
			end
		until(validInput)

	else
		print(" Invalid Input!")
		validInput = false
	end
until(validInput)
print("\n Your Minimum Number is: ", min)
print(" Your Maximum Number is: ", max)

randint = math.random(min, max)

print("\n I am thinking of a number somwhere between "..min.." and "..max..". Try and Guess it!\n")

trys = 1
loop = false

repeat
	loop = false

 	io.write("   ") input = io.read("*n")

	if input > randint then
		print(" Lower!")
		trys = trys + 1
	elseif input < randint then
		print(" Higher!")
		trys = trys + 1
	elseif input == randint then 
		print("Spot On!")
		print("\n You Guessed It in "..trys.." Trys!!")
		loop = true
	end
until(loop)