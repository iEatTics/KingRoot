.class Lcom/kingroot/kinguser/aoe$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aoe;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aFg:Lcom/kingroot/kinguser/aoe;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aoe;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/kingroot/kinguser/aoe$5;->aFg:Lcom/kingroot/kinguser/aoe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 182
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe$5;->aFg:Lcom/kingroot/kinguser/aoe;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aoe;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aoe$5;->aFg:Lcom/kingroot/kinguser/aoe;

    invoke-static {v1}, Lcom/kingroot/kinguser/aoe;->e(Lcom/kingroot/kinguser/aoe;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/activitys/AppDetailActivity;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;Z)V

    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe$5;->aFg:Lcom/kingroot/kinguser/aoe;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoe;->a(Lcom/kingroot/kinguser/aoe;)V

    .line 184
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe$5;->aFg:Lcom/kingroot/kinguser/aoe;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoe;->f(Lcom/kingroot/kinguser/aoe;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 185
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1893e

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe$5;->aFg:Lcom/kingroot/kinguser/aoe;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoe;->f(Lcom/kingroot/kinguser/aoe;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 187
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1893c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0
.end method
