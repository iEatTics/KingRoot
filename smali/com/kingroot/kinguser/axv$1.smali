.class Lcom/kingroot/kinguser/axv$1;
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
    .line 79
    iput-object p1, p0, Lcom/kingroot/kinguser/axv$1;->bcf:Lcom/kingroot/kinguser/axv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public p(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fd()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 85
    :goto_0
    if-eqz v0, :cond_1

    .line 86
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x1888d

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 91
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aks;->ca(Z)V

    .line 92
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x1888c

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1
.end method
