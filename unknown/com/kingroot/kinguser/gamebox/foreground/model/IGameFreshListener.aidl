package com.kingroot.kinguser.gamebox.foreground.model;

import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;

interface IGameFreshListener {

    oneway void onUpdateGameFinish(in List<AppBaseModel> appModels);

}