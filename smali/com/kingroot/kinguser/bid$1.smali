.class Lcom/kingroot/kinguser/bid$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bid;->acU()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic btg:Lcom/kingroot/kinguser/bid;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bid;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/kingroot/kinguser/bid$1;->btg:Lcom/kingroot/kinguser/bid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/bid$1;->btg:Lcom/kingroot/kinguser/bid;

    invoke-static {v0}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid;)Lcom/kingroot/kinguser/bid$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/bid$1;->btg:Lcom/kingroot/kinguser/bid;

    invoke-static {v0}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid;)Lcom/kingroot/kinguser/bid$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/bid$b;->n(Landroid/view/View;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bid$1;->btg:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 66
    return-void
.end method
