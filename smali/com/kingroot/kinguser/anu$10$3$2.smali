.class Lcom/kingroot/kinguser/anu$10$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anu$10$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEh:Lcom/kingroot/kinguser/anu$10$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anu$10$3;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Lcom/kingroot/kinguser/anu$10$3$2;->aEh:Lcom/kingroot/kinguser/anu$10$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 742
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10$3$2;->aEh:Lcom/kingroot/kinguser/anu$10$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/anu$10$3;->aEg:Lcom/kingroot/kinguser/anu$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anu;->oP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10$3$2;->aEh:Lcom/kingroot/kinguser/anu$10$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/anu$10$3;->aEg:Lcom/kingroot/kinguser/anu$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->x(Lcom/kingroot/kinguser/anu;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x320

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 746
    :cond_0
    return-void
.end method
