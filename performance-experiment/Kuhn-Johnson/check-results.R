# Results


library(drake); library(dplyr)

# loadd(perf_results_100)
# View(perf_results_100)
loadd(perf_results_800)
View(perf_results_800)
loadd(perf_results_2000)
View(perf_results_2000)
View(perf_results_800)
loadd(ncv_results_2000_c16e9aff)
View(ncv_results_2000_c16e9aff)
loadd(ncv_results_2000_7d80d14d)
View(ncv_results_2000_7d80d14d)

# each target's build time
bt <- build_times(starts_with("ncv_results"), digits = 4)
View(bt)
bt %>% 
      select(target, elapsed) %>% 
      kableExtra::kable() %>% 
      kableExtra::save_kable(file = "performance-experiment/output/kj-build-times.png")
