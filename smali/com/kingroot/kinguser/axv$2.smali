.class Lcom/kingroot/kinguser/axv$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/agg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axv;->TF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bcf:Lcom/kingroot/kinguser/axv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axv;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/kingroot/kinguser/axv$2;->bcf:Lcom/kingroot/kinguser/axv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public p(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 112
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fe()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 114
    :goto_0
    if-eqz v0, :cond_1

    .line 115
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x1888f

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 120
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aks;->cb(Z)V

    .line 121
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x1888e

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1
.end method
