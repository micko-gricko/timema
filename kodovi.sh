#github
cd /mnt/c/Users/Micko/Desktop/1-Master\ project/Data/shellscripts  
 git clone https://github.com/micko-gricko/timema.git       
 git status   
 git add .  
 git commit -m "adding scripts"        
 git push 
 git add ./previous/tcmrg.sh  
 git commit -m "change"     
  git push    
  
 #python
  cd /mnt/c/Users/Micko/Desktop/1-Master\ project/Data/shellscripts/python/ 
  #just to check if it works
  python3 first_script.py   
  #to unzip the refrerence genome file
   gzip -d ../../../../Tce.gff.gz
   # then part from Darrens github
  python3 ./1-Master\ project/Data/shellscripts/python/vcf.py  -i tce.gff -o tce_ajd.txt  -l 1000
 

# I git cloned Darrens repository to get the script for getting length of all the scaffolds. I needed it to set upper limit for gene length (since I don't want it to calculate some wierd Tajima's D if it goes over to other scaffold or who knows what)
   git clone https://github.com/DarrenJParker/fasta_tools.git
   python3 ./1-Master\ project/Data/shellscripts/python/fasta_tools/fasta_len_all_seqs.py      
   gzip -d Tcm.fasta.gz
   # I needed it to make dictionary for python script: I get the lenght of every scaffold so I can set the upper limit value in case it is bigger then when I add -l vale to the size of the gene