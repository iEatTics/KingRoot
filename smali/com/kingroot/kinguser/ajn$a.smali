.class public Lcom/kingroot/kinguser/ajn$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/up;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ajn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 3

    .prologue
    .line 65
    packed-switch p1, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 67
    :pswitch_0
    new-instance v1, Lcom/kingroot/kinguser/ajq;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ajq;-><init>()V

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/ajq;->g(ZZ)V

    goto :goto_0

    .line 71
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/ajr;->zt()Lcom/kingroot/kinguser/ajr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ajr;->zq()V

    goto :goto_0

    .line 76
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/ajr;->zt()Lcom/kingroot/kinguser/ajr;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/ajr;->b(ZLjava/util/List;)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method
