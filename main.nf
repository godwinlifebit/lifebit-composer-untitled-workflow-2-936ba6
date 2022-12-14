nextflow.enable.dsl=2

include { gwas_vcf_regenie_1 } from './modules/gwas_vcf_regenie_1/module.nf'

workflow {
input1 = Channel.fromPath(params.gwas_vcf_regenie_1.ch_user_input_vcf)
input2 = Channel.fromPath(params.gwas_vcf_regenie_1.ch_king_reference_data).splitCsv(sep: ';').map { row -> tuple(evaluate(row[0]), row[1], row[2], row[3]) }
input3 = Channel.fromPath(params.gwas_vcf_regenie_1.ch_input_pheno_transform)
input4 = Channel.fromPath(params.gwas_vcf_regenie_1.ch_high_ld_regions)
input5 = Channel.fromPath(params.gwas_vcf_regenie_1.ch_gwas_cat)
input6 = Channel.fromPath(params.gwas_vcf_regenie_1.ch_ld_scores)
input7 = Channel.fromPath(params.gwas_vcf_regenie_1.ch_pheno)
gwas_vcf_regenie_1(input1, input2, input3, input4, input5, input6, input7)
}
