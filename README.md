# Untitled Workflow #2

## Description



## Components

The present workflow is composed by the following unique components (Note that some components may be repeated):

### lifebitai_gwas_vcf_regenie

**Description**: This pipeline performs pre-GWAS QC, ancestry inference, and association testing for phenotype + genotype data. The pipeline is also capable of performing multiple association analyses in parallel according to a specification file and can do so using multiple GWAS tools.\
**Inputs**: 7\
**Outputs**: 3\
**Parameters**: 31\
**Authors**: 

## Inputs

- `--gwas_vcf_regenie_1.ch_user_input_vcf`: 
- `--gwas_vcf_regenie_1.ch_king_reference_data`: 
- `--gwas_vcf_regenie_1.ch_input_pheno_transform`: 
- `--gwas_vcf_regenie_1.ch_high_ld_regions`: 
- `--gwas_vcf_regenie_1.ch_gwas_cat`: 
- `--gwas_vcf_regenie_1.ch_ld_scores`: 
- `--gwas_vcf_regenie_1.ch_pheno`: 
## Parameters

### Required

- `--gwas_vcf_regenie_1.regenie_min_imputation_score`: Ignore variants with imputation score < threshold during regenie analysis
    - **Component**: gwas_vcf_regenie_1 
    - Type: number



### Optional

- `--gwas_vcf_regenie_1.sex_check`: Whether the sample sex_check should be run
    - **Component**: gwas_vcf_regenie_1 
    - Type: boolean
    - Default: `True` 

- `--gwas_vcf_regenie_1.remove_related_samples`: Whether related samples should be removed
    - **Component**: gwas_vcf_regenie_1 
    - Type: boolean
    - Default: `True` 

- `--gwas_vcf_regenie_1.run_ancestry_inference`: Whether the ancestry inference should be run
    - **Component**: gwas_vcf_regenie_1 
    - Type: boolean
    - Default: `True` 

- `--gwas_vcf_regenie_1.run_pca`: Whether the PCA should be run
    - **Component**: gwas_vcf_regenie_1 
    - Type: boolean
    - Default: `True` 

- `--gwas_vcf_regenie_1.pheno_transform`: Whether to transform phenotypes
    - **Component**: gwas_vcf_regenie_1 
    - Type: boolean

- `--gwas_vcf_regenie_1.regenie_min_mac`: Ignore variants with minor allele count < threshold during regenie analysis
    - **Component**: gwas_vcf_regenie_1 
    - Type: number
    - Default: `5` 

- `--gwas_vcf_regenie_1.remove_outliers_maxiter`: Maximum number of outlier removal iterations to carry out
    - **Component**: gwas_vcf_regenie_1 
    - Type: number
    - Default: `5` 

- `--gwas_vcf_regenie_1.remove_outliers_sigma`: Number of standard deviations from the mean along a PC axis which an individual must exceed to be removed as an outlier
    - **Component**: gwas_vcf_regenie_1 
    - Type: number
    - Default: `6` 

- `--gwas_vcf_regenie_1.miss_test_p_threshold`: For focal phenotypes that are binary, filter out variants with significantly unbalanced distribution of missingness between cases and controls
    - **Component**: gwas_vcf_regenie_1 
    - Type: number
    - Default: `1e-05` 

- `--gwas_vcf_regenie_1.phenotype_colname`: If not using a phenotype transformation file, specify the focal phenotype in the phenofile 
    - **Component**: gwas_vcf_regenie_1 
    - Type: string
    - Default: `false` 

- `--gwas_vcf_regenie_1.number_of_files_to_process`: Number of files to be processed
    - **Component**: gwas_vcf_regenie_1 
    - Type: number
    - Default: `3` 

- `--gwas_vcf_regenie_1.q_filter`: MAF threshold filter for bcftools to apply before converting input VCFs to PLINK format
    - **Component**: gwas_vcf_regenie_1 
    - Type: string
    - Default: `0.005:minor` 

- `--gwas_vcf_regenie_1.covariate_cols`: Column names of covariates to be included in GWAS, supplied in comma-separated fashion e.g. sex,age,smoking_status. Column names should reflect those in in file supplied via --pheno_data.
    - **Component**: gwas_vcf_regenie_1 
    - Type: string
    - Default: `ALL` 

- `--gwas_vcf_regenie_1.miss`: Rilter out all variants with missingness > threshold
    - **Component**: gwas_vcf_regenie_1 
    - Type: number
    - Default: `0.1` 

- `--gwas_vcf_regenie_1.maf`: Filter out all variants with minor allele frequency < threshold
    - **Component**: gwas_vcf_regenie_1 
    - Type: number
    - Default: `0.05` 

- `--gwas_vcf_regenie_1.mind_threshold`: For focal phenotypes that are binary, filter out variants with significantly unbalanced distribution of missingness between cases and controls
    - **Component**: gwas_vcf_regenie_1 
    - Type: number
    - Default: `1e-05` 

- `--gwas_vcf_regenie_1.mac`: Filter out all variants with minor allele count < threshold
    - **Component**: gwas_vcf_regenie_1 
    - Type: number
    - Default: `1` 

- `--gwas_vcf_regenie_1.king_coefficient`: Threshold of relatedness above which to remove one member of each pair of individuals with relatedness higher than the threshold
    - **Component**: gwas_vcf_regenie_1 
    - Type: number
    - Default: `0.0884` 

- `--gwas_vcf_regenie_1.king_plink_memory`: Amount of memory available for the king task
    - **Component**: gwas_vcf_regenie_1 
    - Type: number
    - Default: `7000` 

- `--gwas_vcf_regenie_1.min_subpop_size`: Minimum size for a subpopulation to proceed to downstream analysis; subpopulations smaller than N will be discarded.
    - **Component**: gwas_vcf_regenie_1 
    - Type: number
    - Default: `100` 

- `--gwas_vcf_regenie_1.number_pcs`: Number of principal components to calculate
    - **Component**: gwas_vcf_regenie_1 
    - Type: number
    - Default: `20` 

- `--gwas_vcf_regenie_1.extracted_prune_region`: Whether to extract the prune regions
    - **Component**: gwas_vcf_regenie_1 
    - Type: boolean
    - Default: `True` 

- `--gwas_vcf_regenie_1.hwe_threshold`: Significance threshold for Hardy-Weinberg Equilibrium.
    - **Component**: gwas_vcf_regenie_1 
    - Type: number
    - Default: `1e-05` 

- `--gwas_vcf_regenie_1.hwe_test`: Type of test done for Hardy-Weinberge Equilibrium. Default = 'midp' which stands for the mid-p adjustment (plink's recommended option). Favours filtering of variants with more missing data.
    - **Component**: gwas_vcf_regenie_1 
    - Type: string
    - Default: `midp` 

- `--gwas_vcf_regenie_1.ld_window_size`: Window size for LD-pruning
    - **Component**: gwas_vcf_regenie_1 
    - Type: number
    - Default: `50` 

- `--gwas_vcf_regenie_1.ld_step_size`: Step size for LD-pruning.
    - **Component**: gwas_vcf_regenie_1 
    - Type: number
    - Default: `10` 

- `--gwas_vcf_regenie_1.ld_r2_threshold`: R2 correlation threshold for LD-pruning
    - **Component**: gwas_vcf_regenie_1 
    - Type: number
    - Default: `0.1` 

- `--gwas_vcf_regenie_1.map_pos2rsid`: Use variant coordinates to identify the rsid for each variant in the output (when false, variants with no rsid will be dropped from the output).
    - **Component**: gwas_vcf_regenie_1 
    - Type: boolean

- `--gwas_vcf_regenie_1.genome_build`: Manually specifiy the genome build of the input data (e.g. "GRCh38"). The pipeline is marginally sped up if this parameter is specified, however, if unset, the build will be inferred by MungeSumstats.
    - **Component**: gwas_vcf_regenie_1 
    - Type: string
    - Default: `GRCh38` 

- `--gwas_vcf_regenie_1.outdir`: Output directory for the results
    - **Component**: gwas_vcf_regenie_1 
    - Type: path
    - Default: `results/` 

