.class Lcom/kingroot/kinguser/bet$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bet$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bad:Z

.field final synthetic blG:Lcom/kingroot/kinguser/bet$6;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bet$6;Z)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/kingroot/kinguser/bet$6$1;->blG:Lcom/kingroot/kinguser/bet$6;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/bet$6$1;->bad:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 241
    iget-object v0, p0, Lcom/kingroot/kinguser/bet$6$1;->blG:Lcom/kingroot/kinguser/bet$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/bet$6;->blE:Lcom/kingroot/kinguser/bet;

    invoke-static {v0}, Lcom/kingroot/kinguser/bet;->d(Lcom/kingroot/kinguser/bet;)Lcom/kingroot/kinguser/anx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anx;->getWholeView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/kingroot/kinguser/bet$6$1;->blG:Lcom/kingroot/kinguser/bet$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/bet$6;->blE:Lcom/kingroot/kinguser/bet;

    invoke-static {v0}, Lcom/kingroot/kinguser/bet;->d(Lcom/kingroot/kinguser/bet;)Lcom/kingroot/kinguser/anx;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bet$6$1;->blG:Lcom/kingroot/kinguser/bet$6;

    iget-object v1, v1, Lcom/kingroot/kinguser/bet$6;->blF:Lcom/kingroot/kinguser/anx$a;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/anx;->a(Lcom/kingroot/kinguser/anx$a;)V

    .line 244
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bet$6$1;->bad:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/kingroot/kinguser/bet$6$1;->blG:Lcom/kingroot/kinguser/bet$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/bet$6;->blE:Lcom/kingroot/kinguser/bet;

    invoke-static {v0}, Lcom/kingroot/kinguser/bet;->d(Lcom/kingroot/kinguser/bet;)Lcom/kingroot/kinguser/anx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anx;->Jm()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bet$6$1$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bet$6$1$1;-><init>(Lcom/kingroot/kinguser/bet$6$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/kingroot/kinguser/bet$6$1;->blG:Lcom/kingroot/kinguser/bet$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/bet$6;->blE:Lcom/kingroot/kinguser/bet;

    invoke-static {v0}, Lcom/kingroot/kinguser/bet;->d(Lcom/kingroot/kinguser/bet;)Lcom/kingroot/kinguser/anx;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bet$6$1;->blG:Lcom/kingroot/kinguser/bet$6;

    iget-object v1, v1, Lcom/kingroot/kinguser/bet$6;->blE:Lcom/kingroot/kinguser/bet;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/anx;->aV(Landroid/content/Context;)V

    .line 274
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->Bd()J

    move-result-wide v0

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 258
    const-wide/32 v4, 0x5265c00

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/acu;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/kingroot/kinguser/bet$6$1;->blG:Lcom/kingroot/kinguser/bet$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/bet$6;->blF:Lcom/kingroot/kinguser/anx$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/anx$a;->xr()V

    goto :goto_0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bet$6$1;->blG:Lcom/kingroot/kinguser/bet$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/bet$6;->blE:Lcom/kingroot/kinguser/bet;

    invoke-static {v0}, Lcom/kingroot/kinguser/bet;->d(Lcom/kingroot/kinguser/bet;)Lcom/kingroot/kinguser/anx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anx;->JP()V

    .line 263
    iget-object v0, p0, Lcom/kingroot/kinguser/bet$6$1;->blG:Lcom/kingroot/kinguser/bet$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/bet$6;->blE:Lcom/kingroot/kinguser/bet;

    invoke-static {v0}, Lcom/kingroot/kinguser/bet;->d(Lcom/kingroot/kinguser/bet;)Lcom/kingroot/kinguser/anx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anx;->Jm()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bet$6$1$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bet$6$1$2;-><init>(Lcom/kingroot/kinguser/bet$6$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/kingroot/kinguser/bet$6$1;->blG:Lcom/kingroot/kinguser/bet$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/bet$6;->blE:Lcom/kingroot/kinguser/bet;

    invoke-static {v0}, Lcom/kingroot/kinguser/bet;->d(Lcom/kingroot/kinguser/bet;)Lcom/kingroot/kinguser/anx;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bet$6$1;->blG:Lcom/kingroot/kinguser/bet$6;

    iget-object v1, v1, Lcom/kingroot/kinguser/bet$6;->blE:Lcom/kingroot/kinguser/bet;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bet;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Lcom/kingroot/kinguser/anx;->l(Landroid/content/Context;I)V

    .line 272
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/akl;->aq(J)V

    goto :goto_0
.end method
