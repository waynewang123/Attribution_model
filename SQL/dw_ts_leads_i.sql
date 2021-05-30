select phone as mobile, detail['behavior_time'] as action_time
case 
when detail['first_resouce_name'] = '厂方导入' and detail['second_resouce_name'] = '官网' then '100003001001'
when detail['first_resouce_name'] = '第一方触点' and detail['second_resouce_name'] = '名爵官网试乘试驾' then '100003001002'
when detail['first_resouce_name'] = '厂方二手车平台' and detail['second_resouce_name'] = '名爵官网移动端二手车' then '100003001003'
when detail['first_resouce_name'] = '第一方触点' and detail['second_resouce_name'] = '官网一键发信' then '100003001004'
when detail['first_resouce_name'] = '厂方二手车平台' and detail['second_resouce_name'] = '名爵官网PC端二手车' then '100003001005'
when detail['first_resouce_name'] = '厂方二手车平台' and detail['second_resouce_name'] = '名爵APP二手车' then '100003002001'
when detail['first_resouce_name'] = '名爵APP' and detail['second_resouce_name'] = '名爵试乘试驾' then '100003002002'
when detail['first_resouce_name'] = '第一方触点' and detail['second_resouce_name'] = '官方APP试乘试驾留资' then '100003002003'
when detail['first_resouce_name'] = '名爵APP' and detail['second_resouce_name'] = '名爵小额定' then '100003002004'
when detail['first_resouce_name'] = '荣威APP' and detail['second_resouce_name'] = '定金定单未支付' then '100003002005'
when detail['first_resouce_name'] = '俱乐部' and detail['second_resouce_name'] = 'MG俱乐部' then '100003002006'
when detail['first_resouce_name'] = '第一方触点' and detail['second_resouce_name'] = '支付宝小程序' then '100003003001'
when detail['first_resouce_name'] = '第一方触点' and detail['second_resouce_name'] = '快应用' then '100003003002'
when detail['first_resouce_name'] = '第一方触点' and detail['second_resouce_name'] = '快手小程序' then '100003003003'
when detail['first_resouce_name'] = '第一方触点' and detail['second_resouce_name'] = '抖音小程序' then '100003003004'
when detail['first_resouce_name'] = '第一方触点' and detail['second_resouce_name'] = '今日头条小程序' then '100003003005'
when detail['first_resouce_name'] = '第一方触点' and detail['second_resouce_name'] = '益普索益起答' then '100004001001'
when detail['first_resouce_name'] = '厂方导入' and detail['second_resouce_name'] = '地区性网站' then '100004001002'
when detail['first_resouce_name'] = '厂方导入' and detail['second_resouce_name'] = '合作伙伴' then 
when detail['first_resouce_name'] = '活动' and detail['second_resouce_name'] = 'KBU活动集客-顾问' then
when detail['first_resouce_name'] = '活动' and detail['second_resouce_name'] = 'KBU活动集客-小蜜蜂' then
when detail['first_resouce_name'] = '活动' and detail['second_resouce_name'] = 'KBU活动集客-大屏' then 
when detail['first_resouce_name'] = '大数据平台' and detail['second_resouce_name'] = '车享家' then
when detail['first_resouce_name'] = '大数据平台' and detail['second_resouce_name'] = '工商银行' then
when detail['first_resouce_name'] = '大数据平台' and detail['second_resouce_name'] = '平安租赁' then
when detail['first_resouce_name'] = '大数据平台' and detail['second_resouce_name'] = '环球车享' then
when detail['first_resouce_name'] = '大数据平台' and detail['second_resouce_name'] = '浦发银行' then 
when detail['first_resouce_name'] = '大数据平台' and detail['second_resouce_name'] = '金融保客' then 
when detail['first_resouce_name'] = '厂方二手车平台' and detail['second_resouce_name'] = '手动创建二手车' then
when detail['first_resouce_name'] = '第一方触点' and detail['second_resouce_name'] = '车展互动活动' then 
when detail['first_resouce_name'] = '第一方触点' and detail['second_resouce_name'] = '总部短信营销' then
when detail['first_resouce_name'] = '厂方导入' and detail['second_resouce_name'] = '员工推荐购车' then
when detail['first_resouce_name'] = '经销商网销主动开拓' and detail['second_resouce_name'] = '基盘客户(网销)' then
when detail['first_resouce_name'] = '经销商网销主动开拓' and detail['second_resouce_name'] = '官方分配' then
when detail['first_resouce_name'] = '经销商网销主动开拓' and detail['second_resouce_name'] = '网销外展' then
when detail['first_resouce_name'] = '经销商网销主动开拓' and detail['second_resouce_name'] = '网销线上外拓' then
when detail['first_resouce_name'] = '厂方的网销其他平台' and detail['second_resouce_name'] = '新电商渠道' then
when detail['first_resouce_name'] = '经销商网销主动开拓' and detail['second_resouce_name'] = '新渠道' then 
when detail['first_resouce_name'] = '投放' and detail['second_resouce_name'] = '微信朋友圈' then 
when detail['first_resouce_name'] = '投放' and detail['second_resouce_name'] = '抖音' then
when detail['first_resouce_name'] = '投放' and detail['second_resouce_name'] = '今日头条' then
when detail['first_resouce_name'] = '广告投放' and detail['second_resouce_name'] = '字节跳动效果通' then
when detail['first_resouce_name'] = '投放' and detail['second_resouce_name'] = '第三方电商渠道' then 
when detail['first_resouce_name'] = '大数据平台' and detail['second_resouce_name'] = '冷线索' then 
when detail['first_resouce_name'] = '大数据平台' and detail['second_resouce_name'] = '金线索' then
when detail['first_resouce_name'] = '大数据平台' and detail['second_resouce_name'] = '社交裂变' then
when detail['first_resouce_name'] = '智能调配' and detail['second_resouce_name'] = '精准线索' then
when detail['first_resouce_name'] = '大数据平台' and detail['second_resouce_name'] = '增换购' then
when detail['first_resouce_name'] = '大数据平台' and detail['second_resouce_name'] = '活动报名' then
when detail['first_resouce_name'] = '大数据平台' and detail['second_resouce_name'] = '一键询价' then 
when detail['first_resouce_name'] = '大数据平台' and detail['second_resouce_name'] = '一键留资' then
when detail['first_resouce_name'] = '大数据平台' and detail['second_resouce_name'] = '销售顾问与我联系' then
when detail['first_resouce_name'] = '投放' and detail['second_resouce_name'] = '太平洋汽车网' then 
when detail['first_resouce_name'] = '网站平台接口' and detail['second_resouce_name'] = '易车网' then
when detail['first_resouce_name'] = '经销商网销主动开拓' and detail['second_resouce_name'] = '汽车之家投放' then
when detail['first_resouce_name'] = '网站平台接口' and detail['second_resouce_name'] = '懂车帝' then 
when detail['first_resouce_name'] = '经销商网销主动开拓' and detail['second_resouce_name'] = '社交渠道' then
when detail['first_resouce_name'] = '经销商网销主动开拓' and detail['second_resouce_name'] = '论坛' then 
when detail['first_resouce_name'] = '经销商网销主动开拓' and detail['second_resouce_name'] = 'QQ' then 
when detail['first_resouce_name'] = '经销商网销主动开拓' and detail['second_resouce_name'] = '天猫' then
when detail['first_resouce_name'] = '网站平台接口' and detail['second_resouce_name'] = '腾讯' then 
when detail['first_resouce_name'] = '展厅自然客流(网销建卡)' and detail['second_resouce_name'] = '合作资源1' then
when detail['first_resouce_name'] = '经销商网销主动开拓' and detail['second_resouce_name'] = '合作资源3' then 
when detail['first_resouce_name'] = '经销商网销主动开拓' and detail['second_resouce_name'] = '社交营销' then 
when detail['first_resouce_name'] = '展厅主动开拓' and detail['second_resouce_name'] = '车展' then 
when detail['first_resouce_name'] = '经销商网销主动开拓' and detail['second_resouce_name'] = '合作资源2' then 
when detail['first_resouce_name'] = '网站平台接口' and detail['second_resouce_name'] = '汽车之家' then 
when detail['first_resouce_name'] = '投放' and detail['second_resouce_name'] = '汽车之家投放' then 
when detail['first_resouce_name'] = '网站平台接口' and detail['second_resouce_name'] = '懂车帝' then 
when detail['first_resouce_name'] = '投放' and detail['second_resouce_name'] = '懂车帝广告投放' then 
when detail['first_resouce_name'] = '网站平台接口' and detail['second_resouce_name'] = '易车网' then 
when detail['first_resouce_name'] = '投放' and detail['second_resouce_name'] = '易车广告投放' then 
when detail['first_resouce_name'] = '网站平台接口' and detail['second_resouce_name'] = '太平洋' then 
when detail['first_resouce_name'] = '网站平台接口' and detail['second_resouce_name'] = '17汽车网' then 
when detail['first_resouce_name'] = '网站平台接口' and detail['second_resouce_name'] = '电商' then 
when detail['first_resouce_name'] = '网站平台接口' and detail['second_resouce_name'] = '卡盟粒子' then 
when detail['first_resouce_name'] = '网站平台接口' and detail['second_resouce_name'] = '好车网' then
when detail['first_resouce_name'] = '网站平台接口' and detail['second_resouce_name'] = '爱卡汽车' then 
when detail['first_resouce_name'] = '网站平台接口' and detail['second_resouce_name'] = '腾讯' then 
when detail['first_resouce_name'] = '投放' and detail['second_resouce_name'] = '58汽车' then 
when detail['first_resouce_name'] = '投放' and detail['second_resouce_name'] = '网上车市' then 
when detail['first_resouce_name'] = 'SIS接口分配' and detail['second_resouce_name'] = 'SIS战败客户' then 
when detail['first_resouce_name'] = 'SIS接口分配' and detail['second_resouce_name'] = 'SIS其它' then 
when detail['first_resouce_name'] = 'SIS接口分配' and detail['second_resouce_name'] = 'C/N级客户' then 
when detail['first_resouce_name'] = 'SIS接口分配' and detail['second_resouce_name'] = '爱卡' then 
end as touchpoint_id
from cdp.cdm_cdp_customer_behavior_detail
where type='leads' and pt = '20210517'











