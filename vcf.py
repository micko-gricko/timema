import sys
import os
import getopt
# dont put variables after h because you don't add up value to it
# at the end of bottom line are names for variables
try:
    opts, args = getopt.getopt(sys.argv[1:], 'i:o:j:l:h')

except getopt.GetoptError:
    print('ERROR getting options, please see help by specifing -h')
    sys.exit(2) ### close ofter error from try  
 #need to specify all the variables I'll use (files from which I'll take some object that varies)
gene_size_adj = 1000
# I can change gene_size_adj value since I later specify it as variable -l
in_gffname = None
out_gene = None
scaff_limit = None 
 
arg_len = len(opts)
if arg_len == 0:
    print('No options provided. Please see help by specifing -h')
    sys.exit(2)
#print (opts) ## see args
for opt, arg in opts:
    if opt in ('-h'):
        
        print('\n**** USAGE **** \n')
        
        print('python3 ./1-Master\ project/Data/shellscripts/python/vcf.py  -i ref_genom.gff -o columns_needed_for_coordinates.txt ')
        
        sys.exit(2)
    elif opt in ('-l') :
        gene_size_adj = int(arg)
    elif opt in ('-j'):
        scaff_limit = arg
    elif opt in ('-i'):
        in_gffname = arg
    elif opt in ('-o'):
        out_gene = arg
    else:
        print('i dont know')
        sys.exit(2)
		
#here I made dictionary (for scaffold length)
scaff_length_dict = {}


scaff_lim = open (scaff_limit)	
for line in scaff_lim:
	#print (line)
	
	# get rid of trailings white space
	line = line.strip()
	
	line = line.split("\t")
	#print(line)
	
	scaff_name = line [0]
	length = int(line [1])
	scaff_length_dict[scaff_name]=length
#print (scaff_length_dict)
#line above I have dctionary from which by scaffolds name it gets the length of it
	
#making new file from ref genome to coordinates plus gene names
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
		coofront = int(line [3])
		coofront_adj = coofront - gene_size_adj
		if coofront_adj < 1:
			coofront_adj = 1
		cooback = int(line [4])
		cooback_adj = cooback + gene_size_adj
		genome_scaff_lim =scaff_length_dict.get(scafold)
		#print(genome_scaff_lim)
		if cooback_adj > genome_scaff_lim:
			cooback_adj = genome_scaff_lim
		mess = line  [8]
		geneid = mess.split("ID=")[1].split(";")[0]
		
		out_genefile.write(scafold +"\t"+ str(coofront_adj) +"\t"+ str(cooback_adj) +"\t" + geneid + "\n") 
# "\t" for tab delimited, "\n" for new row
# I used gene_id to separate ID=gene name in pieces, otherwise it would look at it as one string, which won't be usefull, since I wanted my file to have only info about gene names
		
		
		
		
