output -log_file irt_log.iclo
set_default_model_dichtomous 1PL
options -D 1.7
allocate_items_dist 44 -num_latent_dist_points 20
read_examinees ../skills/skill_9_train1.dat 44i1
starting_values_dichotomous
EM_steps -max_iter 2000
write_item_param irt_param_skill_9_train1.iclp
release_items_dist
