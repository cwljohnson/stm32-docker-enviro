import sys
import re
import os

if len(sys.argv) < 3:
    exit()

templateFile = open(sys.argv[1])
templateText = templateFile.read()
print(templateText)

textFile = open(sys.argv[2])

for line in textFile:
    nameMatch = re.search("((stm32[fgl][0-9]xx)_(hal_.*?|ll_.*?))\.c", line)
    if not nameMatch:
        continue

    folder = nameMatch.groups()[1]
    name = nameMatch.groups()[0]
    print(folder, name)

    if not os.path.exists(folder):
        os.makedirs(folder)

    outputFile = open(f"{folder}/{name}.cmake", "w")
    outputText = templateText.replace("#TYPE#", folder.upper()).replace("#NAME#", name.upper()).replace("#LINE#", f"{line.strip()}")
    outputFile.write(outputText)
    outputFile.close()


textFile.close()