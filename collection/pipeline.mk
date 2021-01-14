DEVELOPMENT_POLICY_DATASET=$(DATASET_DIR)development-policy.csv
DEVELOPMENT_POLICY_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)development-policy/781ef38ab8a51f6a4a0e603d8ddf8c65a5c4f9e707db3fa25e31f0614b3eae9a.csv

$(TRANSFORMED_DIR)development-policy/781ef38ab8a51f6a4a0e603d8ddf8c65a5c4f9e707db3fa25e31f0614b3eae9a.csv: collection/resource/781ef38ab8a51f6a4a0e603d8ddf8c65a5c4f9e707db3fa25e31f0614b3eae9a
	$(run-pipeline)

$(DEVELOPMENT_POLICY_DATASET): $(DEVELOPMENT_POLICY_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(DEVELOPMENT_POLICY_TRANSFORMED_FILES)

dataset:: $(DEVELOPMENT_POLICY_DATASET)
