INSERT INTO t1 (mobile,action_time,touchpoint_id,pt)
SELECT check_in_mobile AS mobile,
       apply_date AS action_time,
       '008002006000_tp' AS touchpoint_id,
FROM dtwarehouse.ods_scrm_saic_activity_apply_cust
INSERT INTO t1 (mobile,action_time,touchpoint_id,pt)
SELECT mobile,
       add_time AS action_time,
       '009001000000_tp' AS touchpoint_id,
       pt
FROM dtwarehouse.ods_scrm_crm_customer_add 
)