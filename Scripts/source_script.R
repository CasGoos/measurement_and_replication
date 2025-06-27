# source_script


# Data Cleaning Functions ------------------------------------------------------
### renaming the columns and rows to accommodate the joining of the three 
### datasets.
renaming <- function(Data){
  # renaming columns
  colnames(Data) <- 
    c("many_labs_version", "rep_org", "title", "measure_name", "variable_name",
      "multi", "variable_order", "N", "N_items", "hypothesis_support", 
      "reliability_type", "reliability_type_text", "reliability_coeff",
      "def1", "op_version", "op_1", "op_2", "op_3", "op_4", "op_5", 
      "sel_existing", "sel_existing_text", "sel_1", "sel_2", "sel_3", "sel_4",
      "sel_psychometric_evidence", "sel_psychometric_evidence_text", "quant_1",
      "quant_2", "quant_3", "quant_4", "mod_check", "mod_1", "mod_2", "mod_3",
      "mod_4", "mod_5", "mod_6", "mod_time", "op_1_REV", "op_2_REV",
      "op_5_REV", "sel_1_REV", "sel_3_REV", "sel_psychometric_evidence_REV", 
      "sel_psychometric_evidence_text_REV", "quant_1_REV", "quant_2_REV", 
      "quant_3_REV", "mod_check_REV", "mod_1_REV", "mod_2_REV", "mod_3_REV", 
      "mod_4_REV", "mod_5_REV", "mod_6_REV", "inseperable_material")
  
  # renaming rows
  rownames(Data) <- 1:nrow(Data)
  
  return(Data)
}


### Fixing some coding misses.
fixing <- function(Data){
  Data$variable_name[79] <- "quote attribution effect"
  Data$N[3] <- "5284"
  Data$N[158] <- "1202"
  Data$reliability_type[50] <- "Not Reported"
  Data$reliability_type[127] <- "Not Reported"
  Data$op_1[145] <- "False"
  Data$op_3[121] <- "True"
  Data$op_5[157] <- "True"
  Data$sel_1[59] <- "True"
  Data$quant_2[113] <- "True"
  Data$mod_time[1] <- "Before"
  
  return(Data)
}



### Moving around of entries
restructuring <- function(Data){
  # removing missing entry 77
  Data <- data.frame(Data)[-77,]
  
  # Many labs 2.25 and 2.26, as well as 3.4 and 3.5 (for replications) were coded 
  # in reverse order thus need to be swapped in right order. Additionally, some
  # of the entries were included later than following their order, due to some
  # minor coding oversights.
  Coded_Data_Full_Restructured <- Data[1:18,]
  Coded_Data_Full_Restructured <- rbind(Coded_Data_Full_Restructured, 
                                        Data[148,])
  Coded_Data_Full_Restructured <- rbind(Coded_Data_Full_Restructured, 
                                        Data[19:23,])
  Coded_Data_Full_Restructured <- rbind(Coded_Data_Full_Restructured, 
                                        Data[147,])
  Coded_Data_Full_Restructured <- rbind(Coded_Data_Full_Restructured, 
                                        Data[24:28,])
  Coded_Data_Full_Restructured <- rbind(Coded_Data_Full_Restructured, 
                                        Data[153,])
  Coded_Data_Full_Restructured <- rbind(Coded_Data_Full_Restructured, 
                                        Data[29:40,])
  Coded_Data_Full_Restructured <- rbind(Coded_Data_Full_Restructured, 
                                        Data[154,])
  Coded_Data_Full_Restructured <- rbind(Coded_Data_Full_Restructured, 
                                        Data[42,])
  Coded_Data_Full_Restructured <- rbind(Coded_Data_Full_Restructured, 
                                        Data[41,])
  Coded_Data_Full_Restructured <- rbind(Coded_Data_Full_Restructured, 
                                        Data[155,])
  Coded_Data_Full_Restructured <- rbind(Coded_Data_Full_Restructured, 
                                        Data[43:49,])
  Coded_Data_Full_Restructured <- rbind(Coded_Data_Full_Restructured, 
                                        Data[156,])
  Coded_Data_Full_Restructured <- rbind(Coded_Data_Full_Restructured, 
                                        Data[51,])
  Coded_Data_Full_Restructured <- rbind(Coded_Data_Full_Restructured, 
                                        Data[50,])
  Coded_Data_Full_Restructured <- rbind(Coded_Data_Full_Restructured, 
                                        Data[52:76,])
  Coded_Data_Full_Restructured <- rbind(Coded_Data_Full_Restructured, 
                                        Data[157,])
  Coded_Data_Full_Restructured <- rbind(Coded_Data_Full_Restructured, 
                                        Data[77:88,])
  Coded_Data_Full_Restructured <- rbind(Coded_Data_Full_Restructured, 
                                        Data[149:152,])
  Coded_Data_Full_Restructured <- rbind(Coded_Data_Full_Restructured, 
                                        Data[89:146,])
  
  rownames(Coded_Data_Full_Restructured) <- 1:nrow(Coded_Data_Full_Restructured)
  
  return(Coded_Data_Full_Restructured)
}


### Recoding Dataset Content for Analysis
recoding <- function(Data){
  # changing the variable types for each column to better represent their 
  # intended variable type
  class(Data$many_labs_version) <- "numeric"
  Data$many_labs_version <- as.factor(Data$many_labs_version)
  Data$rep_org <- droplevels(as.factor(Data$rep_org))
  Data$multi <- droplevels(as.factor(Data$multi))
  Data$variable_order <- droplevels(as.factor(Data$variable_order))
  class(Data$N) <- "numeric"
  Data$N_items <- droplevels(as.factor(Data$N_items))
  Data$hypothesis_support <- droplevels(as.factor(Data$hypothesis_support))
  levels(Data$hypothesis_support) <- c("No", "Unclear", "Yes")
  Data$reliability_type <- droplevels(as.factor(Data$reliability_type))
  class(Data$reliability_coeff) <- "numeric"
  Data$def1 <- as.logical(Data$def1)
  Data$op_1 <- as.logical(Data$op_1)
  Data$op_2 <- as.logical(Data$op_2)
  Data$op_3 <- as.logical(Data$op_3)
  Data$op_4 <- as.logical(Data$op_4)
  Data$op_5 <- as.logical(Data$op_5)
  Data$sel_existing <- droplevels(as.factor(Data$sel_existing))
  Data$sel_1 <- as.logical(Data$sel_1)
  Data$sel_2 <- as.logical(Data$sel_2)
  Data$sel_3 <- as.logical(Data$sel_3)
  Data$sel_4 <- as.logical(Data$sel_4)
  Data$sel_psychometric_evidence <- 
    droplevels(as.factor(Data$sel_psychometric_evidence))
  Data$quant_1 <- as.logical(Data$quant_1)
  Data$quant_2 <- as.logical(Data$quant_2)
  Data$quant_3 <- as.logical(Data$quant_3)
  Data$quant_4 <- as.logical(Data$quant_4)
  Data$mod_check <- droplevels(as.factor(Data$mod_check))
  Data$mod_1 <- as.logical(Data$mod_1)
  Data$mod_2 <- as.logical(Data$mod_2)
  Data$mod_3 <- as.logical(Data$mod_3)
  Data$mod_4 <- as.logical(Data$mod_4)
  Data$mod_5 <- as.logical(Data$mod_5)
  Data$mod_6 <- as.logical(Data$mod_6)
  Data$mod_time <- droplevels(as.factor(Data$mod_time))
  Data$op_1_REV <- as.logical(Data$op_1_REV)
  Data$op_2_REV <- as.logical(Data$op_2_REV)
  Data$op_5_REV <- as.logical(Data$op_5_REV)
  Data$sel_1_REV <- as.logical(Data$sel_1_REV)
  Data$sel_3_REV <- as.logical(Data$sel_3_REV)
  Data$sel_psychometric_evidence_REV <- 
    droplevels(as.factor(Data$sel_psychometric_evidence_REV))
  Data$quant_1_REV <- as.logical(Data$quant_1_REV)
  Data$quant_2_REV <- as.logical(Data$quant_2_REV)
  Data$quant_3_REV <- as.logical(Data$quant_3_REV)
  Data$mod_check_REV <- droplevels(as.factor(Data$mod_check_REV))
  Data$mod_1_REV <- as.logical(Data$mod_1_REV)
  Data$mod_2_REV <- as.logical(Data$mod_2_REV)
  Data$mod_3_REV <- as.logical(Data$mod_3_REV)
  Data$mod_4_REV <- as.logical(Data$mod_4_REV)
  Data$mod_5_REV <- as.logical(Data$mod_5_REV)
  Data$mod_6_REV <- as.logical(Data$mod_6_REV)
  Data$inseperable_material <- droplevels(as.factor(Data$inseperable_material))
  
  return(Data)
}


### calculating total applicable qmps and attained qmps in total and per 
### category, for both revised and not revised data.
calculating <- function(Data){
  Data$def_count <- as.numeric(Data$def1)
  Data$def_count[is.na(Data$def_count)] <- 0
  Data$def_total <- as.numeric(!is.na(Data$def1))
  Data$def_ratio <- 1 - round(Data$def_count / Data$def_total, 4) 
  Data$def_ratio[is.na(Data$def_ratio)] <- 0
  
  Data$op_count <- rowSums(Data[16:20], na.rm = TRUE)
  Data$op_total <- rowSums(!is.na(Data[16:20]))
  Data$op_ratio <- 1 - round(Data$op_count / Data$op_total, 4)
  
  Data$sel_count <- rowSums(Data[23:26], na.rm = TRUE)
  Data$sel_total <- rowSums(!is.na(Data[23:26]))
  Data$sel_ratio <- 1 - round(Data$sel_count / Data$sel_total, 4) 
  
  Data$quant_count <- rowSums(Data[29:32], na.rm = TRUE)
  Data$quant_total <- rowSums(!is.na(Data[29:32]))
  Data$quant_ratio <- 1 - round(Data$quant_count / Data$quant_total, 4)  
  
  Data$mod_count <- rowSums(Data[34:39], na.rm = TRUE)
  Data$mod_total <- rowSums(!is.na(Data[34:39]))
  Data$mod_ratio <- 1 - round(Data$mod_count / Data$mod_total, 4) 
  
  Data$MP_total <- Data$def_total + Data$op_total + Data$sel_total + 
    Data$quant_total + Data$mod_total
  Data$MP_count <- Data$def_count + Data$op_count + 
    Data$sel_count + Data$quant_count + Data$mod_count
  Data$QMP_ratio <- 1 - round(Data$MP_count / Data$MP_total, 4) 
  
  Data$op_REV_count <- rowSums(Data[c(18,19,41,42,43)], na.rm = TRUE)
  Data$op_REV_total <- rowSums(!is.na(Data[c(18,19,41,42,43)]))
  Data$op_REV_ratio <- 1 - round(Data$op_REV_count / Data$op_REV_total, 4) 
  
  Data$sel_REV_count <- rowSums(Data[c(24,26,44,45)], na.rm = TRUE)
  Data$sel_REV_total <- rowSums(!is.na(Data[c(24,26,44,45)]))
  Data$sel_REV_ratio <- 1 - round(Data$sel_REV_count / Data$sel_REV_total, 4)  
  
  Data$quant_REV_count <- rowSums(Data[c(32,48,49,50)], na.rm = TRUE)
  Data$quant_REV_total <- rowSums(!is.na(Data[c(32,48,49,50)]))
  Data$quant_REV_ratio <- 1 - round(Data$quant_REV_count / Data$quant_REV_total, 
                                    4) 
  
  Data$mod_REV_count <- rowSums(Data[52:57], na.rm = TRUE)
  Data$mod_REV_total <- rowSums(!is.na(Data[52:57]))
  Data$mod_REV_ratio <- 1 - round(Data$mod_REV_count / Data$mod_REV_total, 4) 
  
  Data$MP_REV_count <- Data$def_count + Data$op_REV_count + 
    Data$sel_REV_count + Data$quant_REV_count + Data$mod_REV_count
  Data$MP_REV_total <- Data$def_total + Data$op_REV_total + 
    Data$sel_REV_total + Data$quant_REV_total + Data$mod_REV_total
  Data$QMP_REV_ratio <- 1 - round(Data$MP_REV_count / Data$MP_REV_total, 4) 
  
  return(Data)
}


# QMP Related Functions --------------------------------------------------------
# main data load and prep function
data_prep_h456 <- function(Data){
  # data prep for model (using the (y * (n - 1) + 0.5) / n to adjust for any 0 or 
  # 1 proportions in the data).
  Data$def_ratio <- adjust_ratio_vector(Data$def_ratio)
  Data$op_ratio <- adjust_ratio_vector(Data$op_ratio)
  Data$sel_ratio <- adjust_ratio_vector(Data$sel_ratio)
  Data$quant_ratio <- adjust_ratio_vector(Data$quant_ratio)
  Data$mod_ratio <- adjust_ratio_vector(Data$mod_ratio)
  Data$QMP_ratio <- adjust_ratio_vector(Data$QMP_ratio)
  Data$op_REV_ratio <- adjust_ratio_vector(Data$op_REV_ratio)
  Data$sel_REV_ratio <- adjust_ratio_vector(Data$sel_REV_ratio)
  Data$quant_REV_ratio <- adjust_ratio_vector(Data$quant_REV_ratio)
  Data$mod_REV_ratio <- adjust_ratio_vector(Data$mod_REV_ratio)
  Data$QMP_REV_ratio <- adjust_ratio_vector(Data$QMP_REV_ratio)
  
  Data$reliability_reported[Data$N_items == "multiple item measure"] <- 
    ifelse(Data$reliability_type[Data$N_items == "multiple item measure"] 
           != "Not Reported", TRUE, FALSE)
  
  return(Data)
  
  # removing the empty sel_psychometric_evidence_text & reliability_type_text 
  # column to prevent codebook generation issues.
  # Data_H5 <- subset(Data_H5, select = -c(sel_psychometric_evidence_text, reliability_type_text))
  # Data_H4 <- subset(Data_H4, select = -c(sel_psychometric_evidence_text))
}


# helper function for the function above
adjust_ratio_vector <- function(ratio_vector){
  # using the (y * (n - 1) + 0.5) / n to adjust for any 0 or 1 proportions in 
  # the data to ensure proper functioning of the beta-regression model.
  return((ratio_vector * (sum(!is.na(ratio_vector)) - 1) + 0.5) / sum(!is.na(ratio_vector)))
}



# sensitivity check (using a random intercept model) function
Sensitivity_H5 <- function(Data){
  return_list <- list(first = 0, revised = 0)
  # convert outcome variable to be usable with Gaussian distribution via
  # logit transform.
  Data$QMP <- log(Data$QMP_ratio /(1 - Data$QMP_ratio))
  Data$QMP_REV <- log(Data$QMP_REV_ratio /(1 - Data$QMP_REV_ratio))
  
  # running the model with initial QMP ratio's
  Check_H5 <- lmer(formula = QMP ~ 1 + hypothesis_support + 
                     (1|many_labs_version), data = Data)
  return_list[[1]] <- summary(Check_H5)$coefficients
  
  # running the model with revised QMP ratio's
  Check_H5_REV <- lmer(formula = QMP_REV ~ 1 + hypothesis_support + 
                         (1|many_labs_version), data = Data)
  return_list[[2]] <- summary(Check_H5_REV)$coefficients
  
  return(return_list) 
}


# creates and returns the associations between each of the QMP categories
Associations_H6 <- function(Data){
  return_list <- list(def_def = 0, def_op = 0, def_sel = 0, def_quant = 0, 
                      def_mod = 0, op_def = 0, op_op = 0, op_sel = 0, 
                      op_quant = 0, op_mod = 0, sel_def = 0, sel_op = 0, 
                      sel_sel = 0, sel_quant = 0, sel_mod = 0, quant_def = 0,
                      quant_op = 0, quant_sel = 0, quant_quant = 0, 
                      quant_mod = 0, mod_def = 0, mod_op = 0, mod_sel = 0, 
                      mod_quant = 0, mod_mod = 0, tot_def = 0, tot_op = 0, 
                      tot_sel = 0, tot_quant = 0, tot_mod = 0)
  # Associations between the QMP categories
  # Mod_ratio is compared on a subset of the data, because it has several 
  # missing cases, due to some files not having any modifications.
  return_list[[1]] <- summary(betareg(Rep_def_ratio ~ def_ratio, 
                                      data = Data))$coefficients[1]
  return_list[[2]] <- summary(betareg(Rep_def_ratio ~ op_ratio, 
                                      data = Data))$coefficients[1]
  return_list[[3]] <- summary(betareg(Rep_def_ratio ~ sel_ratio, 
                                      data = Data))$coefficients[1]
  return_list[[4]] <- summary(betareg(Rep_def_ratio ~ quant_ratio, 
                                      data = Data))$coefficients[1]
  return_list[[5]] <- summary(betareg(Rep_def_ratio ~ mod_ratio, 
                                      data = Data[!is.na(Data$mod_ratio),]))$coefficients[1]
  return_list[[6]] <- summary(betareg(Rep_op_ratio ~ def_ratio, 
                                      data = Data))$coefficients[1]
  return_list[[7]] <- summary(betareg(Rep_op_ratio ~ op_ratio, 
                                      data = Data))$coefficients[1]
  return_list[[8]] <- summary(betareg(Rep_op_ratio ~ sel_ratio, 
                                      data = Data))$coefficients[1]
  return_list[[9]] <- summary(betareg(Rep_op_ratio ~ quant_ratio, 
                                      data = Data))$coefficients[1]
  return_list[[10]] <- summary(betareg(Rep_op_ratio ~ mod_ratio, data = 
                                         Data[!is.na(Data$mod_ratio),]))$coefficients[1]
  return_list[[11]] <- summary(betareg(Rep_sel_ratio ~ def_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[12]] <- summary(betareg(Rep_sel_ratio ~ op_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[13]] <- summary(betareg(Rep_sel_ratio ~ sel_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[14]] <- summary(betareg(Rep_sel_ratio ~ quant_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[15]] <- summary(betareg(Rep_sel_ratio ~ mod_ratio, 
                                       data = Data[!is.na(Data$mod_ratio),]))$coefficients[1]
  return_list[[16]] <- summary(betareg(Rep_quant_ratio ~ def_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[17]] <- summary(betareg(Rep_quant_ratio ~ op_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[18]] <- summary(betareg(Rep_quant_ratio ~ sel_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[19]] <- summary(betareg(Rep_quant_ratio ~ quant_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[20]] <- summary(betareg(Rep_quant_ratio ~ mod_ratio, 
                                       data = Data[!is.na(Data$mod_ratio),]))$coefficients[1]
  return_list[[21]] <- summary(betareg(Rep_mod_ratio ~ def_ratio, 
                                       data = Data[!is.na(Data$mod_ratio),]))$coefficients[1]
  return_list[[22]] <- summary(betareg(Rep_mod_ratio ~ op_ratio, 
                                       data = Data[!is.na(Data$mod_ratio),]))$coefficients[1]
  return_list[[23]] <- summary(betareg(Rep_mod_ratio ~ sel_ratio, 
                                       data = Data[!is.na(Data$mod_ratio),]))$coefficients[1]
  return_list[[24]] <- summary(betareg(Rep_mod_ratio ~ quant_ratio, 
                                       data = Data[!is.na(Data$mod_ratio),]))$coefficients[1]
  return_list[[25]] <- summary(betareg(Rep_mod_ratio ~ mod_ratio, 
                                       data = Data[!is.na(Data$mod_ratio),]))$coefficients[1]
  return_list[[26]] <- summary(betareg(Rep_QMP_ratio ~ def_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[27]] <- summary(betareg(Rep_QMP_ratio ~ op_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[28]] <- summary(betareg(Rep_QMP_ratio ~ sel_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[29]] <- summary(betareg(Rep_QMP_ratio ~ quant_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[30]] <- summary(betareg(Rep_QMP_ratio ~ mod_ratio, 
                                       data = Data))$coefficients[1]
  
  return(return_list) 
}


# creates and returns the associations between each of the QMP categories 
# (revised)
Associations_H6_REV <- function(Data){
  return_list <- list(def_def = 0, def_op = 0, def_sel = 0, def_quant = 0, 
                      def_mod = 0, op_def = 0, op_op = 0, op_sel = 0, 
                      op_quant = 0, op_mod = 0, sel_def = 0, sel_op = 0, 
                      sel_sel = 0, sel_quant = 0, sel_mod = 0, quant_def = 0,
                      quant_op = 0, quant_sel = 0, quant_quant = 0, 
                      quant_mod = 0, mod_def = 0, mod_op = 0, mod_sel = 0, 
                      mod_quant = 0, mod_mod = 0, tot_def = 0, tot_op = 0, 
                      tot_sel = 0, tot_quant = 0, tot_mod = 0)
  # Associations between the QMP categories
  # Mod_ratio is compared on a subset of the data, because it has several 
  # missing cases, due to some files not having any modifications.
  return_list[[1]] <- summary(betareg(Rep_def_ratio ~ def_ratio, 
                                      data = Data))$coefficients[1]
  return_list[[2]] <- summary(betareg(Rep_def_ratio ~ op_REV_ratio, 
                                      data = Data))$coefficients[1]
  return_list[[3]] <- summary(betareg(Rep_def_ratio ~ sel_REV_ratio, 
                                      data = Data))$coefficients[1]
  return_list[[4]] <- summary(betareg(Rep_def_ratio ~ quant_REV_ratio, 
                                      data = Data))$coefficients[1]
  return_list[[5]] <- summary(betareg(Rep_def_ratio ~ mod_REV_ratio, 
                                      data = Data[!is.na(Data$mod_REV_ratio),]))$coefficients[1]
  return_list[[6]] <- summary(betareg(Rep_op_REV_ratio ~ def_ratio, 
                                      data = Data))$coefficients[1]
  return_list[[7]] <- summary(betareg(Rep_op_REV_ratio ~ op_REV_ratio, 
                                      data = Data))$coefficients[1]
  return_list[[8]] <- summary(betareg(Rep_op_REV_ratio ~ sel_REV_ratio, 
                                      data = Data))$coefficients[1]
  return_list[[9]] <- summary(betareg(Rep_op_REV_ratio ~ quant_REV_ratio, 
                                      data = Data))$coefficients[1]
  return_list[[10]] <- summary(betareg(Rep_op_REV_ratio ~ mod_REV_ratio, data = 
                                         Data[!is.na(Data$mod_REV_ratio),]))$coefficients[1]
  return_list[[11]] <- summary(betareg(Rep_sel_REV_ratio ~ def_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[12]] <- summary(betareg(Rep_sel_REV_ratio ~ op_REV_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[13]] <- summary(betareg(Rep_sel_REV_ratio ~ sel_REV_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[14]] <- summary(betareg(Rep_sel_REV_ratio ~ quant_REV_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[15]] <- summary(betareg(Rep_sel_REV_ratio ~ mod_REV_ratio, 
                                       data = Data[!is.na(Data$mod_REV_ratio),]))$coefficients[1]
  return_list[[16]] <- summary(betareg(Rep_quant_REV_ratio ~ def_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[17]] <- summary(betareg(Rep_quant_REV_ratio ~ op_REV_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[18]] <- summary(betareg(Rep_quant_REV_ratio ~ sel_REV_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[19]] <- summary(betareg(Rep_quant_REV_ratio ~ quant_REV_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[20]] <- summary(betareg(Rep_quant_REV_ratio ~ mod_REV_ratio, 
                                       data = Data[!is.na(Data$mod_REV_ratio),]))$coefficients[1]
  return_list[[21]] <- summary(betareg(Rep_mod_REV_ratio ~ def_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[22]] <- summary(betareg(Rep_mod_REV_ratio ~ op_REV_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[23]] <- summary(betareg(Rep_mod_REV_ratio ~ sel_REV_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[24]] <- summary(betareg(Rep_mod_REV_ratio ~ quant_REV_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[25]] <- summary(betareg(Rep_mod_REV_ratio ~ mod_REV_ratio, 
                                       data = Data[!is.na(Data$mod_REV_ratio),]))$coefficients[1]
  return_list[[26]] <- summary(betareg(Rep_QMP_REV_ratio ~ def_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[27]] <- summary(betareg(Rep_QMP_REV_ratio ~ op_REV_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[28]] <- summary(betareg(Rep_QMP_REV_ratio ~ sel_REV_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[29]] <- summary(betareg(Rep_QMP_REV_ratio ~ quant_REV_ratio, 
                                       data = Data))$coefficients[1]
  return_list[[30]] <- summary(betareg(Rep_QMP_REV_ratio ~ mod_REV_ratio, 
                                       data = Data))$coefficients[1]
  
  
  return(return_list) 
}


# sensitivity check (using a random intercept model) function
Sensitivity_H6 <- function(Data){
  return_list <- list(first = 0, revised = 0)
  # convert outcome variable to be usable with Gaussian distribution via
  # logit transform.
  Data$QMP <- log(Data$QMP_ratio /(1 - Data$QMP_ratio))
  Data$Rep_QMP <- log(Data$Rep_QMP_ratio /(1 - Data$Rep_QMP_ratio))
  Data$QMP_REV <- log(Data$QMP_REV_ratio /(1 - Data$QMP_REV_ratio))
  Data$Rep_QMP_REV <- log(Data$Rep_QMP_REV_ratio /(1 - Data$Rep_QMP_REV_ratio))
  
  # running the model with initial QMP ratio's
  Check_H6 <- lmer(formula = Rep_QMP ~ 1 + QMP + (1|many_labs_version), 
                   data = Data)
  return_list[[1]] <- summary(Check_H6)$coefficients
  
  # running the model with revised QMP ratio's
  Check_H6_REV <- lmer(formula = Rep_QMP_REV ~ 1 + QMP_REV + 
                         (1|many_labs_version), data = Data)
  return_list[[2]] <- summary(Check_H6_REV)$coefficients
  
  return(return_list) 
}


# function to convert betareg output to apa full style from papaja's apa_print
betareg_output_to_apa_full<- function(betareg_output, coefficient_number = 2){
  # extracting the relevant betareg output
  sum_object <- summary(betareg_output)$coefficients$mean[coefficient_number,]
  
  # extracting statistics from the betareg output
  estimate <- sum_object[1]
  std_error <- sum_object[2]
  z_value <- sum_object[3]
  p_value <- sum_object[4]
  
  # calculating the confidence intervals
  CI_LO <- estimate - (1.96 * std_error)
  CI_HI <- estimate + (1.96 * std_error)
  
  
  # formatting the statistics for printing
  estimate_string <- paste0("$b = ", apa_num(estimate), "$, ")
  CI_string <- paste0("95\\% CI $[", apa_num(CI_LO), ", ", 
                      apa_num(CI_HI), "]$, ")
  z_string <- paste0("$z = ", apa_num(z_value), "$, ")
  
  if(p_value < 0.001){
    p_string <- paste0("$p ", apa_p(p_value), "$")
  } else{
    p_string <- paste0("$p = ", apa_p(p_value), "$")
  }
  
  
  return(paste0(estimate_string, CI_string, z_string, p_string))
}


# function to convert betareg output to apa style for a simple table
betareg_output_to_apa_simple_table <- function(betareg_output, coefficient_number = 2){
  # extracting the relevant betareg output
  sum_object <- summary(betareg_output)$coefficients$mean[coefficient_number,]
  
  # extracting statistics from the betareg output
  estimate <- apa_num(sum_object[1])
  std_error <- apa_num(sum_object[2])
  p_value <- apa_p(sum_object[4])
  
  return(c(estimate, std_error, p_value))
}



# Reliability Related Functions ------------------------------------------------
### Hypothesis 2
# ASE (alpha standard error) formula for a single lab
ASE_for_Lab <- function(lab_data){
  # NOTE: only works with non-missing data:
  # Therefore, selecting only the complete cases for the ASE calculations
  lab_data <- lab_data[complete.cases(lab_data),]
  
  V_matrix <- cov(lab_data)
  p_num <- ncol(lab_data)
  j_vec <- rep(1, times = p_num)
  
  # calculating the Q-value from @duhachek2004AlphaStandardError
  Q_value <- ((2 * p_num^2) / ((p_num - 1)^2 * (crossprod(j_vec, V_matrix) %*% 
    j_vec)^3)) * ((crossprod(j_vec, V_matrix) %*% j_vec) * (sum(diag(
      V_matrix^2)) + sum(diag(V_matrix))^2) - 2*(sum(diag(V_matrix))) * (
        crossprod(j_vec, V_matrix^2) %*% j_vec))
  
  ASE <- as.numeric(sqrt(Q_value / nrow(lab_data)))
  
  return(ASE)
}


# obtaining the omega and alpha values for each measure (helper function).
omega_and_alpha <- function(Data, m_length){
  omega_and_alpha_vec <- c(t(omega(Data[2:m_length], nfactors = 1)[3:4]), 
                           ASE_for_Lab(Data[2:m_length]))
  
  names(omega_and_alpha_vec) <- c("alpha", "omega.tot", "ASE")
  
  return(omega_and_alpha_vec)
}


# obtaining the alpha values for 2.12.3, 2.20, & 3.2.1.1 (helper function).
just_alpha <- function(Data, m_length){
  alpha_vec <- c(t(psych::alpha(Data[2:m_length])$total[[2]]), NA, 
                 ASE_for_Lab(Data[2:m_length]))
 
  names(alpha_vec) <- c("alpha", "omega.tot", "ASE")
  
  return(alpha_vec)
}


### Hypothesis 2 & 3 Data Prep
# data load and prep function (including calculations)
data_prep_H23 <- function(Extracted_Data_List, Coded_Data_Replications){
  # Combining the data together (1.3, & 5.4 were omitted and for omega No 
  # 2.12.3, 2.20, & 3.2.1.1 due to issues with the running of the code for 
  # these data, likely due to negative relations or lack of variance)
  
  # creating an empty data frame to insert all the responses into
  Data_H23 <- data.frame(alpha = 0, omega.tot = 0, ASE = 0, tau = 0, QEp = 0, 
                        pi.lb = 0, pi.ub = 0, g = 0)
  
  # adding the alpha, omega (when applicable), and ASE into a dataframe for each
  # lab for each replication.
  for (i in 1:length(Extracted_Data_List)){
    if(i %in% c(7, 9, 11)){
      # for these specific measures we could not calculate omega without getting 
      # an error, so only alpha is calculated.
      reliability_frame <- data.frame(t(sapply(split(Extracted_Data_List[[i]], 
                                                     Extracted_Data_List[[i]]$g), 
                                               just_alpha, 
                                               ncol(Extracted_Data_List[[i]]))))
    } else{
      reliability_frame <- data.frame(t(sapply(split(Extracted_Data_List[[i]], 
                                                     Extracted_Data_List[[i]]$g), 
                                               omega_and_alpha, 
                                               ncol(Extracted_Data_List[[i]]))))
      reliability_frame$omega.tot <- as.numeric(reliability_frame$omega.tot)
    }
    reliability_frame$alpha <- as.numeric(reliability_frame$alpha)
    reliability_frame$ASE <- as.numeric(reliability_frame$ASE)
    reliability_frame$g <- as.factor(i)
    
    # conducting the reliability-generalization meta-analysis
    rma_model <- rma(yi = reliability_frame$alpha, sei = reliability_frame$ASE, 
                     method = "REML", control=list(stepadj=0.5, maxiter=1000))
    
    rma_prediction <- predict(rma_model)
    
    reliability_frame$tau <- sqrt(rma_model$tau2)
    reliability_frame$QEp <- rma_model$QEp
    reliability_frame$pi.lb <- rma_prediction$pi.lb
    reliability_frame$pi.ub <- rma_prediction$pi.ub
    
    Data_H23 <- rbind(Data_H23, reliability_frame)
  }
  
  Data_H23 <- Data_H23[-1,]
  
  # indexing the meta-analysis results with a specific index relating to a 
  # row (measure) in coded_data_replication
  Data_H23$reporting_index <- c(rep(10, 36), rep(11, 36), rep(14, 36), 
                                rep(14, 36), rep(29, 74), rep(30, 74), 
                                rep(31, 74), rep(34, 61), rep(39, 60), 
                                rep(42, 58), rep(51, 21), rep(51, 21), 
                                rep(59, 20), rep(60, 21), rep(61, 21), 
                                rep(65, 4), rep(66, 4), rep(74, 8), rep(76, 5))
  
  
  # adjusting for inappropriate order with double numbers
  Data_H23$g <- factor(Data_H23$g, levels= c(1, 2:9, 10:19))
  
  # changing the group variable to reflect measure descriptions from the text.
  # checked using:
  # Coded_Data_Replications[unique(Data_H23$reporting_index), 3], and
  # Coded_Data_Replications[unique(Data_H23$reporting_index), 5] 
  levels(Data_H23$g) <- c("Caruso et al. (2012)", "Husnu & Crisp (2010)", 
    "Nosek et al. (2002), Math", "Nosek et al. (2002), Art", 
    "Anderson et al. (2012), SWL", "Anderson et al. (2012), PA", 
    "Anderson et al. (2012), NA", "Giessner & Schubert, (2007)", 
    "Norenzayan et al. (2002)", "Zhong & Lijenquist (2006)", 
    "Monin & Miller (2001), most", "Monin & Miller (2001), some", 
    "Cacioppo et al. (1983), arg",  "Cacioppo et al. (1983), nfc", 
    "De Fruyt et al. (2000)", "Albarracín et al. (2008), exp 5 verb", 
    "Albarracín et al. (2008), exp 5 math", "Shnabel & Nadler (2008)",
    "Vohs & Schooler (2008)")
  
  Data_H23$g <- factor(Data_H23$g, labels = c("Caruso et al. (2012)", 
    "Husnu & Crisp (2010)", "Nosek et al. (2002), Math", 
    "Nosek et al. (2002), Art", "Anderson et al. (2012), SWL", 
    "Anderson et al. (2012), PA", "Anderson et al. (2012), NA", 
    "Giessner & Schubert, (2007)", "Norenzayan et al. (2002)", 
    "Zhong & Lijenquist (2006)", "Monin & Miller (2001), most", 
    "Monin & Miller (2001), some", "Cacioppo et al. (1983), arg",  
    "Cacioppo et al. (1983), nfc", "De Fruyt et al. (2000)", 
    "Albarracín et al. (2008), exp 5 verb", 
    "Albarracín et al. (2008), exp 5 math", "Shnabel & Nadler (2008)", 
    "Vohs & Schooler (2008)"))
  
  # creating an index of whether or not an effect replicated based on what was
  # coded from the paper
  Data_H23$replication_success <- c(Coded_Data_Replications[
    Data_H23$reporting_index, "hypothesis_support"])
  
  
  colnames(Data_H23) <- c("alpha", "omega", "ASE", "tau", "QEp", "pi.lb", 
                         "pi.ub", "g", "reporting_index", "replication_success")
  
  return(Data_H23)
}


# function to average over different studies
Data_prep_H23_avg <- function(Data_H23, Data_H456_Original){
  # results averaged across sites
  Data_H23_avg <- data.frame(# reliability variables
    alpha = sapply(split(Data_H23$alpha, 
                         Data_H23$g), mean),
    omega = sapply(split(Data_H23$omega, 
                         Data_H23$g), mean),
    # meta-analysis variables
    ASE = sapply(split(Data_H23$ASE, 
                       Data_H23$g), mean),
    tau = sapply(split(Data_H23$tau, 
                       Data_H23$g), mean),
    QEp = sapply(split(Data_H23$QEp, 
                       Data_H23$g), mean),
    pi.lb = sapply(split(Data_H23$pi.lb, 
                         Data_H23$g), mean),
    pi.ub = sapply(split(Data_H23$pi.ub, 
                         Data_H23$g), mean),
    # adding the grouping variable
    g = unique(Data_H23$g),
    # adding the unique reporting index, and 51 and 14 
    # twice because these measures were included twice 
    # in these analyses per coded measure.
    reporting_index = append(append(unique(
      Data_H23$reporting_index), 51, 10), 14, 3),
    # extracting the replication success
    replication_success = sapply(split(Data_H23$replication_success, 
                               Data_H23$g), head, 1))
  
  
  # adding information on the reported reliability coefficient 
  Data_H23_avg$coefficient_reported <- Data_H456_Original$reliability_coeff[
    Data_H23_avg$reporting_index]
  
  # the difference with the calculated average reliability coefficient
  Data_H23_avg$coeficient_difference <- Data_H23_avg$coefficient_reported - 
    Data_H23_avg$alpha
  
  # testing whether or not (for those studies that had a reported alpha) if
  # it was out of the 95% bounds around the mean calculated alpha 
  Data_H23_avg$significance_reported_coefficient <- NA
  
  for (i in 1:nrow(Data_H23_avg)){
    population_95_bounds <- quantile(Data_H23$alpha[Data_H23$reporting_index == 
                                                      Data_H23_avg$reporting_index[i]], probs = c(0.025, 0.975))
    
    Data_H23_avg$significance_reported_coefficient[i] <- ifelse(
      Data_H23_avg$coefficient_reported[i] < population_95_bounds[1], TRUE, ifelse(
        Data_H23_avg$coefficient_reported[i] > population_95_bounds[2] , TRUE, FALSE))
  }
  
  return(Data_H23_avg)
}


# function to add Odds-Ratio to apa_full output of logistic regressions
OR_to_apa_full_supplier <- function(apa_print_result, negative_b = FALSE, not_significant = FALSE){
  # the odds-ratio
  OR <- round(exp(as.numeric(substr(apa_print_result, start = 6, 
                                    stop = 9 + negative_b))), 1) 
  
  # the lower bound 95% confidence interval for the odds-ratio
  ORCILO <- round(exp(as.numeric(substr(apa_print_result, start = 23 + negative_b, 
                                        stop = 26 + negative_b * 2))), 1) 
  
  # the upper bound 95% confidence interval for the odds-ratio
  ORCIHI <- round(exp(as.numeric(substr(apa_print_result, start = 29 + negative_b * 2, 
                                        stop = 32 + negative_b * (2 - not_significant)))), 1) #changed 32 to 32
  
  # combining the calculated and existing results into a printable string
  result_string_with_OR <- paste0(substr(apa_print_result, start = 0, 
                                         stop = 12 + negative_b), "$OR = ", OR, 
                                  "$, 95\\% $[", ORCILO, ", ", ORCIHI,
                                  substr(apa_print_result, 
                                         start = 33 + negative_b * (2 - not_significant), stop = 99)) #changed 34 to 33
  
  return(result_string_with_OR)
}



# Apendix Analysis Functions ---------------------------------------------------
# creates and returns the associations between QMP categories
Associations_H6 <- function(Data_replications, Data_original){
  return_list <- list(def_def = 0, def_op = 0, def_sel = 0, def_quant = 0, 
                      def_mod = 0, def_tot = 0, op_def = 0, op_op = 0, 
                      op_sel = 0, op_quant = 0, op_mod = 0, op_tot = 0, 
                      sel_def = 0, sel_op = 0, sel_sel = 0, sel_quant = 0, 
                      sel_mod = 0, sel_tot = 0, quant_def = 0, quant_op = 0, 
                      quant_sel = 0, quant_quant = 0, quant_mod = 0, 
                      quant_tot = 0, mod_def = 0, mod_op = 0, mod_sel = 0, 
                      mod_quant = 0, mod_mod = 0, mod_tot = 0, tot_def = 0, 
                      tot_op = 0, tot_sel = 0, tot_quant = 0, tot_mod = 0, 
                      tot_tot = 0)
  # Associations between the QMP categories
  # Mod_ratio is compared on a subset of the data, because it has several 
  # missing cases, due to some files not having any modifications.
  
  
  for (i in 1:6){
    for (j in 1:6){
      return_list[[j + (6 * (i - 1))]] <- betareg_output_to_apa_simple_table(betareg(
        Data_replications[!is.na(Data_original[[j * 3]]) & !is.na(Data_replications[[i * 3]]), i * 3] ~ Data_original[!is.na(Data_original[[j * 3]]) & !is.na(Data_replications[[i * 3]]), j * 3]))
    }
  }
  
  
  return(return_list) 
}



# Plotting Related Functions ---------------------------------------------------
### Plot 23 data prep
data_prep_plot_23_alpha <- function(Data){
  # calculating the average alpha per group
  Data$avg.alpha <- ave(Data$alpha, Data$g)
  
  # making replication success a boolean which can affect order
  Data$replication_success <- ifelse(Data$replication_success == "Yes", 
                                     TRUE, FALSE)
    
  
  # reordering the plot from least to most reliable split by replication success
  Plot_23_data <- Data[order(-Data$replication_success, -Data$avg.alpha),]
  Plot_23_data <- Plot_23_data[Plot_23_data$alpha > 0,]
  Plot_23_data$g <- fct_inorder(as.factor(Plot_23_data$g), ordered = NA)
  
  
  return(Plot_23_data)
}


# and for omega
data_prep_plot_23_omega <- function(Data){
  # checking for each data row that they have a calculated omega coefficient
  Data <- Data[!is.na(Data$omega),]
  
  # making replication success a boolean which can affect order
  Data$replication_success <- ifelse(Data$replication_success == "Yes", 
                                     TRUE, FALSE)
  
  # calculating the average omega per group
  Data$avg.omega <- ave(Data$omega, Data$g)
  
  # reordering the plot from least to most reliable split by replication success
  Plot_23_data <- Data[order(-Data$replication_success, -Data$avg.omega),]
  Plot_23_data$g <- fct_inorder(as.factor(Plot_23_data$g), ordered = NA)
  
  
  return(Plot_23_data)
}


### 456 plots data prep
data_prep_plot_456 <- function(Data_original, Data_replication){
  # creating a dataset where each row contains the QMP ratio for each QMP type 
  # of each measure in the original and replication data.
  Plot_456_ratio_data <- gather(Data_original[c("def_ratio", "op_ratio", 
                                           "sel_ratio", "quant_ratio", "mod_ratio", "QMP_ratio")], 
                                    QMP_type, QMP_ratio, c("def_ratio", "op_ratio", "sel_ratio", 
                                                           "quant_ratio", "mod_ratio", "QMP_ratio"), factor_key = TRUE)
  
  Plot_456_ratio_rep_data <- gather(Data_replication[c("def_ratio", 
                                               "op_ratio", "sel_ratio", "quant_ratio", 
                                               "mod_ratio", "QMP_ratio")], QMP_type, QMP_ratio, 
                                        c("def_ratio", "op_ratio", "sel_ratio", 
                                          "quant_ratio", "mod_ratio", "QMP_ratio"), 
                                        factor_key = TRUE)
  
  
  # creating a QMP_ratio + 1 variable to enable creating the legend for the plot
  Plot_456_ratio_data$QMP_ratio_1 <- Plot_456_ratio_data$QMP_ratio
  Plot_456_ratio_rep_data$QMP_ratio_1 <- Plot_456_ratio_rep_data$QMP_ratio + 1
  
  
  # creating a dataset where each row contains the revised QMP ratio for each 
  # QMP type of each measure in the original and replication data.
  Plot_456_ratio_data_REV <- gather(Data_original[c("def_ratio", "op_REV_ratio", 
                                           "sel_REV_ratio", "quant_REV_ratio", "mod_REV_ratio", "QMP_REV_ratio")], 
                                    QMP_type, QMP_ratio_REV, c("def_ratio", "op_REV_ratio", "sel_REV_ratio", 
                                                           "quant_REV_ratio", "mod_REV_ratio", "QMP_REV_ratio"), factor_key = TRUE)

  Plot_456_ratio_rep_data_REV <- gather(Data_replication[c("def_ratio", 
                                               "op_REV_ratio", "sel_REV_ratio", "quant_REV_ratio", 
                                               "mod_REV_ratio", "QMP_REV_ratio")], QMP_type, QMP_ratio_REV, 
                                        c("def_ratio", "op_REV_ratio", "sel_REV_ratio", 
                                          "quant_REV_ratio", "mod_REV_ratio", "QMP_REV_ratio"), 
                                        factor_key = TRUE)

  
  # creating nicer names for in the graph
  levels(Plot_456_ratio_data_REV$QMP_type) <- c("Definition", 
                                                "Operationalisation",
                                                "Selection", "Quantification", 
                                                "Modification", "Total")
  levels(Plot_456_ratio_rep_data_REV$QMP_type) <- c("Definition", 
                                                    "Operationalisation", "Selection", 
                                                    "Quantification", "Modification", 
                                                    "Total")
  
  # adding the labels of original and replication to each of the QMP ratios
  Plot_456_ratio_data_REV$RepOrg <- as.factor(rep("Original", 
                                                  times = nrow(Plot_456_ratio_data_REV)))
  Plot_456_ratio_rep_data_REV$RepOrg <- as.factor(rep("Replication", 
                                                      times = nrow(Plot_456_ratio_data_REV)))
  
  # creating a revised QMP_ratio + 1 variable to enable creating the legend for 
  # the plot
  Plot_456_ratio_data_REV$QMP_ratio_1_REV <- Plot_456_ratio_data_REV$QMP_ratio
  Plot_456_ratio_rep_data_REV$QMP_ratio_1_REV <- Plot_456_ratio_rep_data_REV$QMP_ratio + 1
  
  # combining the original, replication, revised original, and revised 
  # replication together into one dataset.
  Plot_456_data <- cbind(rbind(Plot_456_ratio_data[,2:3], Plot_456_ratio_rep_data[,2:3]), 
                         rbind(Plot_456_ratio_data_REV, Plot_456_ratio_rep_data_REV))
  
  
  return(Plot_456_data)
}


### Function to extract legend from a plot so that it can be added to plot 456
get_legend <- function(a_plot){ 
  tmp <- ggplot_gtable(ggplot_build(a_plot)) 
  leg <- which(sapply(tmp$grobs, function(x) x$name) == "guide-box") 
  legend <- tmp$grobs[[leg]] 
  legend
} 



### 46 plots data prep
data_prep_plot_46 <- function(Data_original, Data_replication){
  # combining the datasets
  colnames(Data_replication) <- paste0("Rep_", colnames(Data_replication))
  Data <- cbind(Data_original, Data_replication)
  
  
  # renaming the column names to be shorter and fit easier
  colnames(Data) <- c("Def.Ratio", "Op.Ratio", "Sel.Ratio", 
                      "Quant.Ratio", "Mod.Ratio", "QMP.Ratio", "Rep.Def.Ratio", "Rep.Op.Ratio", 
                      "Rep.Sel.Ratio", "Rep.Quant.Ratio", "Rep.Mod.Ratio", "Rep.QMP.Ratio")
  
  # putting into rows both the type and ratio of each combination of a specific 
  # category of a QMP for each measure in original articles and in replications.
  Plot_46_data <- gather(Data, QMP_type, QMP_ratio, 
                         c("Def.Ratio", "Op.Ratio", "Sel.Ratio", "Quant.Ratio", 
                           "Mod.Ratio", "QMP.Ratio"), factor_key = TRUE)
  
  Plot_46_data <- gather(Plot_46_data, QMP_Rep_type, QMP_Rep_ratio, 
                         c("Rep.Def.Ratio", "Rep.Op.Ratio", "Rep.Sel.Ratio", 
                           "Rep.Quant.Ratio", "Rep.Mod.Ratio", "Rep.QMP.Ratio"), 
                         factor_key = TRUE)
  
  return(Plot_46_data)
}

