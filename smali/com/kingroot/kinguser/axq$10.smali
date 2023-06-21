.class Lcom/kingroot/kinguser/axq$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbg:Lcom/kingroot/kinguser/axq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axq;)V
    .locals 0

    .prologue
    .line 705
    iput-object p1, p0, Lcom/kingroot/kinguser/axq$10;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 708
    iget-object v0, p0, Lcom/kingroot/kinguser/axq$10;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-static {v0}, Lcom/kingroot/kinguser/axq;->b(Lcom/kingroot/kinguser/axq;)Lcom/kingroot/kinguser/bcp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/kingroot/kinguser/axq$10;->bbg:Lcom/kingroot/kinguser/axq;

    new-instance v1, Lcom/kingroot/kinguser/bcp;

    iget-object v2, p0, Lcom/kingroot/kinguser/axq$10;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/axq;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/axq$10;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/axq;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/kingroot/kinguser/bcp;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axq;->a(Lcom/kingroot/kinguser/axq;Lcom/kingroot/kinguser/bcp;)Lcom/kingroot/kinguser/bcp;

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axq$10;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-static {v0}, Lcom/kingroot/kinguser/axq;->b(Lcom/kingroot/kinguser/axq;)Lcom/kingroot/kinguser/bcp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcp;->show()V

    .line 712
    return-void
.end method
