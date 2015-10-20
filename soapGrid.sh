K_low=20
K_high=63
d_low=0
d_high=4
	

echo -e "command\tK_par\td_par\tN50size\tN50num\tgSize"
for (( K=$K_low; K<=$K_high; K++ ))
do	

	if [ $(($K % 5)) -eq 0 ]
	then

		for(( d=$d_low; d<=$d_high; d++ ))
		do
			for(( M=0; M<=3; M++ ))
			do
			
				#set up command and output variable
				command="soapdenovo2-63mer all -s $1 -R -M $M -u -K $K -d $d -o RM${M}uK${K}d${d} 1>err 2>log"
				out="RM${M}uK${K}d${d}"
				
				#run SOAP
				bash <(echo $command)
				
				#save N50 stats
				stat=`grep -m 1 N50 ${out}.scafStatistics | cut -f2-`
				
				#save est. genome size
				length=`grep -m 1 "Size_withoutN" ${out}.scafStatistics | cut -f2-`
				
				#report results
				echo -e "\"$command\"\t$K\t$d\t$stat\t$length"
				
				#clean up
				rm log err ${out}*
			done
		done
	fi
done
