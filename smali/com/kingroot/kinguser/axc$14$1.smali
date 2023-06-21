.class Lcom/kingroot/kinguser/axc$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bhe$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axc$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXC:Lcom/kingroot/kinguser/axc$14;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axc$14;)V
    .locals 0

    .prologue
    .line 686
    iput-object p1, p0, Lcom/kingroot/kinguser/axc$14$1;->aXC:Lcom/kingroot/kinguser/axc$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dt(Z)V
    .locals 2

    .prologue
    .line 690
    if-eqz p1, :cond_0

    .line 691
    new-instance v0, Lcom/kingroot/kinguser/axc$14$1$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axc$14$1$1;-><init>(Lcom/kingroot/kinguser/axc$14$1;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 703
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$14$1;->aXC:Lcom/kingroot/kinguser/axc$14;

    iget-object v0, v0, Lcom/kingroot/kinguser/axc$14;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axc;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
