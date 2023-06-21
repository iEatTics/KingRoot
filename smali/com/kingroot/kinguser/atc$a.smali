.class public Lcom/kingroot/kinguser/atc$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/up;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 3

    .prologue
    .line 104
    packed-switch p1, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 106
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/atb;->OR()Lcom/kingroot/kinguser/atb;

    move-result-object v2

    .line 107
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 108
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v1}, Lcom/kingroot/kinguser/gamebox/dao/ILoadRecommendedSoftDetailListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/gamebox/dao/ILoadRecommendedSoftDetailListener;

    move-result-object v1

    .line 106
    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/atb;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;Lcom/kingroot/kinguser/gamebox/dao/ILoadRecommendedSoftDetailListener;)V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 82
    packed-switch p1, :pswitch_data_0

    .line 99
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 85
    :pswitch_0
    if-eqz p2, :cond_0

    .line 88
    invoke-static {}, Lcom/kingroot/kinguser/atb;->OR()Lcom/kingroot/kinguser/atb;

    move-result-object v2

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v1}, Lcom/kingroot/kinguser/gamebox/foreground/model/IGameFreshListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/gamebox/foreground/model/IGameFreshListener;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/atb;->a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/foreground/model/IGameFreshListener;)V

    goto :goto_0

    .line 91
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/atb;->OR()Lcom/kingroot/kinguser/atb;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/atb;->iU(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 93
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/atb;->OR()Lcom/kingroot/kinguser/atb;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/atb;->iV(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 95
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/atb;->OR()Lcom/kingroot/kinguser/atb;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/atb;->m(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    move-result-object v0

    goto :goto_1

    .line 82
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
