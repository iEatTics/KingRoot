package com.kingroot.kinguser.distribution.appsmarket.interfaces;
import com.kingroot.kinguser.distribution.appsmarket.entity.GameSummonEntity;
interface IQuerySummonListResult {
    oneway void onResult(int result, in List<GameSummonEntity> results);
}