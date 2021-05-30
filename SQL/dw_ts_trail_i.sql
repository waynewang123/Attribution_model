
SET hive.exec.dynamic.partition.mode=nonstrict;


INSERT OVERWRITE TABLE dw_ts_trail_i PARTITION(pt='${pt}')
SELECT phone AS mobile,
       detail['call_time'] AS action_time,
       CASE
           WHEN create_date is not NULL and booking_channel_value != 'miniprogra?' and booking_channel_value != 'app?' and booking_channel_value != '官网（且不通过一方触点预约试乘试驾' then '007001004000_tp'
           when affirm_time is not NULL then '007002000000_tp'
           when finished_time is not NULL then '007003000000_tp'
           when b_stutas='EVALUATE' and last_update_date is not NULL then '007004000000_tp'
           when cancel_time is not NULL then '013003000000_tp'
       END AS touchpoint_id
FROM ods.ods_trial_tb_booking_info
