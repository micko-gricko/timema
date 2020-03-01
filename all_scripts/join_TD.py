### Kalli_to_edgeR.py

import sys
import os
import getopt

try:
	opts, args = getopt.getopt(sys.argv[1:], 'i:e:o:h')
																						
except getopt.GetoptError:
	print('ERROR getting options, please see help by specifing -h')
	sys.exit(2) ### close ofter error from try

arg_len = len(opts)

if arg_len == 0:
	print('No options provided. Please see help by specifing -h')
	sys.exit(2)

in_dir_name  = None
outfile_name = None
in_file_ext  = None

#print (opts) ## see args
for opt, arg in opts:
	if opt in ('-h', '--help'):
		print("HELP ")
		

		sys.exit(2)
	elif opt in ('-i'):
		in_dir_name = arg
	elif opt in ('-o'):
		outfile_name = arg
	elif opt in ('-e'):
		in_file_ext = arg
	else:
		print("i dont know")
		sys.exit(2)

#######################################################################################
### get files
#everytime you put : indent it
file_no = 0
outfile_file = open(outfile_name, "w")
path = in_dir_name
for path, subdirs, files in os.walk(path):
	for name in files:
		file_path = os.path.join(path, name)
		if file_path.endswith(in_file_ext):	
			file_no = file_no + 1
			curr_file = open(file_path)
			gene_name = name.replace (in_file_ext, "")
			#print(gene_name)
			line_no = 0
			for  line in curr_file:
				

				#print (line)
				line_no = line_no + 1
				
				if line_no == 1:
					
					if file_no == 1:
						header = "Genename\t" + line  
						outfile_file.write (header)
				#print(line_no)
				if line_no > 1:
					#print (line)
					outfile_file.write (gene_name+"\t"+line)
				
			




