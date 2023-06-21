.class Lcom/kingroot/kinguser/aya$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/auc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aya;->TF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bcz:Lcom/kingroot/kinguser/aya;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aya;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/kingroot/kinguser/aya$1;->bcz:Lcom/kingroot/kinguser/aya;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public x(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 110
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aks;->eg(I)V

    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/aya$1;->bcz:Lcom/kingroot/kinguser/aya;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aya;->Tw()V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aya$1;->bcz:Lcom/kingroot/kinguser/aya;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aya;->Tw()V

    .line 114
    return-void
.end method
