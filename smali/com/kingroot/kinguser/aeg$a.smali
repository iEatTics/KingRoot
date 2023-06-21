.class public Lcom/kingroot/kinguser/aeg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/up;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 4

    .prologue
    .line 283
    sparse-switch p1, :sswitch_data_0

    .line 332
    :goto_0
    :sswitch_0
    return-void

    .line 285
    :sswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/aej;->up()Lcom/kingroot/kinguser/aee;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aee;->uh()V

    goto :goto_0

    .line 290
    :sswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/aej;->up()Lcom/kingroot/kinguser/aee;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/aee;->cK(I)V

    goto :goto_0

    .line 295
    :sswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/aej;->up()Lcom/kingroot/kinguser/aee;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aee;->uj()V

    goto :goto_0

    .line 303
    :sswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/aej;->up()Lcom/kingroot/kinguser/aee;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aee;->ts()V

    goto :goto_0

    .line 307
    :sswitch_5
    invoke-static {}, Lcom/kingroot/kinguser/aej;->up()Lcom/kingroot/kinguser/aee;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aee;->tt()V

    goto :goto_0

    .line 311
    :sswitch_6
    invoke-static {}, Lcom/kingroot/kinguser/aej;->up()Lcom/kingroot/kinguser/aee;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aee;->tu()V

    goto :goto_0

    .line 316
    :sswitch_7
    invoke-static {}, Lcom/kingroot/kinguser/aej;->up()Lcom/kingroot/kinguser/aee;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/aee;->b(Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;)V

    goto :goto_0

    .line 320
    :sswitch_8
    invoke-static {}, Lcom/kingroot/kinguser/aej;->up()Lcom/kingroot/kinguser/aee;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/aee;->c(Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;)V

    goto :goto_0

    .line 324
    :sswitch_9
    invoke-static {}, Lcom/kingroot/kinguser/aej;->up()Lcom/kingroot/kinguser/aee;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/kingroot/kinguser/aee;->ab(J)V

    goto :goto_0

    .line 283
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x8 -> :sswitch_2
        0xf -> :sswitch_7
        0x10 -> :sswitch_8
        0x12 -> :sswitch_3
        0x13 -> :sswitch_0
        0x16 -> :sswitch_4
        0x17 -> :sswitch_5
        0x18 -> :sswitch_6
        0x20 -> :sswitch_9
    .end sparse-switch
.end method

.method public c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 336
    packed-switch p1, :pswitch_data_0

    .line 379
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 338
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/aej;->up()Lcom/kingroot/kinguser/aee;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aee;->ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v0

    goto :goto_0

    .line 342
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/aej;->up()Lcom/kingroot/kinguser/aee;

    move-result-object v2

    .line 343
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;

    .line 344
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 342
    invoke-interface {v2, v0, v1}, Lcom/kingroot/kinguser/aee;->a(Lcom/kingroot/kingmaster/network/updata/CheckResult;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 347
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/aej;->up()Lcom/kingroot/kinguser/aee;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aee;->tc()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 350
    :pswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/aej;->up()Lcom/kingroot/kinguser/aee;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aee;->uf()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 353
    :pswitch_5
    invoke-static {}, Lcom/kingroot/kinguser/aej;->up()Lcom/kingroot/kinguser/aee;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aee;->ug()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 356
    :pswitch_6
    invoke-static {}, Lcom/kingroot/kinguser/aej;->up()Lcom/kingroot/kinguser/aee;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aee;->tq()Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    move-result-object v0

    goto :goto_0

    .line 359
    :pswitch_7
    invoke-static {}, Lcom/kingroot/kinguser/aej;->up()Lcom/kingroot/kinguser/aee;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aee;->tr()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 362
    :pswitch_8
    invoke-static {}, Lcom/kingroot/kinguser/aej;->up()Lcom/kingroot/kinguser/aee;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 363
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;

    move-result-object v0

    .line 362
    invoke-interface {v1, v2, v0}, Lcom/kingroot/kinguser/aee;->a(ZLcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 366
    :pswitch_9
    invoke-static {}, Lcom/kingroot/kinguser/aej;->up()Lcom/kingroot/kinguser/aee;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/aee;->a(Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 369
    :pswitch_a
    invoke-static {}, Lcom/kingroot/kinguser/aej;->up()Lcom/kingroot/kinguser/aee;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/aee;->aw(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 372
    :pswitch_b
    invoke-static {}, Lcom/kingroot/kinguser/aej;->up()Lcom/kingroot/kinguser/aee;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aee;->ui()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 375
    :pswitch_c
    invoke-static {}, Lcom/kingroot/kinguser/aej;->up()Lcom/kingroot/kinguser/aee;

    move-result-object v2

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/u;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v0, v4, v5}, Lcom/kingroot/kinguser/aee;->a(Lcom/kingroot/kinguser/u;J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method
