package oicq.wlogin_sdk.request;

import oicq.wlogin_sdk.tools.ErrMsg;
/* loaded from: classes.dex */
public interface WtTicketPromise {
    void Done(Ticket ticket);

    void Failed(ErrMsg errMsg);

    void Timeout(ErrMsg errMsg);
}
