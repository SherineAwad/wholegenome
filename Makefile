CGATOOLS = /data/WHRI-EndocrinePituitaryGroup/software/cgatools-1.8.0.1-linux_binary-x86_64/bin
WHOLEGENOME = /data/WHRI-EndocrinePituitaryGroup/WholeGenomeData/Pituitary
WHERE = /data/scratch/hhx779/cgatools
build37.crr: 
	wget ftp://ftp.completegenomics.com/ReferenceFiles/build37.fa.bz2
	wget ftp://ftp.completegenomics.com/AnnotationFiles/rmsk37.tsv.gz
	wget ftp://ftp.completegenomics.com/AnnotationFiles/segdup37.tsv.gz
	wget ftp://ftp.completegenomics.com/ReferenceFiles/build37.crr 




masterVarBeta-GS000004826-ASM.tsv:
	${CGATOOLS}/cgatools generatemastervar --beta \
	--reference ${WHERE}/build37.crr \
	--output ${WHOLEGENOME}/GS00617-DNA_A01/ASM/masterVarBeta-GS000004826-ASM.tsv \
	--variants ${WHOLEGENOME}/GS00617-DNA_A01/ASM/var-GS000004826-ASM.tsv.bz2 \
	--annotations copy,evidence,gene,ncrna,repeat,segdup,cnv \
	--genome-root ${WHOLEGENOME}/GS00617-DNA_A01  \
	--repmask-data ${WHERE}/rmsk37.tsv.gz \
	--segdup-data ${WHERE}/segdup37.tsv.gz	



GS000004826.vcf:
	${CGATOOLS}/cgatools  mkvcf \
	--genome-root ${WHOLEGENOME}/GS00617-DNA_A01 \
	--source-names masterVar \
	--field-names GT,PS,NS,AN,AC,AF,SS,FT,CGA_XR,CGA_ALTCALLS,CGA_FI,GQ,HQ,EHQ,GL,DP,AD,CGA_RDP,CGA_ODP,CGA_OAD,CGA_ORDP,CGA_PFAM,CGA_MIRB,CGA_RPT,CGA_SDO,CGA_SOMC,CGA_SOMR,CGA_SOMS,CGA_SOMF,GT,CGA_GP,CGA_NP,CGA_CP,CGA_PS,CGA_CT,CGA_TS,CGA_CL,CGA_LS,CGA_LAFS,CGA_LLAFS,CGA_ULAFS,CGA_SCL,CGA_SLS,CGA_LAFP,CGA_LLAFP,CGA_ULAFP,GT,FT,CGA_IS,CGA_IDC,CGA_IDCL,CGA_IDCR,CGA_RDC,CGA_NBET,CGA_ETS,CGA_KES,GT,FT,CGA_BF,CGA_MEDEL,MATEID,SVTYPE,CGA_BNDG,CGA_BNDGO,CGA_BNDMPC,CGA_BNDPOS,CGA_BNDDEF,CGA_BNDP \
	--reference ${WHERE}/build37.crr \
	--output GS000004826.vcf --beta



masterVarBeta-GS000004827-ASM.tsv: 
	${CGATOOLS}/cgatools generatemastervar --beta \
	--reference ${WHERE}/build37.crr \
	--output ${WHOLEGENOME}/GS00617-DNA_B01/ASM/masterVarBeta-GS000004827-ASM.tsv \
	--variants ${WHOLEGENOME}/GS00617-DNA_B01/ASM/var-GS000004827-ASM.tsv.bz2 \
	--annotations copy,evidence,gene,ncrna,repeat,segdup,cnv \
	--genome-root ${WHOLEGENOME}/GS00617-DNA_B01  \
	--repmask-data ${WHERE}/rmsk37.tsv.gz \
	--segdup-data ${WHERE}/segdup37.tsv.gz 

GS000004827.vcf:
	${CGATOOLS}/cgatools mkvcf \
	--genome-root ${WHOLEGENOME}/GS00617-DNA_B01 \
	--source-names  masterVar \
	--reference ${WHERE}/build37.crr \
	--output GS000004827.vcf --beta \
	--field-names GT,PS,NS,AN,AC,AF,SS,FT,CGA_XR,CGA_ALTCALLS,CGA_FI,GQ,HQ,EHQ,GL,DP,AD,CGA_RDP,CGA_ODP,CGA_OAD,CGA_ORDP,CGA_PFAM,CGA_MIRB,CGA_RPT,CGA_SDO,CGA_SOMC,CGA_SOMR,CGA_SOMS,CGA_SOMF,GT,CGA_GP,CGA_NP,CGA_CP,CGA_PS,CGA_CT,CGA_TS,CGA_CL,CGA_LS,CGA_LAFS,CGA_LLAFS,CGA_ULAFS,CGA_SCL,CGA_SLS,CGA_LAFP,CGA_LLAFP,CGA_ULAFP,GT,FT,CGA_IS,CGA_IDC,CGA_IDCL,CGA_IDCR,CGA_RDC,CGA_NBET,CGA_ETS,CGA_KES,GT,FT,CGA_BF,CGA_MEDEL,MATEID,SVTYPE,CGA_BNDG,CGA_BNDGO,CGA_BNDMPC,CGA_BNDPOS,CGA_BNDDEF,CGA_BNDP 

masterVarBeta-GS000004828-ASM.tsv: 
	${CGATOOLS}/cgatools generatemastervar --beta \
	--reference ${WHERE}/build37.crr \
	--output ${WHOLEGENOME}/GS00617-DNA_C01/masterVarBeta-GS000004828-ASM.tsv \
	--variants ${WHOLEGENOME}/GS00617-DNA_C01/ASM/var-GS000004828-ASM.tsv.bz2 \
	--annotations copy,evidence,gene,ncrna,repeat,segdup,cnv \
	--genome-root ${WHOLEGENOME}/GS00617-DNA_C01  \
	--repmask-data ${WHERE}/rmsk37.tsv.gz \
	--segdup-data ${WHERE}/segdup37.tsv.gz 

GS000004828.vcf:
	${CGATOOLS}/cgatools  mkvcf \
	--genome-root ${WHOLEGENOME}/GS00617-DNA_C01 \
	--source-names masterVar \
	--reference ${WHERE}/build37.crr \
	--output GS000004828.vcf --beta \
	--field-names GT,PS,NS,AN,AC,AF,SS,FT,CGA_XR,CGA_ALTCALLS,CGA_FI,GQ,HQ,EHQ,GL,DP,AD,CGA_RDP,CGA_ODP,CGA_OAD,CGA_ORDP,CGA_PFAM,CGA_MIRB,CGA_RPT,CGA_SDO,CGA_SOMC,CGA_SOMR,CGA_SOMS,CGA_SOMF,GT,CGA_GP,CGA_NP,CGA_CP,CGA_PS,CGA_CT,CGA_TS,CGA_CL,CGA_LS,CGA_LAFS,CGA_LLAFS,CGA_ULAFS,CGA_SCL,CGA_SLS,CGA_LAFP,CGA_LLAFP,CGA_ULAFP,GT,FT,CGA_IS,CGA_IDC,CGA_IDCL,CGA_IDCR,CGA_RDC,CGA_NBET,CGA_ETS,CGA_KES,GT,FT,CGA_BF,CGA_MEDEL,MATEID,SVTYPE,CGA_BNDG,CGA_BNDGO,CGA_BNDMPC,CGA_BNDPOS,CGA_BNDDEF,CGA_BNDP 


masterVarBeta-GS000004829-ASM.tsv: 
	${CGATOOLS}/cgatools generatemastervar --beta \
	--reference ${WHERE}/build37.crr \
	--output ${WHOLEGENOME}/GS00617-DNA_D01/ASM/masterVarBeta-GS000004829-ASM.tsv \
	--variants ${WHOLEGENOME}/GS00617-DNA_D01/ASM/var-GS000004829-ASM.tsv.bz2 \
	--annotations copy,evidence,gene,ncrna,repeat,segdup,cnv \
	--genome-root ${WHOLEGENOME}/GS00617-DNA_D01  \
	--repmask-data ${WHERE}/rmsk37.tsv.gz \
	--segdup-data ${WHERE}/segdup37.tsv.gz 

GS000004829.vcf:
	${CGATOOLS}/cgatools  mkvcf \
	--genome-root ${WHOLEGENOME}/GS00617-DNA_D01 \
	--source-names masterVar \
	--reference ${WHERE}/build37.crr \
	--output GS000004829.vcf --beta \
	--field-names GT,PS,NS,AN,AC,AF,SS,FT,CGA_XR,CGA_ALTCALLS,CGA_FI,GQ,HQ,EHQ,GL,DP,AD,CGA_RDP,CGA_ODP,CGA_OAD,CGA_ORDP,CGA_PFAM,CGA_MIRB,CGA_RPT,CGA_SDO,CGA_SOMC,CGA_SOMR,CGA_SOMS,CGA_SOMF,GT,CGA_GP,CGA_NP,CGA_CP,CGA_PS,CGA_CT,CGA_TS,CGA_CL,CGA_LS,CGA_LAFS,CGA_LLAFS,CGA_ULAFS,CGA_SCL,CGA_SLS,CGA_LAFP,CGA_LLAFP,CGA_ULAFP,GT,FT,CGA_IS,CGA_IDC,CGA_IDCL,CGA_IDCR,CGA_RDC,CGA_NBET,CGA_ETS,CGA_KES,GT,FT,CGA_BF,CGA_MEDEL,MATEID,SVTYPE,CGA_BNDG,CGA_BNDGO,CGA_BNDMPC,CGA_BNDPOS,CGA_BNDDEF,CGA_BNDP

masterVarBeta-GS000005216-ASM.tsv: 
	${CGATOOLS}/cgatools generatemastervar --beta \
	--reference ${WHERE}/build37.crr \
	--output ${WHOLEGENOME}/GS00617-DNA_E01/ASM/masterVarBeta-GS000005216-ASM.tsv \
	--variants ${WHOLEGENOME}/GS00617-DNA_E01/ASM/var-GS000005216-ASM.tsv.bz2 \
	--annotations copy,evidence,gene,ncrna,repeat,segdup,cnv \
	--genome-root ${WHOLEGENOME}/GS00617-DNA_E01  \
	--repmask-data ${WHERE}/rmsk37.tsv.gz \
	--segdup-data ${WHERE}/segdup37.tsv.gz 

GS000005216.vcf:
	${CGATOOLS}/cgatools  mkvcf \
	--genome-root ${WHOLEGENOME}/GS00617-DNA_E01 \
	--source-names masterVar \
	--output GS000005216.vcf --beta \
	--reference ${WHERE}/build37.crr \
	--field-names GT,PS,NS,AN,AC,AF,SS,FT,CGA_XR,CGA_ALTCALLS,CGA_FI,GQ,HQ,EHQ,GL,DP,AD,CGA_RDP,CGA_ODP,CGA_OAD,CGA_ORDP,CGA_PFAM,CGA_MIRB,CGA_RPT,CGA_SDO,CGA_SOMC,CGA_SOMR,CGA_SOMS,CGA_SOMF,GT,CGA_GP,CGA_NP,CGA_CP,CGA_PS,CGA_CT,CGA_TS,CGA_CL,CGA_LS,CGA_LAFS,CGA_LLAFS,CGA_ULAFS,CGA_SCL,CGA_SLS,CGA_LAFP,CGA_LLAFP,CGA_ULAFP,GT,FT,CGA_IS,CGA_IDC,CGA_IDCL,CGA_IDCR,CGA_RDC,CGA_NBET,CGA_ETS,CGA_KES,GT,FT,CGA_BF,CGA_MEDEL,MATEID,SVTYPE,CGA_BNDG,CGA_BNDGO,CGA_BNDMPC,CGA_BNDPOS,CGA_BNDDEF,CGA_BNDP

masterVarBeta-GS000004830-ASM.tsv: 
	${CGATOOLS}/cgatools generatemastervar --beta \
	--reference ${WHERE}/build37.crr \
	--output ${WHOLEGENOME}/GS00617-DNA_F01/ASM/masterVarBeta-GS000004830-ASM.tsv \
	--variants ${WHOLEGENOME}/GS00617-DNA_F01/ASM/var-GS000004830-ASM.tsv.bz2 \
	--annotations copy,evidence,gene,ncrna,repeat,segdup,cnv \
	--genome-root ${WHOLEGENOME}/GS00617-DNA_F01  \
	--repmask-data ${WHERE}/rmsk37.tsv.gz \
	--segdup-data ${WHERE}/segdup37.tsv.gz 

GS000004830.vcf:
	${CGATOOLS}/cgatools  mkvcf \
	--genome-root ${WHOLEGENOME}/GS00617-DNA_F01 \
	--source-names masterVar \
	--reference ${WHERE}/build37.crr \
	--output GS000004830.vcf --beta \
	--field-names GT,PS,NS,AN,AC,AF,SS,FT,CGA_XR,CGA_ALTCALLS,CGA_FI,GQ,HQ,EHQ,GL,DP,AD,CGA_RDP,CGA_ODP,CGA_OAD,CGA_ORDP,CGA_PFAM,CGA_MIRB,CGA_RPT,CGA_SDO,CGA_SOMC,CGA_SOMR,CGA_SOMS,CGA_SOMF,GT,CGA_GP,CGA_NP,CGA_CP,CGA_PS,CGA_CT,CGA_TS,CGA_CL,CGA_LS,CGA_LAFS,CGA_LLAFS,CGA_ULAFS,CGA_SCL,CGA_SLS,CGA_LAFP,CGA_LLAFP,CGA_ULAFP,GT,FT,CGA_IS,CGA_IDC,CGA_IDCL,CGA_IDCR,CGA_RDC,CGA_NBET,CGA_ETS,CGA_KES,GT,FT,CGA_BF,CGA_MEDEL,MATEID,SVTYPE,CGA_BNDG,CGA_BNDGO,CGA_BNDMPC,CGA_BNDPOS,CGA_BNDDEF,CGA_BNDP 

masterVarBeta-GS000004831-ASM.tsv: 
	${CGATOOLS}/cgatools generatemastervar --beta \
	--reference ${WHERE}/build37.crr \
	--output ${WHOLEGENOME}/GS00617-DNA_H01/ASM/masterVarBeta-GS000004831-ASM.tsv \
	--variants ${WHOLEGENOME}/GS00617-DNA_H01/ASM/var-GS000004831-ASM.tsv.bz2 \
	--annotations copy,evidence,gene,ncrna,repeat,segdup,cnv \
	--genome-root ${WHOLEGENOME}/GS00617-DNA_H01  \
	--repmask-data ${WHERE}/rmsk37.tsv.gz \
	--segdup-data ${WHERE}/segdup37.tsv.gz 

GS000004831.vcf:
	${CGATOOLS}/cgatools  mkvcf \
	--genome-root ${WHOLEGENOME}/GS00617-DNA_H01 \
	--source-names masterVar \
	--reference ${WHERE}/build37.crr \
	--output GS000004831.vcf --beta \
	--field-names GT,PS,NS,AN,AC,AF,SS,FT,CGA_XR,CGA_ALTCALLS,CGA_FI,GQ,HQ,EHQ,GL,DP,AD,CGA_RDP,CGA_ODP,CGA_OAD,CGA_ORDP,CGA_PFAM,CGA_MIRB,CGA_RPT,CGA_SDO,CGA_SOMC,CGA_SOMR,CGA_SOMS,CGA_SOMF,GT,CGA_GP,CGA_NP,CGA_CP,CGA_PS,CGA_CT,CGA_TS,CGA_CL,CGA_LS,CGA_LAFS,CGA_LLAFS,CGA_ULAFS,CGA_SCL,CGA_SLS,CGA_LAFP,CGA_LLAFP,CGA_ULAFP,GT,FT,CGA_IS,CGA_IDC,CGA_IDCL,CGA_IDCR,CGA_RDC,CGA_NBET,CGA_ETS,CGA_KES,GT,FT,CGA_BF,CGA_MEDEL,MATEID,SVTYPE,CGA_BNDG,CGA_BNDGO,CGA_BNDMPC,CGA_BNDPOS,CGA_BNDDEF,CGA_BNDP 


masterVarBeta-GS000005359-ASM.tsv: 
	${CGATOOLS}/cgatools generatemastervar --beta \
	--reference ${WHERE}/build37.crr \
	--output ${WHOLEGENOME}/GS00650-DNA_A01/ASM/masterVarBeta-GS000005359-ASM.tsv \
	--variants ${WHOLEGENOME}/GS00650-DNA_A01/ASM/var-GS000005359-ASM.tsv.bz2 \
	--annotations copy,evidence,gene,ncrna,repeat,segdup,cnv \
	--genome-root ${WHOLEGENOME}/GS00650-DNA_A01 \
	--repmask-data ${WHERE}/rmsk37.tsv.gz \
	--segdup-data ${WHERE}/segdup37.tsv.gz 

GS000005359.vcf:
	${CGATOOLS}/cgatools  mkvcf \
	--genome-root ${WHOLEGENOME}/GS00650-DNA_A01 \
	--source-names masterVar \
	--reference ${WHERE}/build37.crr \
	--output GS000005359.vcf --beta \
	--field-names GT,PS,NS,AN,AC,AF,SS,FT,CGA_XR,CGA_ALTCALLS,CGA_FI,GQ,HQ,EHQ,GL,DP,AD,CGA_RDP,CGA_ODP,CGA_OAD,CGA_ORDP,CGA_PFAM,CGA_MIRB,CGA_RPT,CGA_SDO,CGA_SOMC,CGA_SOMR,CGA_SOMS,CGA_SOMF,GT,CGA_GP,CGA_NP,CGA_CP,CGA_PS,CGA_CT,CGA_TS,CGA_CL,CGA_LS,CGA_LAFS,CGA_LLAFS,CGA_ULAFS,CGA_SCL,CGA_SLS,CGA_LAFP,CGA_LLAFP,CGA_ULAFP,GT,FT,CGA_IS,CGA_IDC,CGA_IDCL,CGA_IDCR,CGA_RDC,CGA_NBET,CGA_ETS,CGA_KES,GT,FT,CGA_BF,CGA_MEDEL,MATEID,SVTYPE,CGA_BNDG,CGA_BNDGO,CGA_BNDMPC,CGA_BNDPOS,CGA_BNDDEF,CGA_BNDP 



masterVarBeta-GS000007119-ASM.tsv: 
	${CGATOOLS}/cgatools generatemastervar --beta \
	--reference ${WHERE}/build37.crr \
	--output ${WHOLEGENOME}/GS00658-DNA_A02/ASM/masterVarBeta-GS000007119-ASM.tsv \
	--variants ${WHOLEGENOME}/GS00658-DNA_A02/ASM/var-GS000007119-ASM.tsv.bz2 \
	--annotations copy,evidence,gene,ncrna,repeat,segdup,cnv \
	--genome-root ${WHOLEGENOME}/GS00658-DNA_A02 \
	--repmask-data ${WHERE}/rmsk37.tsv.gz \
	--segdup-data ${WHERE}/segdup37.tsv.gz 

GS000007119.vcf:
	${CGATOOLS}/cgatools  mkvcf \
	--genome-root ${WHOLEGENOME}/GS00658-DNA_A02 \
	--source-names masterVar \
	--reference ${WHERE}/build37.crr \
	--output GS000007119.vcf --beta \
	--field-names GT,PS,NS,AN,AC,AF,SS,FT,CGA_XR,CGA_ALTCALLS,CGA_FI,GQ,HQ,EHQ,GL,DP,AD,CGA_RDP,CGA_ODP,CGA_OAD,CGA_ORDP,CGA_PFAM,CGA_MIRB,CGA_RPT,CGA_SDO,CGA_SOMC,CGA_SOMR,CGA_SOMS,CGA_SOMF,GT,CGA_GP,CGA_NP,CGA_CP,CGA_PS,CGA_CT,CGA_TS,CGA_CL,CGA_LS,CGA_LAFS,CGA_LLAFS,CGA_ULAFS,CGA_SCL,CGA_SLS,CGA_LAFP,CGA_LLAFP,CGA_ULAFP,GT,FT,CGA_IS,CGA_IDC,CGA_IDCL,CGA_IDCR,CGA_RDC,CGA_NBET,CGA_ETS,CGA_KES,GT,FT,CGA_BF,CGA_MEDEL,MATEID,SVTYPE,CGA_BNDG,CGA_BNDGO,CGA_BNDMPC,CGA_BNDPOS,CGA_BNDDEF,CGA_BNDP



chr4-GS000004830.sorted.bam: 
	${CGATOOLS}/cgatools evidence2sam \
	--beta \
	--evidence-dnbs=evidenceDnbs-chr4-GS000004830-ASM.tsv.bz2 \
	--reference=build37.crr | samtools view -uS - | \
	samtools sort -T gs4830_4.sorted -o chr4-GS000004830.sorted.bam && samtools index chr4-GS000004830.sorted.bam 

chr1-GS000007119.sorted.bam:
	${CGATOOLS}/cgatools evidence2sam \
	--beta \
	--evidence-dnbs=evidenceDnbs-chr1-GS000007119-ASM.tsv.bz2 \
	--reference=build37.crr | samtools view -uS - | \
	samtools sort -T gs7119_1.sorted -o chr1-GS000007119.sorted.bam && samtools index chr1-GS000007119.sorted.bam 


chr9-GS000007119.sorted.bam:
	${CGATOOLS}/cgatools evidence2sam \
	--beta \
	--evidence-dnbs=evidenceDnbs-chr9-GS000007119-ASM.tsv.bz2 \
	--reference=build37.crr | samtools view -uS - | \
	samtools sort -T gs7119_9.sorted -o chr9-GS000007119.sorted.bam && samtools index chr9-GS000007119.sorted.bam 


chr16-GS000007119.sorted.bam:
	${CGATOOLS}/cgatools evidence2sam \
	--beta \
	--evidence-dnbs=evidenceDnbs-chr16-GS000007119-ASM.tsv.bz2 \
	--reference=build37.crr | samtools view -uS - | \
	samtools sort -T gs7119_16.sorted -o chr16-GS000007119.sorted.bam && samtools index chr16-GS000007119.sorted.bam 


chr17-GS000007119.sorted.bam:
	${CGATOOLS}/cgatools evidence2sam \
	--beta \
	--evidence-dnbs=evidenceDnbs-chr17-GS000007119-ASM.tsv.bz2 \
	--reference=build37.crr | samtools view -uS - | \
	samtools sort -T gs7119_17.sorted -o chr17-GS000007119.sorted.bam && samtools index chr17-GS000007119.sorted.bam        


chr19-GS000007119.sorted.bam:
	${CGATOOLS}/cgatools evidence2sam \
	--beta \
	--evidence-dnbs=evidenceDnbs-chr19-GS000007119-ASM.tsv.bz2 \
	--reference=build37.crr | samtools view -uS - | \
	samtools sort -T gs7119_19.sorted -o chr19-GS000007119.sorted.bam && samtools index chr19-GS000007119.sorted.bam        

chr4-GS000004829.sorted.bam: 
	${CGATOOLS}/cgatools evidence2sam \
	--evidence-dnbs=evidenceDnbs-chr4-GS000004829-ASM.tsv.bz2 \
	--beta \
	--reference=build37.crr | samtools view -uS - | \
	samtools sort -T gs4829_4.sorted -o chr4-GS000004829.sorted.bam && samtools index chr4-GS000004829.sorted.bam 
        

chr9-GS000004829.sorted.bam: 
	${CGATOOLS}/cgatools evidence2sam \
	--evidence-dnbs=evidenceDnbs-chr9-GS000004829-ASM.tsv.bz2 \
	--beta \
	--reference=build37.crr | samtools view -uS - | \
	samtools sort -T gs4829_9.sorted -o chr9-GS000004829.sorted.bam && samtools index chr9-GS000004829.sorted.bam 

chr4-GS000005216.sorted.bam: 
	${CGATOOLS}/cgatools evidence2sam \
	--evidence-dnbs=evidenceDnbs-chr4-GS000005216-ASM.tsv.bz2 \
	--beta \
	--reference=build37.crr | samtools view -uS - | \
	samtools sort -T gs5216_4.sorted -o chr4-GS000005216.sorted.bam && samtools index chr4-GS000005216.sorted.bam 
	

chr9-GS000005216.sorted.bam: 
	${CGATOOLS}/cgatools evidence2sam \
	--evidence-dnbs=evidenceDnbs-chr9-GS000005216-ASM.tsv.bz2 \
	--beta \
	--reference=build37.crr | samtools view -uS - | \
	samtools sort -T gs5216_9.sorted -o chr9-GS000005216.sorted.bam && samtools index chr9-GS000005216.sorted.bam 



        




















