.class Lcom/kingroot/kinguser/axg$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axg;->TX()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYv:Lcom/kingroot/kinguser/axg;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axg;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/kingroot/kinguser/axg$3;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 627
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 629
    invoke-static {v3}, Lcom/kingroot/kinguser/aix;->aP(Z)I

    move-result v0

    .line 631
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aix;->q(IZ)I

    .line 633
    iget-object v1, p0, Lcom/kingroot/kinguser/axg$3;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/axg;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x27d9

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 634
    return-void
.end method
