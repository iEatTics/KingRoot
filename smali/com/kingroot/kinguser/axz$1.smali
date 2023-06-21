.class Lcom/kingroot/kinguser/axz$1;
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
    .line 89
    iput-object p1, p0, Lcom/kingroot/kinguser/axz$1;->bcx:Lcom/kingroot/kinguser/axz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public x(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 95
    :try_start_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/kingroot/kinguser/axz$1;->bcx:Lcom/kingroot/kinguser/axz;

    invoke-static {v1}, Lcom/kingroot/kinguser/axz;->a(Lcom/kingroot/kinguser/axz;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 97
    if-eqz v1, :cond_0

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-lt v2, v0, :cond_0

    .line 98
    aget v0, v1, v0

    .line 99
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aks;->ee(I)V

    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/axz$1;->bcx:Lcom/kingroot/kinguser/axz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axz;->Tw()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axz$1;->bcx:Lcom/kingroot/kinguser/axz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axz;->Tw()V

    .line 107
    return-void

    .line 102
    :catch_0
    move-exception v0

    goto :goto_0
.end method
