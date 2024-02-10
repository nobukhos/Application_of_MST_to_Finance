#Calling the packages to be used for calling data and calculating log returns

using CSV
using XLSX
using DataFrames
using LinearAlgebra, Statistics

#reading the dataset to be used 

#dif = DataFrame(XLSX.readtable("C:\\Users\\My PC\\Desktop\\Quantitat\\project_code\\Data\\final_datset.xlsx", "Sheet1"))
dife = CSV.read("C:\\Users\\My PC\\Desktop\\Quantitat\\project_code\\Data\\dataa.csv", DataFrame)

#changing it from type any to float64
new_dif = Float64.(dife[1:1500, 2:35])
#summary Statistics for the dataset
describe(new_dif)

#converting it to a matrix and calculating log returns
mat =  Matrix(new_dif);
ret = diff(log10.(mat); dims=1);



#Correlation Plots
using StatsBase
nobuk = cor(ret)
bokan = corspearman(Float64.(ret), Float64.(ret))
ziyan = corkendall(Float64.(ret), Float64.(ret))
using Plots

zi = scatter(nobuk, bokan, label = false, title = "Pearson vs Spearman Correlations")
savefig(zi, "comp_1")

ya = scatter(nobuk, ziyan, label = false, title = "Pearson vs Kendall Correlations")
savefig(ya, "comp_2")

nd = scatter(ziyan, bokan, label = false, title = "Kendall vs Spearman Correlations")
savefig(nd, "comp_3")
