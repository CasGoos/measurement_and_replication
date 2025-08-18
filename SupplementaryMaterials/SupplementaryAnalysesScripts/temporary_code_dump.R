#####{r internal_structure_information}
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

FA_aggregate_data <- data.frame(RMSEA = rep(NA, 19), 
                                RMSEA_se = rep(NA, 19), 
                                RMSEA_global_mean = rep(NA, 19), 
                                RMSEA_mean_sd = rep(NA, 19), 
                                N_factors_mode = rep(NA, 19),
                                unidimensional_ratio = rep(NA, 19),
                                Tau_N_P_10 = rep(NA, 19),
                                Tau_N_P_05 = rep(NA, 19),
                                Tau_N_P_01 = rep(NA, 19),
                                global_mean_spec = rep(NA, 19),
                                global_sd_spec = rep(NA, 19),
                                err_N_P_10 = rep(NA, 19),
                                err_N_P_05 = rep(NA, 19),
                                err_N_P_01 = rep(NA, 19))


### recreate FA_list
FA_list <- list(fa_caruso_2012, fa_husnu_2010, fa_nosek_2002_math, fa_nosek_2002_art,
                fa_anderson_2012_swl, fa_anderson_2012_pa, fa_anderson_2012_na,
                fa_giessner_2007, fa_norenzayan_2002, fa_zhong_2006, fa_monin_2001_most,
                fa_monin_2001_some, fa_cacioppo_1983_arg, fa_cacioppo_1983_nfc, 
                fa_de_fruyt_2000, fa_albarracin_2008_verb, fa_albarracin_2008_math,
                fa_shnabel_2008, fa_vohs_2008)



for (i in 1:19){
  data <- FA_list[[i]]
  
  tryCatch({
    RMSEA_estimate <- rma(yi = as.numeric(RMSEA), sei = as.numeric(RMSEA_se), data = data) # inverse variance weighting is on by default
    FA_aggregate_data$RMSEA[i] <- RMSEA_estimate$b
    FA_aggregate_data$RMSEA_se[i] <- RMSEA_estimate$se
    
  }, error = function(e) {
    
  })
  
  FA_aggregate_data$RMSEA_global_mean[i] <- mean(as.numeric(data$RMSEA), na.rm = TRUE)
  FA_aggregate_data$RMSEA_mean_sd[i] <- sd(as.numeric(data$RMSEA), na.rm = TRUE)
  
  FA_aggregate_data$N_factors_mode[i] <- Mode(data$N_factors)
  
  if("Yes" %in% data$unidimensional){
    FA_aggregate_data$unidimensional_ratio[i] <- table(data$unidimensional)[["Yes"]] / length(data$unidimensional)
  } else{
    FA_aggregate_data$unidimensional_ratio[i] <- 0
  }
  
  # count number of Tau differences (don't know anything better for now)
  FA_aggregate_data$Tau_N_P_10[i] <- sum(as.numeric(data$Tau_p_diff) < .1, na.rm = TRUE) / length(na.omit(data$Tau_p_diff))
  FA_aggregate_data$Tau_N_P_05[i] <- sum(as.numeric(data$Tau_p_diff) < .05, na.rm = TRUE) / length(na.omit(data$Tau_p_diff))
  FA_aggregate_data$Tau_N_P_01[i] <- sum(as.numeric(data$Tau_p_diff) < .01, na.rm = TRUE) / length(na.omit(data$Tau_p_diff))
  
  FA_aggregate_data$global_mean_spec[i] <- mean(as.numeric(data$mean_spec), na.rm = TRUE)
  FA_aggregate_data$global_sd_spec[i] <- sd(as.numeric(data$mean_spec), na.rm = TRUE)
  
  # count number of err differences (don't know anything better for now)
  FA_aggregate_data$err_N_P_10[i] <- sum(as.numeric(data$err_p_diff) < .1, na.rm = TRUE) / length(na.omit(data$err_p_diff))
  FA_aggregate_data$err_N_P_05[i] <- sum(as.numeric(data$err_p_diff) < .05, na.rm = TRUE) / length(na.omit(data$err_p_diff))
  FA_aggregate_data$err_N_P_01[i] <- sum(as.numeric(data$err_p_diff) < .01, na.rm = TRUE) / length(na.omit(data$err_p_diff))
}
