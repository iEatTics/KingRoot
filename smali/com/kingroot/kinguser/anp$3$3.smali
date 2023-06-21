.class Lcom/kingroot/kinguser/anp$3$3;
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
    .line 207
    iput-object p1, p0, Lcom/kingroot/kinguser/anp$3$3;->aDa:Lcom/kingroot/kinguser/anp$3;

    iput-object p2, p0, Lcom/kingroot/kinguser/anp$3$3;->aCv:Lcom/kingroot/kinguser/bid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$3$3;->aDa:Lcom/kingroot/kinguser/anp$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/anp$3;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v0}, Lcom/kingroot/kinguser/anp;->b(Lcom/kingroot/kinguser/anp;)Lcom/kingroot/kinguser/aug$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/anp$3$3;->aDa:Lcom/kingroot/kinguser/anp$3;

    iget-object v1, v1, Lcom/kingroot/kinguser/anp$3;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v1}, Lcom/kingroot/kinguser/anp;->a(Lcom/kingroot/kinguser/anp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aug$a;->bl(Ljava/util/List;)V

    .line 213
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$3$3;->aCv:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 214
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$3$3;->aDa:Lcom/kingroot/kinguser/anp$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/anp$3;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v0}, Lcom/kingroot/kinguser/anp;->c(Lcom/kingroot/kinguser/anp;)V

    .line 216
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188fe

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 217
    return-void
.end method
