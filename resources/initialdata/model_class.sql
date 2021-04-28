INSERT INTO model_class (id, name) VALUES (0, '(Data)');
INSERT INTO model_class (id, name) VALUES (1, 'Consumption model');
INSERT INTO model_class (id, name) VALUES (2, 'Dose-response model');
INSERT INTO model_class (id, name) VALUES (3, 'Exposure model');
INSERT INTO model_class (id, name) VALUES (4, 'Health metrics model');
INSERT INTO model_class (id, name) VALUES (5, 'Other Empirical models');
INSERT INTO model_class (id, name) VALUES (6, 'Predictive model');
INSERT INTO model_class (id, name) VALUES (7, 'Process model');
INSERT INTO model_class (id, name) VALUES (8, 'QRA model');
INSERT INTO model_class (id, name) VALUES (9, 'Risk characterization model');
INSERT INTO model_class (id, name) VALUES (10, 'Toxicological reference value model');

-- Predictive models
INSERT INTO model_subclass (id, name, class_id) VALUES (0, 'Growth', 6);
INSERT INTO model_subclass (id, name, class_id) VALUES (1, 'Growth boundary model', 6);
INSERT INTO model_subclass (id, name, class_id) VALUES (2, 'Inactivation', 6);
INSERT INTO model_subclass (id, name, class_id) VALUES (3, 'Maximum population density (MPD)', 6);
INSERT INTO model_subclass (id, name, class_id) VALUES (4, 'Metabolite formation', 6);
INSERT INTO model_subclass (id, name, class_id) VALUES (5, 'Other', 6);
INSERT INTO model_subclass (id, name, class_id) VALUES (6, 'Primary', 6);
INSERT INTO model_subclass (id, name, class_id) VALUES (7, 'Primary-secondary', 6);
INSERT INTO model_subclass (id, name, class_id) VALUES (8, 'Secondary', 6);
INSERT INTO model_subclass (id, name, class_id) VALUES (9, 'Spoilage', 6);
INSERT INTO model_subclass (id, name, class_id) VALUES (10, 'Survival', 6);
INSERT INTO model_subclass (id, name, class_id) VALUES (11, 'Transfer', 6);

-- Other Empirical Models
INSERT INTO model_subclass (id, name, class_id) VALUES (12, 'Epidemiological models', 5);
INSERT INTO model_subclass (id, name, class_id) VALUES (13, 'Fluid dynamic models', 5);
INSERT INTO model_subclass (id, name, class_id) VALUES (14, 'Other', 5);
INSERT INTO model_subclass (id, name, class_id) VALUES (15, 'Pharmacokinetics models', 5);
INSERT INTO model_subclass (id, name, class_id) VALUES (16, 'Temporary models', 5);
INSERT INTO model_subclass (id, name, class_id) VALUES (17, 'Time-temperature models', 5);

-- Process models
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (18, 'ANIMAL FARM', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (19, 'CONSUMER', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (20, 'CROP FARM', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (21, 'FISHERY', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (22, 'FOOD SERVICE', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (23, 'OTHER', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (25, 'Canning', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (26, 'Churning', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (27, 'Concentration', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (28, 'Cooking', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (29, 'Cooking in air (Baking)', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (30, 'Cooking in oil (Frying)', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (31, 'Cooking in water', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (32, 'Crushing', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (33, 'Decortication', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (34, 'Dehydration', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (35, 'Desugaring', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (36, 'Extrusion', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (37, 'Fermentation', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (38, 'Flaking', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (39, 'Freezing', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (40, 'Heating', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (41, 'Hydrogenation', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (42, 'Hydrolysis', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (43, 'Infusion-extractions', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (44, 'Juicing', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (45, 'Milk pasteurisation', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (46, 'Milling', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (47, 'Milling - bran production', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (48, 'Milling - refined flour', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (49, 'Milling - unprocessed flour', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (50, 'Oil production', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (51, 'Oil production - Cold press', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (52, 'Oil production - refined oils', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (53, 'Oil production - Solvent Extraction', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (54, 'Oil production - Virgin oil after cold press', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (55, 'Oil production - Warm press', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (56, 'Other', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (57, 'Packaging', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (58, 'Pasteurisation', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (59, 'Peeling (edible peel)', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (60, 'Peeling (inedible peel)', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (61, 'Pelleting', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (62, 'Pickling', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (63, 'Polishing', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (64, 'Pregelatinisation', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (65, 'Preserving', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (66, 'Pressing', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (67, 'Processing', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (68, 'Production of alcoholic beverages', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (69, 'Refining', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (70, 'Silage-Fodder production', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (71, 'Smoking', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (72, 'Sugar production', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (73, 'Sugar production - raw', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (74, 'Sugar production - refined', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (75, 'Unknown', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (76, 'Wet-milling', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (77, 'Wine production', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (78, 'Wine production - red wine cold process', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (79, 'Wine production - red wine warm process', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (80, 'Wine production - white wine', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (81, 'RETAIL', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (82, 'STORAGE', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (83, 'STORAGE: ambient temperature', 'Stored at the surrounding temperature or normal storage conditions, which means storage in a dry, clean, well ventilated area at room temperatures between 15° to 25°C (59°-77°F) or up to 30°C, depending on climatic conditions.', 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (84, 'STORAGE: at 2°-8°C', 'Stored at 2°-8°C (36°-46°F): for heat sensitive products that must not be frozen.', 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (85, 'STORAGE: cool', 'Stored between 8°-15°C (45°-59°F).', 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (86, 'STORAGE: frozen', 'Stored at -20°C (4°F).', 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (87, 'STORAGE: room temperature', 'Stored at 15°-25°C (59°-77°F).', 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (88, 'TRANSPORT-DISTRIBUTION', NULL, 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (89, 'TRANSPORT-DISTRIBUTION: ambient temperature', 'Transported at the surrounding temperature or normal storage conditions, which means storage in a dry, clean, well ventilated vehicle at room temperatures between 15° to 25°C (59°-77°F) or up to 30°C, depending on climatic conditions.', 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (90, 'TRANSPORT-DISTRIBUTION: at 2°-8°C', 'Transported at 2°-8°C (36°-46°F): for heat sensitive products that must not be frozen.', 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (91, 'TRANSPORT-DISTRIBUTION: cool', 'Transported between 8°-15°C (45°-59°F).', 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (92, 'TRANSPORT-DISTRIBUTION: frozen', 'Transported at -20°C (4°F).', 7);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (93, 'TRANSPORT-DISTRIBUTION: room temperature', 'Transported at 15°-25°C (59°-77°F).', 7);

-- Dose-response models
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (94, 'Children', NULL, 2);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (95, 'Elderly', NULL, 2);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (96, 'Imunocompromised ', NULL, 2);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (97, 'Other', NULL, 2);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (98, 'Pregnant ', NULL, 2);

-- Health-metrics models
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (99, 'Cost per illness', NULL, 4);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (100, 'DALY ', 'Disability-Adjusted Life-Year', 4);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (101, 'QALY', 'Quality-adjusted life year', 4);

-- QRA models
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (102, 'QCRA', 'Quantitative chemical risk assessment model', 8);
INSERT INTO model_subclass (id, name, comment, class_id) VALUES (103, 'QMRA', 'Quantitative microbial risk assessment model', 8);

-- Predictive models
INSERT INTO basic_process (id, name, class_id) VALUES (0, 'growth', 6);
INSERT INTO basic_process (id, name, class_id) VALUES (1, 'growth-inactivation', 6);
INSERT INTO basic_process (id, name, class_id) VALUES (2, 'growth-inactivation-survival', 6);
INSERT INTO basic_process (id, name, class_id) VALUES (3, 'growth-no growth', 6);
INSERT INTO basic_process (id, name, class_id) VALUES (4, 'growth-survival', 6);
INSERT INTO basic_process (id, name, class_id) VALUES (5, 'inactivation', 6);
INSERT INTO basic_process (id, name, class_id) VALUES (6, 'inactivation-survival', 6);
INSERT INTO basic_process (id, name, class_id) VALUES (7, 'Other', 6);
INSERT INTO basic_process (id, name, class_id) VALUES (8, 'survival', 6);
INSERT INTO basic_process (id, name, class_id) VALUES (9, 'unknown', 6);

-- Process models
INSERT INTO basic_process (id, name, class_id) VALUES (10, 'No Change (MICROBIAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (11, 'Concentration', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (12, 'Contamination', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (13, 'Cross contamination', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (14, 'Decrease (CHEMICAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (15, 'Decrease (MICROBIAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (16, 'Decrease by Inactivation model (MICROBIAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (17, 'Evapuration-Dilution (CHEMICAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (18, 'Evapuration-Dilution (MICROBIAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (19, 'Growth', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (20, 'Inactivation', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (21, 'Increase by Addition (CHEMICAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (22, 'Increase by Addition (MICROBIAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (23, 'Increase by Cross Contamination (Amount) (MICROBIAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (24, 'Increase by Cross Contamination (Concentration) (MICROBIAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (25, 'Increase by Growth (MICROBIAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (26, 'Increase by growth model (MICROBIAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (27, 'Joining', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (28, 'Mass-change (CHEMICAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (29, 'Mixing', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (30, 'No Change (CHEMICAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (31, 'Other', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (32, 'Partioning', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (33, 'Partitioning (CHEMICAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (34, 'Partitioning (MICROBIAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (35, 'Placeholder (CHEMICAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (36, 'Placeholder (MICROBIAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (37, 'Pooling (CHEMICAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (38, 'Pooling (MICROBIAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (39, 'Redistribution (Partial) (CHEMICAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (40, 'Redistribution (Partial) (MICROBIAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (41, 'Redistribution (Total) (CHEMICAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (42, 'Redistribution (Total) (MICROBIAL) Removal', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (43, 'Sampling (OC curve) (MICROBIAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (44, 'Sampling (Simple Poisson) (MICROBIAL)', 7);
INSERT INTO basic_process (id, name, class_id) VALUES (45, 'Set Maximum Population Density (MICROBIAL)', 7);