.class Lcom/kingroot/kinguser/bfq$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfq;->aaE()Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bnh:Lcom/kingroot/kinguser/bfq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfq;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/kingroot/kinguser/bfq$3;->bnh:Lcom/kingroot/kinguser/bfq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 319
    iget-object v0, p0, Lcom/kingroot/kinguser/bfq$3;->bnh:Lcom/kingroot/kinguser/bfq;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfq;->bne:Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    invoke-interface {v0}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 320
    iget-object v0, p0, Lcom/kingroot/kinguser/bfq$3;->bnh:Lcom/kingroot/kinguser/bfq;

    iput-object v2, v0, Lcom/kingroot/kinguser/bfq;->bne:Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    .line 322
    iget-object v0, p0, Lcom/kingroot/kinguser/bfq$3;->bnh:Lcom/kingroot/kinguser/bfq;

    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bfw;->aaU()Z

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bfq;->a(ZLcom/kingroot/kinguser/urlcheck/aidl/ICallback;)V

    .line 323
    return-void
.end method
