DELIMITER $$

DROP PROCEDURE IF EXISTS InsertTrackingDataItems $$
/*
 * Insert a batch of tracking data items.
 */	
CREATE PROCEDURE InsertTrackingDataItems
(
	IN p_WORKFLOW_INSTANCE_ID BIGINT UNSIGNED
	,IN p_EVENT_TYPE CHAR(1)
	,IN p_EVENT_ID_1 BIGINT UNSIGNED
	,IN p_FIELD_NAME_1 VARCHAR(256)
	,IN p_TYPE_FULL_NAME_1 VARCHAR(128)
	,IN p_ASSEMBLY_FULL_NAME_1 VARCHAR(256)
	,IN p_DATA_STR_1 LONGTEXT
	,IN p_DATA_BLOB_1 BLOB
	,IN p_DATA_NON_SERIALISABLE_1 BOOLEAN
	,OUT p_TRACKING_DATA_ITEM_ID_1 BIGINT UNSIGNED
	,IN p_EVENT_ID_2 BIGINT UNSIGNED
	,IN p_FIELD_NAME_2 VARCHAR(256)
	,IN p_TYPE_FULL_NAME_2 VARCHAR(128)
	,IN p_ASSEMBLY_FULL_NAME_2 VARCHAR(256)
	,IN p_DATA_STR_2 LONGTEXT
	,IN p_DATA_BLOB_2 BLOB
	,IN p_DATA_NON_SERIALISABLE_2 BOOLEAN
	,OUT p_TRACKING_DATA_ITEM_ID_2 BIGINT UNSIGNED
	,IN p_EVENT_ID_3 BIGINT UNSIGNED
	,IN p_FIELD_NAME_3 VARCHAR(256)
	,IN p_TYPE_FULL_NAME_3 VARCHAR(128)
	,IN p_ASSEMBLY_FULL_NAME_3 VARCHAR(256)
	,IN p_DATA_STR_3 LONGTEXT
	,IN p_DATA_BLOB_3 BLOB
	,IN p_DATA_NON_SERIALISABLE_3 BOOLEAN
	,OUT p_TRACKING_DATA_ITEM_ID_3 BIGINT UNSIGNED
	,IN p_EVENT_ID_4 BIGINT UNSIGNED
	,IN p_FIELD_NAME_4 VARCHAR(256)
	,IN p_TYPE_FULL_NAME_4 VARCHAR(128)
	,IN p_ASSEMBLY_FULL_NAME_4 VARCHAR(256)
	,IN p_DATA_STR_4 LONGTEXT
	,IN p_DATA_BLOB_4 BLOB
	,IN p_DATA_NON_SERIALISABLE_4 BOOLEAN
	,OUT p_TRACKING_DATA_ITEM_ID_4 BIGINT UNSIGNED
	,IN p_EVENT_ID_5 BIGINT UNSIGNED
	,IN p_FIELD_NAME_5 VARCHAR(256)
	,IN p_TYPE_FULL_NAME_5 VARCHAR(128)
	,IN p_ASSEMBLY_FULL_NAME_5 VARCHAR(256)
	,IN p_DATA_STR_5 LONGTEXT
	,IN p_DATA_BLOB_5 BLOB
	,IN p_DATA_NON_SERIALISABLE_5 BOOLEAN
	,OUT p_TRACKING_DATA_ITEM_ID_5 BIGINT UNSIGNED
)
sproc:BEGIN
	-- parameter set 1
	CALL InsertTrackingDataItem(p_WORKFLOW_INSTANCE_ID, 
		p_EVENT_ID_1, p_EVENT_TYPE, p_FIELD_NAME_1, 
		p_TYPE_FULL_NAME_1, p_ASSEMBLY_FULL_NAME_1, 
		p_DATA_STR_1, p_DATA_BLOB_1, p_DATA_NON_SERIALISABLE_1, 
		p_TRACKING_DATA_ITEM_ID_1);
		
	-- parameter set 2
	IF p_EVENT_ID_2 IS NULL THEN
		LEAVE sproc;
	END IF;

	CALL InsertTrackingDataItem(p_WORKFLOW_INSTANCE_ID, 
		p_EVENT_ID_2, p_EVENT_TYPE, p_FIELD_NAME_2, 
		p_TYPE_FULL_NAME_2, p_ASSEMBLY_FULL_NAME_2, 
		p_DATA_STR_2, p_DATA_BLOB_2, p_DATA_NON_SERIALISABLE_2, 
		p_TRACKING_DATA_ITEM_ID_2);
		
	-- parameter set 3
	IF p_EVENT_ID_3 IS NULL THEN
		LEAVE sproc;
	END IF;

	CALL InsertTrackingDataItem(p_WORKFLOW_INSTANCE_ID, 
		p_EVENT_ID_3, p_EVENT_TYPE, p_FIELD_NAME_3, 
		p_TYPE_FULL_NAME_3, p_ASSEMBLY_FULL_NAME_3, 
		p_DATA_STR_3, p_DATA_BLOB_3, p_DATA_NON_SERIALISABLE_3, 
		p_TRACKING_DATA_ITEM_ID_3);
		
	-- parameter set 4
	IF p_EVENT_ID_4 IS NULL THEN
		LEAVE sproc;
	END IF;

	CALL InsertTrackingDataItem(p_WORKFLOW_INSTANCE_ID, 
		p_EVENT_ID_4, p_EVENT_TYPE, p_FIELD_NAME_4, 
		p_TYPE_FULL_NAME_4, p_ASSEMBLY_FULL_NAME_4, 
		p_DATA_STR_4, p_DATA_BLOB_4, p_DATA_NON_SERIALISABLE_4, 
		p_TRACKING_DATA_ITEM_ID_4);

	-- parameter set 5
	IF p_EVENT_ID_5 IS NULL THEN
		LEAVE sproc;
	END IF;

	CALL InsertTrackingDataItem(p_WORKFLOW_INSTANCE_ID, 
		p_EVENT_ID_5, p_EVENT_TYPE, p_FIELD_NAME_5, 
		p_TYPE_FULL_NAME_5, p_ASSEMBLY_FULL_NAME_5, 
		p_DATA_STR_5, p_DATA_BLOB_5, p_DATA_NON_SERIALISABLE_5, 
		p_TRACKING_DATA_ITEM_ID_5);
END $$

DELIMITER ;