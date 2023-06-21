.class Lcom/kingroot/kinguser/cfh$d$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfh$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ccs:Lcom/kingroot/kinguser/cfh$d;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfh$d;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/kingroot/kinguser/cfh$d$1;->ccs:Lcom/kingroot/kinguser/cfh$d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 759
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/cfn;

    .line 760
    new-instance v1, Lcom/kingroot/kinguser/bg;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bg;-><init>()V

    .line 761
    const v2, -0xa89c10

    iput v2, v1, Lcom/kingroot/kinguser/bg;->retCode:I

    .line 762
    iget v2, p1, Landroid/os/Message;->what:I

    iput v2, v1, Lcom/kingroot/kinguser/bg;->jX:I

    .line 763
    if-eqz v0, :cond_0

    .line 764
    iget v0, v0, Lcom/kingroot/kinguser/cfn;->bZh:I

    iput v0, v1, Lcom/kingroot/kinguser/bg;->cmd:I

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh$d$1;->ccs:Lcom/kingroot/kinguser/cfh$d;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cfh$d;->a(Lcom/kingroot/kinguser/cfh$d;Lcom/kingroot/kinguser/bg;)V

    .line 768
    return-void
.end method
