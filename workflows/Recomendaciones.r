# Hiperparametros  del LightGBM
  #  los que tienen un solo valor son los que van fijos
  #  los que tienen un vector,  son los que participan de la Bayesian Optimization

  param_local$lgb_param <- list(
    boosting = "gbdt", # puede ir  dart  , ni pruebe random_forest
    objective = "binary",
    metric = "custom",
    first_metric_only = TRUE,
    boost_from_average = TRUE,
    feature_pre_filter = FALSE,
    force_row_wise = TRUE, # para reducir warnings
    verbosity = -100,
    max_depth = -1L, # -1 significa no limitar,  por ahora lo dejo fijo
    min_gain_to_split = 0.0, # min_gain_to_split >= 0.0
    min_sum_hessian_in_leaf = 0.001, #  min_sum_hessian_in_leaf >= 0.0
    lambda_l1 = 0.0, # lambda_l1 >= 0.0
    lambda_l2 = 0.0, # lambda_l2 >= 0.0
    max_bin = 31L, # lo debo dejar fijo, no participa de la BO
    num_iterations = 9999, # un numero muy grande, lo limita early_stopping_rounds
    bagging_fraction = 1.0, # 0.0 < bagging_fraction <= 1.0
    pos_bagging_fraction = 1.0, # 0.0 < pos_bagging_fraction <= 1.0
    is_unbalance = FALSE, #

    drop_rate = 0.1, # 0.0 < neg_bagging_fraction <= 1.0
    max_drop = 50, # <=0 means no limit
    skip_drop = 0.5, # 0.0 <= skip_drop <= 1.0

    extra_trees = FALSE,
    
# Parte optmizada por BO
    neg_bagging_fraction = 0.4941,
    scale_pos_weight = 20,
    learning_rate = 0.0205,
    feature_fraction = 0.7492,
    num_leaves = 816,
    min_data_in_leaf = 223
  )
  # una Bayesian humilde, pero no descabellada
  param_local$bo_iteraciones <- bo_iteraciones # iteraciones de la Optimizacion Bayesiana
  return( exp_correr_script( param_local ) ) # linea fija
}
