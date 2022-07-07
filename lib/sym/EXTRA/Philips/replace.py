import os
# rename all files in a directory and subdirectories where the extension is .PRM to .lib
for root, dirs, files in os.walk("."):
    for file in files:
        if file.endswith(".PRM"):
            os.rename(os.path.join(root, file), os.path.join(root, file[:-4] + ".lib"))