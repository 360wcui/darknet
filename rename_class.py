import os

def manual_replace(s, char, index):
    return s[:index] + char + s[index +1:]

folder = 'sway'   # your directory
new_class = 2
file_prefix = str(new_class + 1)

files = [f for f in os.listdir(folder) if f.endswith('.txt') and f.startswith(file_prefix)]
for file in files:
    print("processing: ",  folder,'/' ,file)
    file_path = folder + '/' + file
    with open(file_path) as fin:
        lines = fin.readlines()
    if len(lines) > 0:
        line = lines[0]
        line = str(new_class) + line[1:]
        lines[0] = line

        with open(file_path, 'w') as fout:
            for line in lines:
                fout.write(line)
    else:
        print('empty file', file_path)
