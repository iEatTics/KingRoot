.class Lcom/kingroot/kinguser/axz$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/auc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axz;->TF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bcx:Lcom/kingroot/kinguser/axz;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axz;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/kingroot/kinguser/axz$2;->bcx:Lcom/kingroot/kinguser/axz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public x(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 125
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 126
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aks;->ef(I)V

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/axz$2;->bcx:Lcom/kingroot/kinguser/axz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axz;->Tw()V

    .line 129
    :cond_0
    return-void
.end method
