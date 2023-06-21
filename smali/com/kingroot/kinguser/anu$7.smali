.class Lcom/kingroot/kinguser/anu$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anu;->aR(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEd:Ljava/util/List;

.field final synthetic this$0:Lcom/kingroot/kinguser/anu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anu;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/kingroot/kinguser/anu$7;->this$0:Lcom/kingroot/kinguser/anu;

    iput-object p2, p0, Lcom/kingroot/kinguser/anu$7;->aEd:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$7;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->m(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 480
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$7;->aEd:Ljava/util/List;

    if-nez v0, :cond_0

    .line 485
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$7;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->m(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/anu$7;->aEd:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
