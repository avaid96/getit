import validators

lines = open('links.txt', 'r').readlines()

lines_set = set(lines)

out  = open('links.txt', 'w')

for line in lines_set:
    if validators.url(line):
        out.write(line)
