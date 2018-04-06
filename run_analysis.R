# Merge training and tests sets
X_train <- read.table("data/train/X_train.txt")
y_train <- read.table("data/train/y_train.txt", col.names="activity")
X_test <- read.table("data/test/X_test.txt")
y_test <- read.table("data/test/y_test.txt", col.names="activity")
participants_train <- read.table("data/train/subject_train.txt", col.names="participant")
participants_test <- read.table("data/test/subject_test.txt", col.names="participant")

# Combine
X_combined <- data.frame(rbind(X_test, X_train))
y_combined <- data.frame(rbind(y_test, y_train), rbind(participants_test, participants_train))

# column bind later, after we've filtered

# Filter out non-mean and non-std variables
features <- read.table("data/features.txt", col.names=c("index", "var_name"))
keep_indeces <- grep("([mM]ean\\()|std", features$var_name)
X_reduced <- X_combined[, keep_indeces]

# Name Activities
activity_labels <- read.table("data/activity_labels.txt")
names(activity_labels) <- c("index", "label")
y_named <- y_combined %>% mutate(activity=activity_labels$label[activity])

# Use descriptive variable names
names(X_reduced) <- features[keep_indeces, "var_name"]

# Finally, append X and Y
combined <- cbind(X_reduced, y_named)

# 5. average each var per activity per user
combined_avg <- combined %>% 
    mutate(grouping=paste(activity, participant)) %>% 
    group_by(grouping) %>% 
    summarize_all(function(v) if(is.numeric(v)) mean(v) else v[1]) %>%
    select(-grouping) %>%
    arrange(participant, activity)

write.csv(combined, file="cleaned.csv")
write.csv(combined_avg, file="cleaned_reduced.csv")
