
SET hive.exec.dynamic.partition.mode=nonstrict;


INSERT OVERWRITE TABLE dw_ts_dlm_call_i PARTITION(pt)
SELECT phone AS mobile,
       cast(regexp_replace(detail['begin_time'], '(\\d{4})(\\d{2})(\\d{2})(\\d{2})(\\d{2})(\\d{2})', '$1-$2-$3 $4:$5:$6') AS TIMESTAMP) AS action_time,
       CASE
           WHEN detail['call_type'] = 'Inbound' and detail['talk_length'] != '0' THEN '009003001000_tp'
           WHEN detail['call_type'] = 'Inbound' and detail['talk_length'] = '0' THEN '009003002000_tp'
           WHEN detail['call_type'] = 'Outbound' and detail['talk_length'] != '0' THEN '009003003000_tp'
           WHEN detail['call_type'] = 'Outbound' and detail['talk_length'] = '0' THEN '009003004000_tp'
       END AS touchpoint_id,
       pt
FROM cdp.cdm_cdp_customer_behavior_detail
WHERE TYPE = 'dlm_call'