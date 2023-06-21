package com.kingroot.kinguser.distribution.appsmarket.interfaces;
import com.kingroot.kinguser.distribution.appsmarket.entity.GameReservationState;
interface IQueryReservationStateResult {
    oneway void onResult(int result, in List<GameReservationState> results);
}