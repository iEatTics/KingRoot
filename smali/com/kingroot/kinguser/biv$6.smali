.class Lcom/kingroot/kinguser/biv$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/biv;->r(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic amA:Lcom/kingroot/kinguser/aic;

.field final synthetic buY:Lcom/kingroot/kinguser/biv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/biv;Lcom/kingroot/kinguser/aic;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/kingroot/kinguser/biv$6;->buY:Lcom/kingroot/kinguser/biv;

    iput-object p2, p0, Lcom/kingroot/kinguser/biv$6;->amA:Lcom/kingroot/kinguser/aic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/kingroot/kinguser/biv$6;->amA:Lcom/kingroot/kinguser/aic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aic;->dismiss()V

    .line 216
    iget-object v0, p0, Lcom/kingroot/kinguser/biv$6;->buY:Lcom/kingroot/kinguser/biv;

    invoke-static {v0}, Lcom/kingroot/kinguser/biv;->d(Lcom/kingroot/kinguser/biv;)V

    .line 219
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188e4

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 221
    return-void
.end method
