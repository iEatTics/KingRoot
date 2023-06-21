.class Lcom/kingroot/kinguser/axm$10$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aVZ:Z

.field final synthetic bai:Lcom/kingroot/kinguser/axm$10;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm$10;Z)V
    .locals 0

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$10$2;->bai:Lcom/kingroot/kinguser/axm$10;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/axm$10$2;->aVZ:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1202
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axm$10$2;->aVZ:Z

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$10$2;->bai:Lcom/kingroot/kinguser/axm$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$10;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->y(Lcom/kingroot/kinguser/axm;)V

    .line 1207
    :goto_0
    return-void

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$10$2;->bai:Lcom/kingroot/kinguser/axm$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$10;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->i(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/aui$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aui$a;->Qd()V

    goto :goto_0
.end method
