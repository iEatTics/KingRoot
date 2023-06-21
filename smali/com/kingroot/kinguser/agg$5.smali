.class Lcom/kingroot/kinguser/agg$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/agg;Lcom/kingroot/kinguser/auc;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/kingroot/kinguser/agg$5;->alv:Lcom/kingroot/kinguser/agg;

    iput-object p2, p0, Lcom/kingroot/kinguser/agg$5;->alu:Lcom/kingroot/kinguser/auc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/kingroot/kinguser/agg$5;->alu:Lcom/kingroot/kinguser/auc;

    iget-object v0, v0, Lcom/kingroot/kinguser/auc;->aRj:Lcom/kingroot/kinguser/agg$a;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/agg$a;->p(Landroid/view/View;)V

    .line 385
    iget-object v1, p0, Lcom/kingroot/kinguser/agg$5;->alu:Lcom/kingroot/kinguser/auc;

    iget-object v0, p0, Lcom/kingroot/kinguser/agg$5;->alu:Lcom/kingroot/kinguser/auc;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/auc;->aRh:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/kingroot/kinguser/auc;->aRh:Z

    .line 388
    return-void

    .line 385
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
