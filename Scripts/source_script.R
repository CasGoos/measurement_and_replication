# source_script

# Data Cleaning Functions ------------------------------------------------------
### renaming the columns and rows to accommodate the joining of the three 
### datasets.
renaming <- function(Data){
  # renaming columns
  colnames(Data) <- 
    c("many_labs_version", "rep_org", "title", "measure_name", "variable_name",
      "multi", "appearance", "N", "N_items", "hypothesis_support", 
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
  # changing the variable types for each column
  class(Data$many_labs_version) <- "numeric"
  Data$rep_org <- droplevels(as.factor(Data$rep_org))
  Data$multi <- droplevels(as.factor(Data$multi))
  Data$appearance <- droplevels(as.factor(Data$appearance))
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
### Hypothesis 2 
# data load and prep function
data_prep_H2 <- function(Data_Original, Data_Replications){
  # data prep for model (using the (y * (n - 1) + 0.5) / n to adjust for any 0 
  # or 1 proportions in the data).
  Data_H2 <- rbind(Data_Original, Data_Replications)
  Data_H2$QMP_ratio <- ((Data_H2$QMP_ratio * (77 - 1) + 0.5) / 77)
  Data_H2$QMP_REV_ratio <- ((Data_H2$QMP_REV_ratio * (77 - 1) + 0.5) / 77)
  
  # removing the empty sel_psychometric_evidence_text column to prevent codebook
  # generation issues.
  Data_H2 <- subset(Data_H2, select = -c(sel_psychometric_evidence_text))
  return(Data_H2)
}

# modelling and results returning function
Model_H2 <- function(Data){
  return_list <- list(first = 0, revised = 0)
  # running the models one with none revised QMP ratio's and one with
  Model_H2 <- betareg(QMP_ratio ~ rep_org, data = Data)
  return_list[[1]] <- summary(Model_H2)$coefficients
  
  Model_H2_REV <- betareg(QMP_REV_ratio ~ rep_org, data = Data)
  return_list[[2]] <- summary(Model_H2_REV)$coefficients
  
  return(return_list) 
}


### Hypothesis 5
# data load and prep function
data_prep_H5 <- function(Data_Replications){
  # data prep for model (using the (y * (n - 1) + 0.5) / n to adjust for any 0 
  # or 1 proportions in the data).
  Data_H5 <- Data_Replications[-c(53:55),]
  Data_H5$hypothesis_support <- droplevels(Data_H5$hypothesis_support)
  levels(Data_H5$hypothesis_support) <- c(FALSE, TRUE)
  Data_H5$hypothesis_support <- as.logical(Data_H5$hypothesis_support)
  Data_H5$QMP_ratio <- ((Data_H5$QMP_ratio * (77 - 1) + 0.5) / 77)
  Data_H5$QMP_REV_ratio <- ((Data_H5$QMP_REV_ratio * (77 - 1) + 0.5) / 77)
  Data_H5$many_labs_version <- as.factor(Data_H5$many_labs_version)
  
  # removing the empty sel_psychometric_evidence_text & reliability_type_text 
  # column to prevent codebook generation issues.
  Data_H5 <- subset(Data_H5, select = -c(sel_psychometric_evidence_text, 
                                         reliability_type_text))
  
  return(Data_H5)
}

# modelling and results returning function
Model_H5 <- function(Data){
  return_list <- list(first = 0, revised = 0)
  # running the models one with none revised QMP ratio's and one with
  Model_H5 <- betareg(QMP_ratio ~ hypothesis_support, data = Data)
  return_list[[1]] <- summary(Model_H5)$coefficients
  
  Model_H5_REV <- betareg(QMP_REV_ratio ~ hypothesis_support, data = Data)
  return_list[[2]] <- summary(Model_H5_REV)$coefficients
  
  return(return_list) 
}

# sensitivity check (using a random intercept model) function
Sensitivity_H5 <- function(Data){
  return_list <- list(first = 0, revised = 0)
  # convert outcome variable to be usable with Gaussian distribution via
  # logit transform.
  Data$QMP <- log(Data$QMP_ratio /(1 - Data$QMP_ratio))
  Data$QMP_REV <- log(Data$QMP_REV_ratio /(1 - Data$QMP_REV_ratio))
  
  # running the models one with none revised QMP ratio's and one with
  Check_H5 <- lmer(formula = QMP ~ 1 + hypothesis_support + 
                     (1|many_labs_version), data = Data)
  return_list[[1]] <- summary(Check_H5)$coefficients
  
  Check_H5_REV <- lmer(formula = QMP_REV ~ 1 + hypothesis_support + 
                         (1|many_labs_version), data = Data)
  return_list[[2]] <- summary(Check_H5_REV)$coefficients
  
  return(return_list) 
}


### Hypothesis 6
# data load and prep function
data_prep_H6 <- function(Data_Original, Data_Replications){
  # data prep for model (using the (y * (n - 1) + 0.5) / n to adjust for any 0 
  # or 1 proportions in the data).
  Data_H6 <- cbind(Data_Original[59:91], Data_Replications[59:91])
  colnames(Data_H6) <- c(colnames(Data_H6[1:33]), 
                         paste("Rep", colnames(Data_H6[34:66]), sep = "_"))
  Data_H6[3] <- ((Data_H6[3] * (77 - 1) + 0.5) / 77)
  Data_H6[6] <- ((Data_H6[6] * (77 - 1) + 0.5) / 77)
  Data_H6[9] <- ((Data_H6[9] * (77 - 1) + 0.5) / 77)
  Data_H6[12] <- ((Data_H6[12] * (77 - 1) + 0.5) / 77)
  Data_H6[15] <- ((Data_H6[15] * (7 - 1) + 0.5) / 7)
  Data_H6[18] <- ((Data_H6[18] * (77 - 1) + 0.5) / 77)
  Data_H6[21] <- ((Data_H6[21] * (77 - 1) + 0.5) / 77)
  Data_H6[24] <- ((Data_H6[24] * (77 - 1) + 0.5) / 77)
  Data_H6[27] <- ((Data_H6[27] * (77 - 1) + 0.5) / 77)
  Data_H6[30] <- ((Data_H6[30] * (8 - 1) + 0.5) / 8)
  Data_H6[33] <- ((Data_H6[33] * (77 - 1) + 0.5) / 77)
  Data_H6[36] <- ((Data_H6[36] * (77 - 1) + 0.5) / 77)
  Data_H6[39] <- ((Data_H6[39] * (77 - 1) + 0.5) / 77)
  Data_H6[42] <- ((Data_H6[42] * (77 - 1) + 0.5) / 77)
  Data_H6[45] <- ((Data_H6[45] * (77 - 1) + 0.5) / 77)
  Data_H6[48] <- ((Data_H6[48] * (52 - 1) + 0.5) / 52)
  Data_H6[51] <- ((Data_H6[51] * (77 - 1) + 0.5) / 77)
  Data_H6[54] <- ((Data_H6[54] * (77 - 1) + 0.5) / 77)
  Data_H6[57] <- ((Data_H6[57] * (77 - 1) + 0.5) / 77)
  Data_H6[60] <- ((Data_H6[60] * (77 - 1) + 0.5) / 77)
  Data_H6[63] <- ((Data_H6[63] * (42 - 1) + 0.5) / 42)
  Data_H6[66] <- ((Data_H6[66] * (77 - 1) + 0.5) / 77)
  Data_H6$many_labs_version <- as.factor(Data_Replications$many_labs_version)
  
  return(Data_H6)
}

# modelling and results returning function for overall effect (unplanned)
Model_H6 <- function(Data){
  return_list <- list(first = 0, revised = 0)
  # running the models one with none revised QMP ratio's and one with
  Model_H6 <- betareg(Rep_QMP_ratio ~ QMP_ratio, data = Data)
  return_list[[1]] <- summary(Model_H6)$coefficients
  
  Model_H6_REV <- betareg(Rep_QMP_REV_ratio ~ QMP_REV_ratio, data = Data)
  return_list[[2]] <- summary(Model_H6_REV)$coefficients
  
  return(return_list) 
}

# creates and returns the associations between QMP categories
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

# creates and returns the associations between QMP categories (revised)
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
  
  # running the models one with none revised QMP ratio's and one with
  Check_H6 <- lmer(formula = Rep_QMP ~ 1 + QMP + (1|many_labs_version), 
                   data = Data)
  return_list[[1]] <- summary(Check_H6)$coefficients
  
  Check_H6_REV <- lmer(formula = Rep_QMP_REV ~ 1 + QMP_REV + 
                         (1|many_labs_version), data = Data)
  return_list[[2]] <- summary(Check_H6_REV)$coefficients
  
  return(return_list) 
}



# Reliability Related Functions ------------------------------------------------
### Hypothesis 1
# data load and prep function
data_prep_H1 <- function(Data_Original, Data_Replications){
  # Coded Data prep
  Data_H1 <- rbind(Data_Original, Data_Replications)
  Data_H1$reliability_reported[Data_H1$N_items == "multiple item measure"] <- 
    ifelse(Data_H1$reliability_type[Data_H1$N_items == "multiple item measure"] 
           != "Not Reported", TRUE, FALSE)
  
  # removing the empty sel_psychometric_evidence_text column to prevent codebook
  # generation issues.
  Data_H1 <- subset(Data_H1, select = -c(sel_psychometric_evidence_text))
  
  return(Data_H1)
}


### Hypothesis 3
# obtaining the omega and alpha values for each measure (helper function)
omega_and_alpha <- function(Data, m_length){
  return(omega(Data[2:m_length], nfactors = 1)[3:4])
}

# obtaining the alpha values for 2.12.3, 2.20, & 3.2.1.1 (helper function)
just_alpha <- function(Data, m_length){
  return(c(alpha = psych::alpha(Data[2:m_length])$total[[2]], omega.tot = NA))
}


# data load and prep function (including calculations)
data_prep_H3 <- function(data_1.10_clean, data_1.11_clean, data_1.12.3.1_clean, 
                         data_1.12.3.2_clean, data_2.10.1_clean, data_2.12.1_clean, data_2.12.2_clean, 
                         data_2.12.3_clean, data_2.15_clean, data_2.20_clean, data_2.23_clean, 
                         data_3.2.1.1_clean, data_3.2.1.2_clean, data_3.7.2_clean, data_3.8.2_clean, 
                         data_5.1.1_clean, data_5.7_clean, data_5.9.1_clean){
  # Combining the data together (no 1.3, no 5.4, & no 3.7.1, and for omega no 
  # 2.12.3, no 2.20, & no 3.2.1.1 due to issues with the running of the code for 
  # this data, likely due to negative relations or lack of variance)
  Extracted_Data_List <- list(data_1.10_clean, data_1.11_clean, 
    data_1.12.3.1_clean, data_1.12.3.2_clean, data_2.10.1_clean, 
    data_2.12.1_clean, data_2.12.2_clean, data_2.12.3_clean, data_2.15_clean, 
    data_2.20_clean, data_2.23_clean, data_3.2.1.1_clean, data_3.2.1.2_clean, 
    data_3.7.2_clean, data_3.8.2_clean, data_5.1.1_clean, data_5.7_clean, 
    data_5.9.1_clean) 
  # creating an empty dataframe to insert all the responses into
  Data_H3 <- data.frame(alpha = 0, omega.tot = 0, g = 0)
  
  for (i in 1:length(Extracted_Data_List)){
    if(i %in% c(8, 10, 12)){
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
    reliability_frame$g <- as.factor(i)
    
    Data_H3 <- rbind(Data_H3, reliability_frame)
  }
  
  Data_H3 <- Data_H3[-1,]
  
  return(Data_H3)
}


### Hypothesis 4
# indexing whether or not an effect replicated (helper function)
replication_indexer <- function(Data_H5){
  # creating an index of whether or not an effect replicated based on what was
  # coded from the paper
  # table(reliability_frame_total$g)
  replication_index <- c(Data_H5[c(rep(10, 36), rep(11, 36), rep(12, 36), 
                                   rep(13, 36), rep(26, 67), rep(29, 74), 
                                   rep(30, 74), rep(31, 74), rep(34, 61), 
                                   rep(39, 60), rep(42, 58), rep(51, 21),
                                   rep(51, 21), rep(57, 21), rep(59, 21), 
                                   rep(62, 4), rep(71, 8), rep(73, 5)), 10])
  
  return(replication_index)
}

# data load and prep functions
Data_prep_H4_multiple <- function(Data_H5, Data_H3){
  replication_index <- replication_indexer(Data_H5)
  
  # alpha between sites
  Data_H4_multiple <- cbind(Data_H3, replication = replication_index)
  
  return(Data_H4_multiple)
}

Data_prep_H4_avg <- function(Data_H5, Data_H4_multiple){
  # alpha averaged across sites
  Data_H4_avg <- data.frame(alpha_avg = sapply(split(Data_H4_multiple$alpha, 
                                                     Data_H4_multiple$g), mean),
                            omega.tot_avg = sapply(split(
                              Data_H4_multiple$omega.tot, Data_H4_multiple$g), 
                              mean),
                            replication = c(Data_H5[c(10, 11, 12, 13, 26, 29, 
                                                      30, 31, 34, 39, 42, 51, 
                                                      51, 57, 59, 62, 71, 73), 
                                                    10]))
  
  return(Data_H4_avg)
}



# Validity Related Functions ---------------------------------------------------
# Data loading for the extracted measure data
Data_unidimensionality_test <- function(Data_1.10, Data_1.11, Data_1.12.3.1, 
                                    Data_1.12.3.2, Data_2.10.1, Data_2.12.1, 
                                    Data_2.12.2, Data_2.12.3, Data_2.15, 
                                    Data_2.20, Data_2.23, Data_3.2.1.1, 
                                    Data_3.2.1.2, Data_3.7.1, Data_3.7.2, 
                                    Data_3.8.2, Data_5.1.1, Data_5.7, 
                                    Data_5.9.1){
  # the data will use the Extracted_Data_List list as a base.
  Extracted_Data_List <- list(Data_1.10, Data_1.11, Data_1.12.3.1, 
                              Data_1.12.3.2, Data_2.10.1, Data_2.12.1, 
                              Data_2.12.2, Data_2.12.3, Data_2.15, Data_2.20, 
                              Data_2.23, Data_3.2.1.1, Data_3.2.1.2, Data_3.7.1,
                              Data_3.7.2, Data_3.8.2, Data_5.1.1, Data_5.7, 
                              Data_5.9.1) 
  
  return(Extracted_Data_List)
}

# function testing whether or not the extracted measures meet the criteria for 
# uni-dimensionality or not.
cfa_ML_measures <- function(Extracted_Data_List){
  # creating an empty dataframe to store the results in
  Factor_Results <- data.frame(RMSEA = 0,
                               N_factors = 0,
                               Single_factor = FALSE)
  
  # running the cfas
  for (i in 1:length(Extracted_Data_List)){
    # obtaining cfa RMSEA value for evaluation
    RMSEA_value <- fa(Extracted_Data_List[[i]][-1])$RMSEA[1]
    
    # conducting parallel test to check if one factor solution is best.
    parallel_N_factors <- fa.parallel(Extracted_Data_List[[i]][-1], 
                                      fa = "fa")$nfact
    
    single_factor <- ifelse(RMSEA_value < 0.08 | 
                              parallel_N_factors == 1, TRUE, FALSE)
    
    Factor_Results <- rbind(Factor_Results, c(RMSEA_value, parallel_N_factors, 
                                              single_factor))
  }
  Factor_Results <- Factor_Results[-1,]
  
  return(Factor_Results)
}



# Plotting Related Functions ---------------------------------------------------
### Plot 34 data prep
data_prep_plot_34_alpha <- function(Data){
  Data$avg.alpha <- ave(Data$alpha, Data$g)
  Plot_34_data <- Data[order(-Data$replication, -Data$avg.alpha),]
  Plot_34_data <- Plot_34_data[Plot_34_data$alpha > 0,]
  Plot_34_data$g <- fct_inorder(as.factor(Plot_34_data$g), ordered = NA)
  levels(Plot_34_data$g) <- c("Husnu & Crisp (2010)", 
                              "Nosek et al. (2002), Math", "Nosek et al. (2002), Art", 
                              "Norenzayan et al. (2002)", "Shnabel & Nadler (2008)", 
                              "Vohs & Schooler (2008)", "Caruso et al. (2012)",
                              "Van Lange et al. (1997)", "Anderson et al. (2012), SWL", 
                              "Anderson et al. (2012), PA", "Anderson et al. (2012), NA", 
                              "Giessner & Schubert, (2007)", "Zhong & Liljenquist (2006)", 
                              "Monin & Miller (2001), most", "Monin & Miller (2001), some", 
                              "Cacioppo et al. (1983)", "De Fruyt et al. (2000)", 
                              "Albarracín et al. (2008), experiment 5")
  
  return(Plot_34_data)
}

# and for omega
data_prep_plot_34_omega <- function(Data){
  Data <- Data[!is.na(Data$omega.tot),]
  Data$avg.omega.tot <- ave(Data$omega.tot, Data$g)
  Plot_34_data <- Data[order(-Data$replication, -Data$avg.omega.tot),]
  Plot_34_data$g <- fct_inorder(as.factor(Plot_34_data$g), ordered = NA)
  levels(Plot_34_data$g) <- c("Husnu & Crisp (2010)", 
                              "Nosek et al. (2002), Math", "Nosek et al. (2002), Art", 
                              "Shnabel & Nadler (2008)", "Vohs & Schooler (2008)", 
                              "Caruso et al. (2012)", "Van Lange et al. (1997)", 
                              "Anderson et al. (2012), SWL", "Anderson et al. (2012), PA", 
                              "Giessner & Schubert, (2007)", "Zhong & Liljenquist (2006)", 
                              "Monin & Miller (2001), some", "Cacioppo et al. (1983)", 
                              "De Fruyt et al. (2000)", "Albarracín et al. (2008), experiment 5")
  
  return(Plot_34_data)
}


### 256 plots data prep
data_prep_plot_256 <- function(Data){
  #Plot_256_ratio_data <- gather(Data[c("def_ratio", "op_ratio", "sel_ratio", 
  #  "quant_ratio", "mod_ratio", "QMP_ratio")], QMP_type, QMP_ratio, 
  #  c("def_ratio", "op_ratio", "sel_ratio", "quant_ratio", "mod_ratio", 
  #    "QMP_ratio"), factor_key = TRUE)
  #Plot_256_count_data <- gather(Data[c("def_count", "op_count", "sel_count", 
  #  "quant_count", "mod_count", "MP_count")], QMP_type, QMP_count, 
  #   c("def_count", "op_count", "sel_count", "quant_count", "mod_count", 
  #     "MP_count"), factor_key = TRUE)
  Plot_256_ratio_data_REV <- gather(Data[c("def_ratio", "op_REV_ratio", 
                                           "sel_REV_ratio", "quant_REV_ratio", "mod_REV_ratio", "QMP_REV_ratio")], 
                                    QMP_type, QMP_ratio, c("def_ratio", "op_REV_ratio", "sel_REV_ratio", 
                                                           "quant_REV_ratio", "mod_REV_ratio", "QMP_REV_ratio"), factor_key = TRUE)
  #Plot_256_count_data_REV <- gather(Data[c("def_count", "op_REV_count", 
  #  "sel_REV_count", "quant_REV_count", "mod_REV_count", "MP_REV_count")], 
  #  QMP_type, QMP_REV_count, c("def_count", "op_REV_count", "sel_REV_count", 
  # "quant_REV_count", "mod_REV_count", "MP_REV_count"), factor_key = TRUE)
  
  #Plot_256_ratio_rep_data <- gather(Data[c("Rep_def_ratio", "Rep_op_ratio", 
  #  "Rep_sel_ratio", "Rep_quant_ratio", "Rep_mod_ratio", "Rep_QMP_ratio")], 
  #  QMP_type, Rep_QMP_ratio, c("Rep_def_ratio", "Rep_op_ratio", "Rep_sel_ratio",
  #  "Rep_quant_ratio", "Rep_mod_ratio", "Rep_QMP_ratio"), factor_key = TRUE)
  #Plot_256_count_rep_data <- gather(Data[c("Rep_def_count", "Rep_op_count", 
  #  "Rep_sel_count", "Rep_quant_count", "Rep_mod_count", "Rep_MP_count")], 
  #  QMP_type, Rep_QMP_count, c("Rep_def_count", "Rep_op_count", "Rep_sel_count", 
  #  "Rep_quant_count", "Rep_mod_count", "Rep_MP_count"), factor_key = TRUE)
  Plot_256_ratio_rep_data_REV <- gather(Data[c("Rep_def_ratio", 
                                               "Rep_op_REV_ratio", "Rep_sel_REV_ratio", "Rep_quant_REV_ratio", 
                                               "Rep_mod_REV_ratio", "Rep_QMP_REV_ratio")], QMP_type, QMP_ratio, 
                                        c("Rep_def_ratio", "Rep_op_REV_ratio", "Rep_sel_REV_ratio", 
                                          "Rep_quant_REV_ratio", "Rep_mod_REV_ratio", "Rep_QMP_REV_ratio"), 
                                        factor_key = TRUE)
  #Plot_256_count_rep_data_REV <- gather(Data[c("Rep_def_count", 
  #  "Rep_op_REV_count", "Rep_sel_REV_count", "Rep_quant_REV_count", 
  #  "Rep_mod_REV_count", "Rep_MP_REV_count")], QMP_type, Rep_QMP_REV_count, 
  #  c("Rep_def_count", "Rep_op_REV_count", "Rep_sel_REV_count", 
  #  "Rep_quant_REV_count", "Rep_mod_REV_count", "Rep_MP_REV_count"), 
  #  factor_key = TRUE)
  
  
  levels(Plot_256_ratio_data_REV$QMP_type) <- c("Definition", 
                                                "Operationalization",
                                                "Selection", "Quantification", 
                                                "Modification", "Total")
  levels(Plot_256_ratio_rep_data_REV$QMP_type) <- c("Definition", 
                                                    "Operationalization", "Selection", 
                                                    "Quantification", "Modification", 
                                                    "Total")
  
  Plot_256_ratio_data_REV$RepOrg <- as.factor(rep("Original", 
                                                  times = nrow(Plot_256_ratio_data_REV)))
  Plot_256_ratio_rep_data_REV$RepOrg <- as.factor(rep("Replication", 
                                                      times = nrow(Plot_256_ratio_data_REV)))
  
  
  Plot_256_data <- rbind(Plot_256_ratio_data_REV, Plot_256_ratio_rep_data_REV)
  
  
  return(Plot_256_data)
}


### 26 plots data prep
data_prep_plot_26 <- function(Data){
  colnames(Data) <- c("Def. Ratio", "Op. Ratio", "Sel. Ratio", 
                      "Quant. Ratio", "Mod. Ratio", "Rep. Def. Ratio", "Rep. Op. Ratio", 
                      "Rep. Sel. Ratio", "Rep. Quant. Ratio", "Rep. Mod. Ratio")
  
  Plot_26_data <- gather(Data, QMP_type, QMP_ratio, 
                         c("Def. Ratio", "Op. Ratio", "Sel. Ratio", "Quant. Ratio", "Mod. Ratio"), 
                         factor_key = TRUE)
  
  Plot_26_data <- gather(Plot_26_data, QMP_Rep_type, QMP_Rep_ratio, 
                         c("Rep. Def. Ratio", "Rep. Op. Ratio", "Rep. Sel. Ratio", 
                           "Rep. Quant. Ratio", "Rep. Mod. Ratio"), factor_key = TRUE)
  
  return(Plot_26_data)
}