.class Lcom/kingroot/kinguser/agg$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/agg;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic alu:Lcom/kingroot/kinguser/auc;

.field final synthetic alv:Lcom/kingroot/kinguser/agg;

.field final synthetic alw:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/agg;Lcom/kingroot/kinguser/auc;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/kingroot/kinguser/agg$3;->alv:Lcom/kingroot/kinguser/agg;

    iput-object p2, p0, Lcom/kingroot/kinguser/agg$3;->alu:Lcom/kingroot/kinguser/auc;

    iput-object p3, p0, Lcom/kingroot/kinguser/agg$3;->alw:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/kingroot/kinguser/agg$3;->alu:Lcom/kingroot/kinguser/auc;

    iget-object v0, v0, Lcom/kingroot/kinguser/auc;->aRk:Lcom/kingroot/kinguser/auc$a;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/kingroot/kinguser/agg$3;->alu:Lcom/kingroot/kinguser/auc;

    iget-object v0, v0, Lcom/kingroot/kinguser/auc;->aRk:Lcom/kingroot/kinguser/auc$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/agg$3;->alw:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auc$a;->x(Landroid/view/View;)V

    .line 339
    :cond_0
    return-void
.end method
