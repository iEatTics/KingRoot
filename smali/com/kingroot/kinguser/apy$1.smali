.class Lcom/kingroot/kinguser/apy$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/apy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aKn:Lcom/kingroot/kinguser/apy;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/apy;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/kingroot/kinguser/apy$1;->aKn:Lcom/kingroot/kinguser/apy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 44
    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/apy$1;->aKn:Lcom/kingroot/kinguser/apy;

    invoke-static {v0}, Lcom/kingroot/kinguser/apy;->c(Lcom/kingroot/kinguser/apy;)Lcom/kingroot/common/uilib/MainExpCircleView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/apy$1;->aKn:Lcom/kingroot/kinguser/apy;

    invoke-static {v1}, Lcom/kingroot/kinguser/apy;->a(Lcom/kingroot/kinguser/apy;)I

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/apy$1;->aKn:Lcom/kingroot/kinguser/apy;

    invoke-static {v2}, Lcom/kingroot/kinguser/apy;->b(Lcom/kingroot/kinguser/apy;)I

    move-result v2

    new-instance v3, Lcom/kingroot/kinguser/apy$1$1;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/apy$1$1;-><init>(Lcom/kingroot/kinguser/apy$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/common/uilib/MainExpCircleView;->a(IILcom/kingroot/common/uilib/MainExpInnerCircleView$a;)V

    .line 65
    :cond_0
    return-void
.end method
