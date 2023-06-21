.class Lcom/kingroot/kinguser/anp$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anp;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aCZ:Lcom/kingroot/kinguser/anp;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anp;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/kingroot/kinguser/anp$4;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 233
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188fa

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 234
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$4;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v0}, Lcom/kingroot/kinguser/anp;->c(Lcom/kingroot/kinguser/anp;)V

    .line 235
    return-void
.end method
