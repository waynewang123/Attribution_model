
SET hive.exec.dynamic.partition.mode=nonstrict;


INSERT OVERWRITE TABLE dw_ts_followup_i PARTITION (pt)
SELECT phone AS mobile,
       detail['actual_follow_time'] AS action_time,
       CASE
           WHEN detail['follow_way'] = '邀约' THEN '009002001000_tp'
           WHEN detail['follow_way'] = '电话' THEN '009002002000_tp'
           WHEN detail['follow_way'] = '展厅接待' THEN '009002003000_tp'
           WHEN detail['follow_way'] = '进入展厅' THEN '009002004000_tp'
           WHEN detail['follow_way'] = '短信' THEN '009002005000_tp'
           WHEN detail['follow_way'] = '参加外展' THEN '009002006000_tp'
           WHEN detail['follow_way'] = '微信' THEN '009002008000_tp'
           WHEN detail['follow_way'] = '客户来电' THEN '009002009000_tp'
           WHEN detail['follow_way'] = '上门拜访' THEN '009002010000_tp'
           WHEN detail['follow_way'] = '市场活动' THEN '009002011000_tp'
           WHEN detail['follow_way'] = '电子邮件' THEN '009002012000_tp'
           WHEN detail['follow_way'] IN ('其他',
                                         'QQ',
                                         '论坛',
                                         '邮寄',
                                         '主机厂活动',
                                         '微博',
                                         'MSN') THEN '009002013000_tp'
       END AS touchpoint_id,
       pt
FROM cdp.cdm_cdp_customer_behavior_detail
WHERE TYPE = 'follow_up'