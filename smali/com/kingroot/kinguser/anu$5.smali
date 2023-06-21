.class Lcom/kingroot/kinguser/anu$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anu;->aP(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anu;

.field final synthetic val$appModels:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anu;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/kingroot/kinguser/anu$5;->this$0:Lcom/kingroot/kinguser/anu;

    iput-object p2, p0, Lcom/kingroot/kinguser/anu$5;->val$appModels:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 445
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$5;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->k(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 446
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$5;->val$appModels:Ljava/util/List;

    if-nez v0, :cond_0

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$5;->val$appModels:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/kingroot/kinguser/anu$5;->val$appModels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 451
    iget-object v1, p0, Lcom/kingroot/kinguser/anu$5;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v1}, Lcom/kingroot/kinguser/anu;->k(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
