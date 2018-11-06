parent_dir='rcganu'
run="0"

device=0
ngpus=1

alpha=0.6

[ -d ${parent_dir} ] || mkdir ${parent_dir}
log_file="${parent_dir}/rcganu_alpha${alpha}_${run}_log.txt"
CUDA_VISIBLE_DEVICES=${device} python gan_resnet.py --dataset "cifar" \
  --algorithm "rcgan-u" --alpha ${alpha} --run ${run} \
  --log_file ${log_file} --parent_dir ${parent_dir} \
  --ngpus ${ngpus} --multi_gpu_multi_batch \
  --perm_classifier --confuse_init