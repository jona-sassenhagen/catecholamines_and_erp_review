library(brms)

df = read.table("meta_mix.csv", sep=",", header=1)
fml = P3b ~ 1 + Dopamine_transporter + Noradrenaline_transporter + Alpha_1_Beta_adrenergic_receptor + D2_dopamine_receptor + Alpha_2_adrenergic_receptor + D1_dopamine_receptor + (1 | Study) + (1 | X)
mdl <- brm(fml, data=df, iter=5000, cores=2)
summary(mdl)
