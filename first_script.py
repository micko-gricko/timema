import sys
import os
import getopt

# at the end of bottom line are names for variables
try:
    opts, args = getopt.getopt(sys.argv[1:], 'i:o:h')

except getopt.GetoptError:
    print('ERROR getting options, please see help by specifing -h')
    sys.exit(2) ### close ofter error from try
    

in_gffname = None
out_gene = None
    
arg_len = len(opts)
if arg_len == 0:
    print('No options provided. Please see help by specifing -h')
    sys.exit(2)
#print (opts) ## see args
for opt, arg in opts:
    if opt in ('-h'):
        
        print('\n**** USAGE **** \n')
        
        print('HELP')
        
        sys.exit(2)
    elif opt in ('-i'):
        in_gffname = arg
    elif opt in ('-o'):
        out_gene = arg
    else:
        print('i dont know')
        sys.exit(2)
		
		
in_gff = open (in_gffname)
out_genefile = open (out_gene, "w")
# "w" is for write

for line in in_gff:
	#print (line)
	
	# get rid of trailings white space
	line = line.strip()
	
	line = line.split("\t")
	#print(line)

	feature = line [2]
	#print(feature) 
	if feature == "gene" :
		#print(line)	
		
		scafold = line [0]
		coofront = line [3]
		cooback = line  [4]
		mess = line  [8]
		geneid = mess.split("ID=")[1].split(";")[0]
		out_genefile.write(scafold +"\t"+ coofront +"\t"+ cooback + "\t"+ geneid + "\n") 
	
		
		
		
		
