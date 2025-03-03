install.packages("Benchmarking")
library(Benchmarking)

#file path
file_path <- "C:/r_workplace/"
final_data <- read.csv(paste0(file_path, "final_data_1.csv"), fileEncoding='UTF-8', row.names = 1)

#help text for function dea()
?dea()

#########################################################################################################################################################################

#cluster 1
df_cluster_1 <- final_data[final_data$cluster == 1, ]
input1 = df_cluster_1[,c("비유동자산", "영업비용", "기타비용")]
output1 = df_cluster_1[,c('매출액', "영업이익", "당기순이익2")]

#input-based CCR of cluster 1
deares1 <- dea(X=input1, Y=output1, SLACK = TRUE, ORIENTATION = "in", RTS = "crs")
df1 <- cbind(소속회사명=rownames(df_cluster_1), theta = deares1$eff, slack = deares1$slack, sx = deares1$sx, sy = deares1$sy, deares1$lambda)
write.csv(df1, paste0(file_path, "cluster_1_input_CCR.csv"), row.names = FALSE, fileEncoding= "euc-kr")

#output-based CCR of cluster 1
deares2 <- dea(X=input1, Y=output1, SLACK = TRUE, ORIENTATION = "out", RTS = "crs")
df2 <- cbind(소속회사명=rownames(df_cluster_1), phi = deares2$eff, slack = deares2$slack, sx = deares2$sx, sy = deares2$sy, deares2$lambda)
write.csv(df2, paste0(file_path, "cluster_1_output_CCR.csv"), row.names = FALSE, fileEncoding= "euc-kr")

#input-based BCC of cluster 1
deares3 <- dea(X=input1, Y=output1, SLACK = TRUE, ORIENTATION = "in", RTS = "vrs")
df3 <- cbind(소속회사명=rownames(df_cluster_1), theta = deares3$eff, slack = deares3$slack, sx = deares3$sx, sy = deares3$sy, deares3$lambda)
write.csv(df3, paste0(file_path, "cluster_1_input_BCC.csv"), row.names = FALSE, fileEncoding= "euc-kr")

#output-based BCC of cluster 1
deares4 <- dea(X=input1, Y=output1, SLACK = TRUE, ORIENTATION = "out", RTS = "vrs")
df4 <- cbind(소속회사명=rownames(df_cluster_1), phi = deares4$eff, slack = deares4$slack, sx = deares4$sx, sy = deares4$sy, deares4$lambda)
write.csv(df4, paste0(file_path, "cluster_1_output_BCC.csv"), row.names = FALSE, fileEncoding= "euc-kr")

#########################################################################################################################################################################

#cluster 2
df_cluster_2 <- final_data[final_data$cluster == 2, ]
input2 = df_cluster_2[,c("비유동자산", "영업비용", "기타비용")]
output2 = df_cluster_2[,c('매출액', "영업이익", "당기순이익2")]

#input-based CCR of cluster 2
deares5 <- dea(X=input2, Y=output2, SLACK = TRUE, ORIENTATION = "in", RTS = "crs")
df5 <- cbind(소속회사명=rownames(df_cluster_2), theta = deares5$eff, slack = deares5$slack, sx = deares5$sx, sy = deares5$sy, deares5$lambda)
write.csv(df5, paste0(file_path, "cluster_2_input_CCR.csv"), row.names = FALSE, fileEncoding= "euc-kr")

#output-based CCR of cluster 2
deares6 <- dea(X=input2, Y=output2, SLACK = TRUE, ORIENTATION = "out", RTS = "crs")
df6 <- cbind(소속회사명=rownames(df_cluster_2), phi = deares6$eff, slack = deares6$slack, sx = deares6$sx, sy = deares6$sy, deares6$lambda)
write.csv(df6, paste0(file_path, "cluster_2_output_CCR.csv"), row.names = FALSE, fileEncoding= "euc-kr")

#input-based BCC of cluster 2
deares7 <- dea(X=input2, Y=output2, SLACK = TRUE, ORIENTATION = "in", RTS = "vrs")
df7 <- cbind(소속회사명=rownames(df_cluster_2), theta = deares7$eff, slack = deares7$slack, sx = deares7$sx, sy = deares7$sy, deares7$lambda)
write.csv(df7, paste0(file_path, "cluster_2_input_BCC.csv"), row.names = FALSE, fileEncoding= "euc-kr")

#output-based BCC of cluster 2
deares8 <- dea(X=input2, Y=output2, SLACK = TRUE, ORIENTATION = "out", RTS = "vrs")
df8 <- cbind(소속회사명=rownames(df_cluster_2), phi = deares8$eff, slack = deares8$slack, sx = deares8$sx, sy = deares8$sy, deares8$lambda)
write.csv(df8, paste0(file_path, "cluster_2_output_BCC.csv"), row.names = FALSE, fileEncoding= "euc-kr")

#########################################################################################################################################################################

#cluster 3
df_cluster_3 <- final_data[final_data$cluster == 3, ]
input3 = df_cluster_3[,c("비유동자산", "영업비용", "기타비용")]
output3 = df_cluster_3[,c('매출액', "영업이익", "당기순이익2")]

#input-based CCR of cluster 3
deares9 <- dea(X=input3, Y=output3, SLACK = TRUE, ORIENTATION = "in", RTS = "crs")
df9 <- cbind(소속회사명=rownames(df_cluster_3), theta = deares9$eff, slack = deares9$slack, sx = deares9$sx, sy = deares9$sy, deares9$lambda)
write.csv(df9, paste0(file_path, "cluster_3_input_CCR.csv"), row.names = FALSE, fileEncoding= "euc-kr")

#output-based CCR of cluster 3
deares10 <- dea(X=input3, Y=output3, SLACK = TRUE, ORIENTATION = "out", RTS = "crs")
df10 <- cbind(소속회사명=rownames(df_cluster_3), phi = deares10$eff, slack = deares10$slack, sx = deares10$sx, sy = deares10$sy, deares10$lambda)
write.csv(df10, paste0(file_path, "cluster_3_output_CCR.csv"), row.names = FALSE, fileEncoding= "euc-kr")

#input-based BCC of cluster 3
deares11 <- dea(X=input3, Y=output3, SLACK = TRUE, ORIENTATION = "in", RTS = "vrs")
df11 <- cbind(소속회사명=rownames(df_cluster_3), theta = deares11$eff, slack = deares11$slack, sx = deares11$sx, sy = deares11$sy, deares11$lambda)
write.csv(df11, paste0(file_path, "cluster_3_input_BCC.csv"), row.names = FALSE, fileEncoding= "euc-kr")

#output-based BCC of cluster 3
deares12 <- dea(X=input3, Y=output3, SLACK = TRUE, ORIENTATION = "out", RTS = "vrs")
df12 <- cbind(소속회사명=rownames(df_cluster_3), phi = deares12$eff, slack = deares12$slack, sx = deares12$sx, sy = deares12$sy, deares12$lambda)
write.csv(df12, paste0(file_path, "cluster_3_output_BCC.csv"), row.names = FALSE, fileEncoding= "euc-kr")

