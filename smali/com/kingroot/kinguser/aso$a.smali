.class public Lcom/kingroot/kinguser/aso$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/up;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 3

    .prologue
    .line 59
    packed-switch p1, :pswitch_data_0

    .line 95
    :goto_0
    :pswitch_0
    return-void

    .line 61
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/asp;->On()Lcom/kingroot/kinguser/asp;

    move-result-object v2

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v1}, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    move-result-object v1

    .line 61
    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/asp;->a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    goto :goto_0

    .line 65
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/asp;->On()Lcom/kingroot/kinguser/asp;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/asp;->a(Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    goto :goto_0

    .line 68
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/asp;->On()Lcom/kingroot/kinguser/asp;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/asp;->iy(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/asp;->On()Lcom/kingroot/kinguser/asp;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/asp;->iH(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :pswitch_5
    invoke-static {}, Lcom/kingroot/kinguser/asp;->On()Lcom/kingroot/kinguser/asp;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/asp;->a(Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener;)V

    goto :goto_0

    .line 77
    :pswitch_6
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    .line 78
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 79
    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 80
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/asp;->On()Lcom/kingroot/kinguser/asp;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/asp;->a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {v1}, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    move-result-object v1

    goto :goto_1

    .line 83
    :pswitch_7
    invoke-static {}, Lcom/kingroot/kinguser/asp;->On()Lcom/kingroot/kinguser/asp;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/asp;->b(Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener;)V

    goto/16 :goto_0

    .line 86
    :pswitch_8
    invoke-static {}, Lcom/kingroot/kinguser/asp;->On()Lcom/kingroot/kinguser/asp;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/asp;->iz(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :pswitch_9
    invoke-static {}, Lcom/kingroot/kinguser/asp;->On()Lcom/kingroot/kinguser/asp;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/asp;->iA(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 92
    :pswitch_a
    invoke-static {}, Lcom/kingroot/kinguser/asp;->On()Lcom/kingroot/kinguser/asp;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/asp;->iB(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    sparse-switch p1, :sswitch_data_0

    .line 113
    :goto_0
    return-object v0

    .line 102
    :sswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/asp;->On()Lcom/kingroot/kinguser/asp;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/asp;->ix(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 105
    :sswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/asp;->On()Lcom/kingroot/kinguser/asp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asp;->GT()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 109
    :sswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/asp;->On()Lcom/kingroot/kinguser/asp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asp;->GU()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x17 -> :sswitch_1
        0x18 -> :sswitch_2
    .end sparse-switch
.end method
