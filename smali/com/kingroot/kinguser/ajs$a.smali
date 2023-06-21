.class public Lcom/kingroot/kinguser/ajs$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/up;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ajs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 3

    .prologue
    .line 72
    if-nez p2, :cond_0

    .line 73
    new-instance p2, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p2, v0}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    .line 75
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 77
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/ajt;->zz()Lcom/kingroot/kinguser/ajt;

    move-result-object v1

    .line 78
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    .line 77
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ajt;->b(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/ajt;->zz()Lcom/kingroot/kinguser/ajt;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ajt;->gy(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/ajt;->zz()Lcom/kingroot/kinguser/ajt;

    move-result-object v2

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/ajt;->ah(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/ajt;->zz()Lcom/kingroot/kinguser/ajt;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ajt;->aS(Z)V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 99
    if-nez p2, :cond_0

    .line 100
    new-instance v0, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    .line 102
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 108
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 104
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/ajt;->zz()Lcom/kingroot/kinguser/ajt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ajt;->zC()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
