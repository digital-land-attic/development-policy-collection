DEVELOPMENT_POLICY_DATASET=$(DATASET_DIR)development-policy.csv
DEVELOPMENT_POLICY_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)development-policy/6a8980185fe03900a36b7e821ff3f8e8abfb3a04532e35434061abd14bfdda72.csv

$(TRANSFORMED_DIR)development-policy/6a8980185fe03900a36b7e821ff3f8e8abfb3a04532e35434061abd14bfdda72.csv: collection/resource/6a8980185fe03900a36b7e821ff3f8e8abfb3a04532e35434061abd14bfdda72
	$(run-pipeline)

$(DEVELOPMENT_POLICY_DATASET): $(DEVELOPMENT_POLICY_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(DEVELOPMENT_POLICY_TRANSFORMED_FILES)

dataset:: $(DEVELOPMENT_POLICY_DATASET)
