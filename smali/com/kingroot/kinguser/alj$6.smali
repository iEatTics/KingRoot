.class Lcom/kingroot/kinguser/alj$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alj;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qj:I

.field final synthetic axi:Lcom/kingroot/kinguser/alj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alj;I)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$6;->axi:Lcom/kingroot/kinguser/alj;

    iput p2, p0, Lcom/kingroot/kinguser/alj$6;->Qj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 497
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18969

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 498
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$6;->axi:Lcom/kingroot/kinguser/alj;

    invoke-static {v0}, Lcom/kingroot/kinguser/alj;->b(Lcom/kingroot/kinguser/alj;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/AppDownloadManagerActivity;->aM(Landroid/content/Context;)V

    .line 499
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$6;->axi:Lcom/kingroot/kinguser/alj;

    invoke-static {v0}, Lcom/kingroot/kinguser/alj;->c(Lcom/kingroot/kinguser/alj;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/alj$6;->Qj:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 500
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$6;->axi:Lcom/kingroot/kinguser/alj;

    iget v1, p0, Lcom/kingroot/kinguser/alj$6;->Qj:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/alj;->notifyItemRemoved(I)V

    .line 501
    return-void
.end method
