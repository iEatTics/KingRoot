.class Lcom/kingroot/kinguser/anp$2;
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
    .line 136
    iput-object p1, p0, Lcom/kingroot/kinguser/anp$2;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->R(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$2;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v0}, Lcom/kingroot/kinguser/anp;->b(Lcom/kingroot/kinguser/anp;)Lcom/kingroot/kinguser/aug$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/anp$2;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v1}, Lcom/kingroot/kinguser/anp;->a(Lcom/kingroot/kinguser/anp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aug$a;->bl(Ljava/util/List;)V

    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$2;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v0}, Lcom/kingroot/kinguser/anp;->c(Lcom/kingroot/kinguser/anp;)V

    .line 148
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1892d

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 149
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$2;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v0}, Lcom/kingroot/kinguser/anp;->d(Lcom/kingroot/kinguser/anp;)V

    goto :goto_0
.end method
