.class Lcom/kingroot/kinguser/agg$2;
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


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/agg;Lcom/kingroot/kinguser/auc;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/kingroot/kinguser/agg$2;->alv:Lcom/kingroot/kinguser/agg;

    iput-object p2, p0, Lcom/kingroot/kinguser/agg$2;->alu:Lcom/kingroot/kinguser/auc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/kingroot/kinguser/agg$2;->alu:Lcom/kingroot/kinguser/auc;

    iget-object v0, v0, Lcom/kingroot/kinguser/auc;->aRj:Lcom/kingroot/kinguser/agg$a;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/agg$a;->p(Landroid/view/View;)V

    .line 299
    return-void
.end method
