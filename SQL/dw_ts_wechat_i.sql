
SET hive.exec.dynamic.partition.mode=nonstrict;


INSERT OVERWRITE TABLE dw_ts_wechat_i PARTITION(pt='${pt}')
SELECT phone AS mobile,
       detail['call_time'] AS action_time,
       CASE
           WHEN detail['ia_type'] = 'DIG_ACC_SUBSCR' then '002001006000_tp'
           when detail['id_type'] = 'DIG_ACC_BROADCAST' then '002008001001_tp'
           when detail['id_type'] = 'DIG_ACC_INBOUND' then '002008001002_tp'
           when detail['id_type'] = 'DIG_ACC_OUTBOUND' then '002008001003_tp'
           when detail['ia_type'] = 'DIG_ACC_UNSUBSC' then '013001000000_tp'
       END AS touchpoint_id
FROM cdp.cdm_cdp_customer_behavior_detail
where type = 'ma_wechat'