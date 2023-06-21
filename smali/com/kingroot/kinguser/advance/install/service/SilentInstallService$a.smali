.class Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;->this$0:Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;

    .line 50
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 55
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;

    .line 63
    new-instance v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;

    invoke-direct {v2, v8}, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;-><init>(I)V

    .line 64
    const/4 v1, 0x0

    .line 68
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/aks;->Fc()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/aks;->Fs()Z

    move-result v3

    if-nez v3, :cond_3

    .line 70
    :cond_1
    const/4 v3, 0x2

    iput v3, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    .line 71
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->a(Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    if-eqz v1, :cond_0

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-eq v0, v6, :cond_2

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-ne v0, v7, :cond_0

    .line 184
    :cond_2
    invoke-static {v1}, Lcom/kingroot/kinguser/ahc;->d(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Lcom/kingroot/kinguser/ahc;

    move-result-object v0

    .line 185
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v5, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;-><init>(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;Lcom/kingroot/kinguser/ahc;)V

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0

    .line 77
    :cond_3
    :try_start_1
    invoke-static {v0}, Lcom/kingroot/kinguser/agx;->a(Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;)Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 82
    :try_start_2
    iget-object v3, p0, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;->this$0:Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;

    iget-object v4, v1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anE:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;->a(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;->this$0:Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;

    iget-object v4, v1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anH:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;->a(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 83
    :cond_4
    const/4 v3, 0x2

    iput v3, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    .line 84
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->a(Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    if-eqz v1, :cond_0

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-eq v0, v6, :cond_5

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-ne v0, v7, :cond_0

    .line 184
    :cond_5
    invoke-static {v1}, Lcom/kingroot/kinguser/ahc;->d(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Lcom/kingroot/kinguser/ahc;

    move-result-object v0

    .line 185
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v5, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;-><init>(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;Lcom/kingroot/kinguser/ahc;)V

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto/16 :goto_0

    .line 89
    :cond_6
    :try_start_3
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f07034d

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apJ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 90
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f07034d

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 91
    const/4 v3, 0x2

    iput v3, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    .line 92
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->a(Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    if-eqz v1, :cond_0

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-eq v0, v6, :cond_7

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-ne v0, v7, :cond_0

    .line 184
    :cond_7
    invoke-static {v1}, Lcom/kingroot/kinguser/ahc;->d(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Lcom/kingroot/kinguser/ahc;

    move-result-object v0

    .line 185
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v5, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;-><init>(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;Lcom/kingroot/kinguser/ahc;)V

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto/16 :goto_0

    .line 97
    :cond_8
    :try_start_4
    invoke-static {}, Lcom/kingroot/kinguser/awe;->SI()Lcom/kingroot/kinguser/awe;

    move-result-object v3

    iget-object v4, v1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anH:Ljava/lang/String;

    iget-object v5, v1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apL:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/kingroot/kinguser/awe;->aB(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 98
    const/4 v4, 0x5

    if-ne v3, v4, :cond_a

    .line 100
    const/4 v3, 0x2

    iput v3, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    .line 101
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->a(Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 183
    if-eqz v1, :cond_0

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-eq v0, v6, :cond_9

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-ne v0, v7, :cond_0

    .line 184
    :cond_9
    invoke-static {v1}, Lcom/kingroot/kinguser/ahc;->d(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Lcom/kingroot/kinguser/ahc;

    move-result-object v0

    .line 185
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v5, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;-><init>(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;Lcom/kingroot/kinguser/ahc;)V

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto/16 :goto_0

    .line 106
    :cond_a
    :try_start_5
    invoke-static {}, Lcom/kingroot/kinguser/agy;->wk()Lcom/kingroot/kinguser/agy;

    move-result-object v3

    iget-object v4, v1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/agy;->fG(Ljava/lang/String;)Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;

    move-result-object v3

    .line 109
    if-eqz v3, :cond_b

    .line 111
    iget v3, v3, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;->mRule:I

    packed-switch v3, :pswitch_data_1

    .line 134
    :cond_b
    invoke-static {}, Lcom/kingroot/kinguser/awe;->SI()Lcom/kingroot/kinguser/awe;

    move-result-object v3

    iget-object v4, v1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/awe;->jw(Ljava/lang/String;)I

    move-result v3

    .line 137
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/aks;->Fd()Z

    move-result v4

    .line 138
    packed-switch v3, :pswitch_data_2

    .line 178
    :pswitch_1
    iget-object v3, p0, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;->this$0:Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;

    invoke-static {v3, v0, v1}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;->a(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 183
    if-eqz v1, :cond_0

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-eq v0, v6, :cond_c

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-ne v0, v7, :cond_0

    .line 184
    :cond_c
    invoke-static {v1}, Lcom/kingroot/kinguser/ahc;->d(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Lcom/kingroot/kinguser/ahc;

    move-result-object v0

    .line 185
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v5, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;-><init>(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;Lcom/kingroot/kinguser/ahc;)V

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto/16 :goto_0

    .line 113
    :pswitch_2
    const/4 v3, 0x1

    :try_start_6
    iput v3, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    .line 114
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->a(Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;)V

    .line 115
    const/4 v0, 0x0

    iput v0, v1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mState:I

    .line 116
    invoke-static {}, Lcom/kingroot/kinguser/agy;->wk()Lcom/kingroot/kinguser/agy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/agy;->a(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 183
    if-eqz v1, :cond_0

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-eq v0, v6, :cond_d

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-ne v0, v7, :cond_0

    .line 184
    :cond_d
    invoke-static {v1}, Lcom/kingroot/kinguser/ahc;->d(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Lcom/kingroot/kinguser/ahc;

    move-result-object v0

    .line 185
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v5, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;-><init>(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;Lcom/kingroot/kinguser/ahc;)V

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto/16 :goto_0

    .line 120
    :pswitch_3
    const/4 v3, 0x2

    :try_start_7
    iput v3, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    .line 121
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->a(Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;)V

    .line 122
    const/4 v0, 0x1

    iput v0, v1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mState:I

    .line 123
    invoke-static {}, Lcom/kingroot/kinguser/agy;->wk()Lcom/kingroot/kinguser/agy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/agy;->a(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 183
    if-eqz v1, :cond_0

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-eq v0, v6, :cond_e

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-ne v0, v7, :cond_0

    .line 184
    :cond_e
    invoke-static {v1}, Lcom/kingroot/kinguser/ahc;->d(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Lcom/kingroot/kinguser/ahc;

    move-result-object v0

    .line 185
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v5, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;-><init>(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;Lcom/kingroot/kinguser/ahc;)V

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto/16 :goto_0

    .line 127
    :pswitch_4
    const/4 v3, 0x3

    :try_start_8
    iput v3, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    .line 128
    iget-object v3, p0, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;->this$0:Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;

    invoke-static {v3, v0, v1}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;->a(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 183
    if-eqz v1, :cond_0

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-eq v0, v6, :cond_f

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-ne v0, v7, :cond_0

    .line 184
    :cond_f
    invoke-static {v1}, Lcom/kingroot/kinguser/ahc;->d(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Lcom/kingroot/kinguser/ahc;

    move-result-object v0

    .line 185
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v5, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;-><init>(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;Lcom/kingroot/kinguser/ahc;)V

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto/16 :goto_0

    .line 141
    :pswitch_5
    if-eqz v4, :cond_11

    .line 142
    const/4 v3, 0x0

    :try_start_9
    iput v3, v1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mState:I

    .line 143
    invoke-static {}, Lcom/kingroot/kinguser/agy;->wk()Lcom/kingroot/kinguser/agy;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/kingroot/kinguser/agy;->a(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)V

    .line 144
    const/4 v3, 0x1

    iput v3, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    .line 145
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->a(Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 183
    :goto_1
    if-eqz v1, :cond_0

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-eq v0, v6, :cond_10

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-ne v0, v7, :cond_0

    .line 184
    :cond_10
    invoke-static {v1}, Lcom/kingroot/kinguser/ahc;->d(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Lcom/kingroot/kinguser/ahc;

    move-result-object v0

    .line 185
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v5, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;-><init>(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;Lcom/kingroot/kinguser/ahc;)V

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto/16 :goto_0

    .line 148
    :cond_11
    :try_start_a
    iget-object v3, p0, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;->this$0:Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;

    invoke-static {v3, v0, v1}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;->a(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 179
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 183
    :goto_2
    if-eqz v0, :cond_0

    iget v1, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-eq v1, v6, :cond_12

    iget v1, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-ne v1, v7, :cond_0

    .line 184
    :cond_12
    invoke-static {v0}, Lcom/kingroot/kinguser/ahc;->d(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Lcom/kingroot/kinguser/ahc;

    move-result-object v0

    .line 185
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v5, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;-><init>(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;Lcom/kingroot/kinguser/ahc;)V

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto/16 :goto_0

    .line 153
    :pswitch_6
    const/4 v3, 0x1

    :try_start_b
    iput v3, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    .line 154
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->a(Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 183
    if-eqz v1, :cond_0

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-eq v0, v6, :cond_13

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-ne v0, v7, :cond_0

    .line 184
    :cond_13
    invoke-static {v1}, Lcom/kingroot/kinguser/ahc;->d(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Lcom/kingroot/kinguser/ahc;

    move-result-object v0

    .line 185
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v5, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;-><init>(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;Lcom/kingroot/kinguser/ahc;)V

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto/16 :goto_0

    .line 159
    :pswitch_7
    if-eqz v4, :cond_15

    .line 160
    const/4 v3, 0x1

    :try_start_c
    iput v3, v1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mState:I

    .line 161
    invoke-static {}, Lcom/kingroot/kinguser/agy;->wk()Lcom/kingroot/kinguser/agy;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/kingroot/kinguser/agy;->a(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)V

    .line 162
    const/4 v3, 0x2

    iput v3, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    .line 163
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->a(Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 183
    :goto_3
    if-eqz v1, :cond_0

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-eq v0, v6, :cond_14

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-ne v0, v7, :cond_0

    .line 184
    :cond_14
    invoke-static {v1}, Lcom/kingroot/kinguser/ahc;->d(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Lcom/kingroot/kinguser/ahc;

    move-result-object v0

    .line 185
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v5, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;-><init>(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;Lcom/kingroot/kinguser/ahc;)V

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto/16 :goto_0

    .line 166
    :cond_15
    :try_start_d
    iget-object v3, p0, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;->this$0:Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;

    invoke-static {v3, v0, v1}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;->a(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    .line 183
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_17

    iget v3, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-eq v3, v6, :cond_16

    iget v2, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-ne v2, v7, :cond_17

    .line 184
    :cond_16
    invoke-static {v1}, Lcom/kingroot/kinguser/ahc;->d(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Lcom/kingroot/kinguser/ahc;

    move-result-object v1

    .line 185
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/bed;

    sget-object v4, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v5, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v6, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;

    invoke-direct {v6, p0, v1}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;-><init>(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;Lcom/kingroot/kinguser/ahc;)V

    invoke-direct {v3, v4, v5, v8, v6}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 192
    :cond_17
    throw v0

    .line 171
    :pswitch_8
    const/4 v3, 0x2

    :try_start_e
    iput v3, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    .line 172
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->a(Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 183
    if-eqz v1, :cond_0

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-eq v0, v6, :cond_18

    iget v0, v2, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;->anb:I

    if-ne v0, v7, :cond_0

    .line 184
    :cond_18
    invoke-static {v1}, Lcom/kingroot/kinguser/ahc;->d(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Lcom/kingroot/kinguser/ahc;

    move-result-object v0

    .line 185
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v5, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;-><init>(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;Lcom/kingroot/kinguser/ahc;)V

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto/16 :goto_0

    .line 179
    :catch_1
    move-exception v0

    move-object v0, v1

    goto/16 :goto_2

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 111
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 138
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_1
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method
