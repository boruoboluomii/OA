DELIMITER $$

DROP PROCEDURE IF EXISTS UpdateInstanceTrackingProfile $$
/*
 * Create a tracking profile for a particular workflow instance.
 */
CREATE PROCEDURE UpdateInstanceTrackingProfile
(
	IN p_INSTANCE_ID CHAR(36)
	,IN p_TRACKING_PROFILE_XML LONGTEXT
)
BEGIN
	UPDATE TRACKING_PROFILE_INSTANCE
	SET
		TRACKING_PROFILE_XML = p_TRACKING_PROFILE_XML
		,UPDATED_DATE_TIME = UTC_TIMESTAMP()
	WHERE
		INSTANCE_ID = p_INSTANCE_ID;
		
	IF ROW_COUNT() = 0 THEN
		INSERT INTO TRACKING_PROFILE_INSTANCE
		(
			INSTANCE_ID
			,TRACKING_PROFILE_XML
			,UPDATED_DATE_TIME
		)
		VALUES
		(
			p_INSTANCE_ID
			,p_TRACKING_PROFILE_XML
			,UTC_TIMESTAMP()
		);
	END IF;
END $$

DELIMITER ;