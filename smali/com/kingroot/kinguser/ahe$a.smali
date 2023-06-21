.class public Lcom/kingroot/kinguser/ahe$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/up;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ahe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 3

    .prologue
    .line 106
    packed-switch p1, :pswitch_data_0

    .line 123
    :goto_0
    :pswitch_0
    return-void

    .line 108
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/ahf;->wN()Lcom/kingroot/kinguser/ahf;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ahf;->c(Lcom/kingroot/kinguser/advance/model/AdvancePermModel;)V

    goto :goto_0

    .line 111
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/ahf;->wN()Lcom/kingroot/kinguser/ahf;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/manager/IPermChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ahf;->c(Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;)V

    goto :goto_0

    .line 114
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/ahf;->wN()Lcom/kingroot/kinguser/ahf;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/manager/IPermChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ahf;->d(Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;)V

    goto :goto_0

    .line 117
    :pswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/ahf;->wN()Lcom/kingroot/kinguser/ahf;

    move-result-object v2

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/ahf;->x(Ljava/lang/String;Z)V

    goto :goto_0

    .line 120
    :pswitch_5
    invoke-static {}, Lcom/kingroot/kinguser/ahf;->wN()Lcom/kingroot/kinguser/ahf;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ahf;->h(Ljava/util/Map;)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 129
    packed-switch p1, :pswitch_data_0

    .line 147
    :goto_0
    :pswitch_0
    return-object v0

    .line 131
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/ahf;->wN()Lcom/kingroot/kinguser/ahf;

    move-result-object v2

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/ahf;->q(Ljava/lang/String;I)Lcom/kingroot/kinguser/advance/model/AdvancePermModel;

    move-result-object v0

    goto :goto_0

    .line 134
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/ahf;->wN()Lcom/kingroot/kinguser/ahf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahf;->wI()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 137
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/ahf;->wN()Lcom/kingroot/kinguser/ahf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahf;->wK()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 140
    :pswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/ahf;->wN()Lcom/kingroot/kinguser/ahf;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ahf;->fN(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 143
    :pswitch_5
    invoke-static {}, Lcom/kingroot/kinguser/ahf;->wN()Lcom/kingroot/kinguser/ahf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahf;->wJ()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
