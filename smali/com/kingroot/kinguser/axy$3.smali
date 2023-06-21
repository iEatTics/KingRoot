.class Lcom/kingroot/kinguser/axy$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axy;->UI()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bcw:Lcom/kingroot/kinguser/axy;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axy;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/kingroot/kinguser/axy$3;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 250
    iget-object v0, p0, Lcom/kingroot/kinguser/axy$3;->bcw:Lcom/kingroot/kinguser/axy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axy;->b(Lcom/kingroot/kinguser/axy;Z)Z

    .line 251
    iget-object v0, p0, Lcom/kingroot/kinguser/axy$3;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axy;->TT()V

    .line 252
    iget-object v0, p0, Lcom/kingroot/kinguser/axy$3;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axy;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 253
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/aea;->g(III)V

    .line 254
    return-void
.end method
