.class public Lcom/kingroot/kinguser/biq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/up;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/biq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 2

    .prologue
    .line 94
    packed-switch p1, :pswitch_data_0

    .line 113
    :goto_0
    :pswitch_0
    return-void

    .line 96
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/bir;->ade()Lcom/kingroot/kinguser/bir;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/xmod/ITpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/xmod/ITpsCallback;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bir;->a(Lcom/kingroot/kinguser/xmod/ITpsCallback;)V

    goto :goto_0

    .line 99
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/bir;->ade()Lcom/kingroot/kinguser/bir;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/xmod/ITpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/xmod/ITpsCallback;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bir;->b(Lcom/kingroot/kinguser/xmod/ITpsCallback;)V

    goto :goto_0

    .line 102
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/bir;->ade()Lcom/kingroot/kinguser/bir;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bir;->start()V

    goto :goto_0

    .line 105
    :pswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/bir;->ade()Lcom/kingroot/kinguser/bir;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bir;->stop()V

    goto :goto_0

    .line 108
    :pswitch_5
    invoke-static {}, Lcom/kingroot/kinguser/bir;->ade()Lcom/kingroot/kinguser/bir;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bir;->eh(Z)V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 117
    packed-switch p1, :pswitch_data_0

    .line 125
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 119
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/bir;->ade()Lcom/kingroot/kinguser/bir;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bir;->adb()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 121
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/bir;->ade()Lcom/kingroot/kinguser/bir;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bir;->jf(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 123
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/bir;->ade()Lcom/kingroot/kinguser/bir;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bir;->adc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
