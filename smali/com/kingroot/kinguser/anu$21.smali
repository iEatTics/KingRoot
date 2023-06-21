.class Lcom/kingroot/kinguser/anu$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anu;->aM(Ljava/util/List;)V
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
    .line 380
    iput-object p1, p0, Lcom/kingroot/kinguser/anu$21;->this$0:Lcom/kingroot/kinguser/anu;

    iput-object p2, p0, Lcom/kingroot/kinguser/anu$21;->val$appModels:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$21;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->h(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 384
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$21;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->h(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/anu$21;->val$appModels:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 386
    return-void
.end method
