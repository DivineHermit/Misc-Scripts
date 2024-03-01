import os

def addext(folder=os.getcwd(), ext='.mp4'):
	"""
	Add the given file extention to all files in the given folder.
	param: folder - Defaults to the current working directory.
	param: ext    - Defaults to .mp4
	"""
	for file in os.listdir(folder):
		file_name, file_ext = os.path.splitext(file)
		new_name = file_name + ext
		os.rename(file, new_name)


if __name__ == '__main__':
	import argparse
	parser = argparse.ArgumentParser()
	parser.add_argument('-f', '--folder', default=os.getcwd(), help='The folder holding the files to rename. (default=Current working directory)')
	parser.add_argument('-e', '--ext', default='.mp4', help='The file extention to add. (default=.mp4)')
	args = parser.parse_args()
	print(args)
	if args.ext or args.folder:
		# May need to expand this, but it meets my current needs.
		addext(folder=args.folder, ext=args.ext)
	else:
		addext()
