.class Lcom/kingroot/kinguser/axg$4;
.super Lcom/kingroot/kinguser/axg$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYv:Lcom/kingroot/kinguser/axg;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axg;)V
    .locals 1

    .prologue
    .line 667
    iput-object p1, p0, Lcom/kingroot/kinguser/axg$4;->aYv:Lcom/kingroot/kinguser/axg;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/axg$a;-><init>(Lcom/kingroot/kinguser/axg;Lcom/kingroot/kinguser/axg$1;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 670
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axg$4;->aYC:Z

    if-eqz v0, :cond_0

    .line 672
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x1885b

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 674
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    move v2, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/ady;->a(IIIIIII)V

    .line 683
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axg$4;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-static {v0}, Lcom/kingroot/kinguser/axg;->a(Lcom/kingroot/kinguser/axg;)Lcom/kingroot/kinguser/auh$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/auh$a;->PX()Z

    .line 684
    return-void

    .line 678
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v2

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, v1

    invoke-virtual/range {v2 .. v9}, Lcom/kingroot/kinguser/ady;->a(IIIIIII)V

    .line 681
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1885a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0
.end method
