.class Lcom/kingroot/kinguser/axm$10$1;
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
.field final synthetic bai:Lcom/kingroot/kinguser/axm$10;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm$10;)V
    .locals 0

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$10$1;->bai:Lcom/kingroot/kinguser/axm$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$10$1;->bai:Lcom/kingroot/kinguser/axm$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$10;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->i(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/aui$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aui$a;->Qd()V

    .line 1194
    return-void
.end method
