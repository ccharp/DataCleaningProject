# Merge training and tests sets
X_train <- read.table("data/train/X_train.txt")
y_train <- read.table("data/train/y_train.txt", col.names="activity")
X_test <- read.table("data/test/X_test.txt")
y_test <- read.table("data/test/y_test.txt", col.names="activity")

# Combine
X_combined <- rbind(X_test, X_train)
y_combined <- rbind(y_test, y_train)
# column bind later, after we've filtered

# Filter out non-mean and non-std variables
features <- read.table("data/features.txt", col.names=c("index", "name"))
keep_indeces <- grep("([mM]ean\\()|std", features$name)
X_reduced <- X_combined[, keep_indeces]

# Name Activities
activity_labels <- read.table("data/activity_labels.txt", col.names="label")
y_named <- sapply(y_combined, function(i){ activity_labels$label[i] })

# Use descriptive variable names
names(X_reduced) <- features[keep_indeces, "name"]

# Finally, append X and Y
combined <- cbind(X_reduced, y_named)


