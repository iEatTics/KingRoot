.class public Lcom/kingroot/kinguser/apc$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/up;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/apc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 2

    .prologue
    .line 93
    packed-switch p1, :pswitch_data_0

    .line 109
    :goto_0
    :pswitch_0
    return-void

    .line 95
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/apb;->KQ()Lcom/kingroot/kinguser/apb;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/apb;->a(Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;)V

    goto :goto_0

    .line 98
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/apb;->KQ()Lcom/kingroot/kinguser/apb;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/apb;->b(Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;)V

    goto :goto_0

    .line 101
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/apb;->KQ()Lcom/kingroot/kinguser/apb;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/apb;->hH(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :pswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/apb;->KQ()Lcom/kingroot/kinguser/apb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apb;->Kc()V

    goto :goto_0

    .line 93
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
    .line 114
    packed-switch p1, :pswitch_data_0

    .line 122
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 116
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/apb;->KQ()Lcom/kingroot/kinguser/apb;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/apb;->hI(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 118
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/apb;->KQ()Lcom/kingroot/kinguser/apb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apb;->JY()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 120
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/apb;->KQ()Lcom/kingroot/kinguser/apb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apb;->JX()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
