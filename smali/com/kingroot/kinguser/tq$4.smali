.class final Lcom/kingroot/kinguser/tq$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/tq;->b(Lcom/kingroot/kinguser/tq$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Hy:Lcom/kingroot/kinguser/tq$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/tq$a;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/kingroot/kinguser/tq$4;->Hy:Lcom/kingroot/kinguser/tq$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 208
    invoke-static {p2}, Lcom/kingroot/kinguser/tq;->c(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 209
    invoke-static {}, Lcom/kingroot/kinguser/tq;->jD()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/common/framework/service/KServiceManager;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/common/framework/service/IKServiceManager;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/kingroot/kinguser/tq$4;->Hy:Lcom/kingroot/kinguser/tq$a;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/kingroot/kinguser/tq$4;->Hy:Lcom/kingroot/kinguser/tq$a;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/kingroot/kinguser/tq$a;->a(ILcom/kingroot/common/framework/service/IKServiceManager;)V

    .line 213
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 218
    return-void
.end method
