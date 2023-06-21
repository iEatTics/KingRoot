.class Lcom/kingroot/kinguser/anp$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anp$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aCv:Lcom/kingroot/kinguser/bid;

.field final synthetic aDa:Lcom/kingroot/kinguser/anp$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anp$3;Lcom/kingroot/kinguser/bid;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/kingroot/kinguser/anp$3$1;->aDa:Lcom/kingroot/kinguser/anp$3;

    iput-object p2, p0, Lcom/kingroot/kinguser/anp$3$1;->aCv:Lcom/kingroot/kinguser/bid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$3$1;->aCv:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 182
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$3$1;->aDa:Lcom/kingroot/kinguser/anp$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/anp$3;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v0}, Lcom/kingroot/kinguser/anp;->c(Lcom/kingroot/kinguser/anp;)V

    .line 184
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188fc

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 185
    return-void
.end method
