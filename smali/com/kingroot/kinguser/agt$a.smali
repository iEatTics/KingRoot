.class public Lcom/kingroot/kinguser/agt$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/up;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 3

    .prologue
    .line 59
    packed-switch p1, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 61
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/agu;->we()Lcom/kingroot/kinguser/agu;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/install/IInjectCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/advance/install/IInjectCallback;

    move-result-object v2

    .line 62
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 61
    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/agu;->a(Lcom/kingroot/kinguser/advance/install/IInjectCallback;Z)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    packed-switch p1, :pswitch_data_0

    .line 76
    :goto_0
    return-object v0

    .line 72
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/agu;->we()Lcom/kingroot/kinguser/agu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agu;->wc()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
