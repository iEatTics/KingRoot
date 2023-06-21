package com.kingroot.kinguser.distribution.examination.net;
import com.kingroot.kinguser.distribution.examination.entity.ExamRecommendAppInfo;
/**
 * 异步加载推荐App数据回调接口
 * Created by austenchen on 2016/3/18.
 */
interface ReqAppCallback {
    oneway void onResult(in List<ExamRecommendAppInfo> infos);
}
