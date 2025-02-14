Tab1.3 <- Table.Subset.3 %$% table(name, Outcome) %>% data.frame() %>% group_by(name) %>% mutate(Count = sum(Freq)) %>% ungroup() |> mutate(Percent = round(Freq / Count, digits=3)) |> ggplot() + aes(x=as.character(name), y=as.character(fct_rev(Outcome)), fill=Percent) + geom_tile(alpha=0.4) + scale_fill_viridis_c(option = "E", alpha=0.4, direction = -1) + labs(x="True Distribution", y="gpt-4-turbo-2024-04-09 Outcome") + geom_text(aes(label=Percent), color="black") + labs(caption="Values are column percents", title="a", subtitle="True Distributions and gpt-4-turbo-2024-04-09 Responses", fill="Col. Pct.") + theme_minimal() + theme(plot.title=element_text(size=12, face = "bold", hjust=0), plot.subtitle = element_text(size=12, family="helvetica"), plot.caption = element_text(size=6), plot.title.position = "plot") + theme(legend.position="bottom")

Tab2.3 <- Table.Subset.3 |> group_by(name) |> mutate(Correct = (name==Outcome)) |> ggplot() + aes(x=name, fill=Correct) + geom_bar(position = "fill", alpha=0.4) + scale_fill_viridis_d(option="E", direction=-1) + theme_minimal() + labs(x="True Distribution", y="Percent Correct", title="b", subtitle="Correct Prediction: gpt-4-turbo-2024-04-09")+ theme(text = element_text(size = 10, family="helvetica"), plot.title = element_text(family="helvetica", face="bold"), plot.title.position = "plot", plot.subtitle = element_text(size=12, family="helvetica"))

Tab3.3 <- Table.Subset.3 |> mutate(Correct = (name==Outcome)) |> ggplot() + aes(y=Outcome, fill=Correct) + geom_bar(alpha=0.4, show.legend = FALSE, position = "stack") + scale_fill_viridis_d(option="E", direction=-1) + theme_minimal() + labs(y="gpt-4-turbo-2024-04-09 Outcome", x="Frequency Chosen", title="c", subtitle="True and False Responses: gpt-4-turbo-2024-04-09") + theme(text = element_text(size = 10, family="helvetica"), plot.title=element_text(family="helvetica", size=12, face="bold"), plot.title.position = "plot") + theme(legend.position="bottom")

design <- c(area(1,1,4,4),area(1,5,4,6), area(5,1,6,4),area(5,5,6,6))

Tab1.3 + Tab3.3 + Tab2.3 + guide_area()+ plot_layout(design=design, guides = "collect")

Table.Subset.2 <- Complete.Data.0806 %>% select(name, Outcome) %>% mutate(Outcome = case_match(Outcome, c("Log-normal","Log-Normal","Lognormal") ~ "Lognormal", .default = Outcome)) %>% mutate(Outcome = case_match(Outcome, c("SkewNormal","Skewnormal","Skew-normal") ~ "Skewed Normal", .default = Outcome))

Tab1.2 <- Table.Subset.2 %$% table(name, Outcome) %>% data.frame() %>% group_by(name) %>% mutate(Count = sum(Freq)) %>% ungroup() |> mutate(Percent = round(Freq / Count, digits=3)) |> ggplot() + aes(x=as.character(name), y=as.character(fct_rev(Outcome)), fill=Percent) + geom_tile(alpha=0.4) + scale_fill_viridis_c(option = "E", alpha=0.4, direction = -1) + labs(x="True Distribution", y="gpt-4o-2024-08-06 Outcome") + geom_text(aes(label=Percent), color="black") + labs(caption="Values are column percents", title="a", subtitle="True Distributions and gpt-4o-2024-08-06 Responses", fill="Col. Pct.") + theme_minimal() + theme(plot.title=element_text(size=12, family="helvetica", face = "bold", hjust=0), plot.subtitle = element_text(size=12, family="helvetica"), plot.caption = element_text(size=6), plot.title.position = "plot") + theme(legend.position="bottom")

Tab2.2 <- Table.Subset.2 |> group_by(name) |> mutate(Correct = (name==Outcome)) |> ggplot() + aes(x=name, fill=Correct) + geom_bar(position = "fill", alpha=0.4) + scale_fill_viridis_d(option="E", direction=-1) + theme_minimal() + labs(x="True Distribution", y="Percent Correct", title="b", subtitle="Correct Prediction: gpt-4o-2024-08-06")+ theme(text = element_text(size = 10, family="helvetica"), plot.title = element_text(family="helvetica", face="bold"), plot.title.position = "plot", plot.subtitle = element_text(size=12, family="helvetica"))

Tab3.2 <- Table.Subset.2 |> mutate(Correct = (name==Outcome)) |> ggplot() + aes(y=Outcome, fill=Correct) + geom_bar(alpha=0.4, show.legend = FALSE, position = "stack") + scale_fill_viridis_d(option="E", direction=-1) + theme_minimal() + labs(y="gpt-4o-2024-08-06 Outcome", x="Frequency Chosen", title="c", subtitle="True and False Responses: gpt-4o-2024-08-06") + theme(text = element_text(size = 10, family="helvetica"), plot.title=element_text(family="helvetica", size=12, face="bold"), plot.title.position = "plot") + theme(legend.position="bottom")

design <- c(area(1,1,4,4),area(1,5,4,6), area(5,1,6,4),area(5,5,6,6))

Tab1.2 + Tab3.2 + Tab2.2 + guide_area()+ plot_layout(design=design, guides = "collect")


Complete.Data |> ggplot() + aes(y=Outcome, fill=Correct) + geom_bar(position="dodge") + scale_fill_viridis_d() + facet_grid(cols=vars(model), scales = "free_y") + theme_minimal() -> CDT1

Complete.Data |> ggplot() + aes(y=name, fill=Correct) + geom_bar(position="fill") + scale_fill_viridis_d() + facet_grid(cols=vars(model), scales = "free_x") + theme_minimal() -> CDT2