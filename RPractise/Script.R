# 创建50行8列的矩阵M,包含1到20的可重复随机数共400个
M <- matrix(c(sample(20, 400, replace = TRUE, prob = NULL)), nrow = 50)
# 筛选M中每一行的最大值并传递给M1
M1 <- apply(M, MARGIN = 1, max)
# 筛选M1中的值为18的向量并将行数传递给M2
M2 <- grep(18, M1)
# 以筛选结果作为行数,从M的数据中创建新矩阵X
X <- M[M2,]
# 显示矩阵X
X