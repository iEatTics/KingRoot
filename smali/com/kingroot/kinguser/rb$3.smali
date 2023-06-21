.class Lcom/kingroot/kinguser/rb$3;
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

.field final synthetic val$additions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/rb;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/kingroot/kinguser/rb$3;->Fv:Lcom/kingroot/kinguser/rb;

    iput-object p2, p0, Lcom/kingroot/kinguser/rb$3;->val$additions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 174
    iget-object v2, p0, Lcom/kingroot/kinguser/rb$3;->Fv:Lcom/kingroot/kinguser/rb;

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/rb;->a(Lcom/kingroot/kinguser/rb;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 177
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$3;->Fv:Lcom/kingroot/kinguser/rb;

    invoke-static {v0}, Lcom/kingroot/kinguser/rb;->c(Lcom/kingroot/kinguser/rb;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/rb$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method
