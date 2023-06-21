.class public Lcom/kingroot/kinguser/aop$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/up;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 2

    .prologue
    .line 92
    packed-switch p1, :pswitch_data_0

    .line 108
    :goto_0
    :pswitch_0
    return-void

    .line 94
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/aoo;->Ko()Lcom/kingroot/kinguser/aoo;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aoo;->a(Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;)V

    goto :goto_0

    .line 97
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/aoo;->Ko()Lcom/kingroot/kinguser/aoo;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aoo;->b(Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;)V

    goto :goto_0

    .line 100
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/aoo;->Ko()Lcom/kingroot/kinguser/aoo;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aoo;->hH(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :pswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/aoo;->Ko()Lcom/kingroot/kinguser/aoo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aoo;->Kc()V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 113
    packed-switch p1, :pswitch_data_0

    .line 121
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 115
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/aoo;->Ko()Lcom/kingroot/kinguser/aoo;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aoo;->hI(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 117
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/aoo;->Ko()Lcom/kingroot/kinguser/aoo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aoo;->JY()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 119
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/aoo;->Ko()Lcom/kingroot/kinguser/aoo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aoo;->JX()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
