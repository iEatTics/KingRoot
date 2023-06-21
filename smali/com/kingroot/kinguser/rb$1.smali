.class Lcom/kingroot/kinguser/rb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/rb;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Fv:Lcom/kingroot/kinguser/rb;

.field final synthetic val$moves:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/rb;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/kingroot/kinguser/rb$1;->Fv:Lcom/kingroot/kinguser/rb;

    iput-object p2, p0, Lcom/kingroot/kinguser/rb$1;->val$moves:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/kingroot/kinguser/rb$d;

    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$1;->Fv:Lcom/kingroot/kinguser/rb;

    iget-object v1, v5, Lcom/kingroot/kinguser/rb$d;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v2, v5, Lcom/kingroot/kinguser/rb$d;->fromX:I

    iget v3, v5, Lcom/kingroot/kinguser/rb$d;->fromY:I

    iget v4, v5, Lcom/kingroot/kinguser/rb$d;->toX:I

    iget v5, v5, Lcom/kingroot/kinguser/rb$d;->toY:I

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/rb;->a(Lcom/kingroot/kinguser/rb;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$1;->Fv:Lcom/kingroot/kinguser/rb;

    invoke-static {v0}, Lcom/kingroot/kinguser/rb;->a(Lcom/kingroot/kinguser/rb;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/rb$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method
