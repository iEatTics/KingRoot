.class Lcom/kingroot/kinguser/anq$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/anh$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anq;->cB(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anq;

.field final synthetic val$change:Z


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anq;Z)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/kingroot/kinguser/anq$3;->this$0:Lcom/kingroot/kinguser/anq;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/anq$3;->val$change:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/kingroot/kinguser/anq$3;->val$change:Z

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$3;->this$0:Lcom/kingroot/kinguser/anq;

    iget-object v1, p0, Lcom/kingroot/kinguser/anq$3;->this$0:Lcom/kingroot/kinguser/anq;

    const/16 v2, 0xc

    invoke-static {v1, p1, v2}, Lcom/kingroot/kinguser/anq;->a(Lcom/kingroot/kinguser/anq;Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anq;->a(Lcom/kingroot/kinguser/anq;Ljava/util/List;)Ljava/util/List;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$3;->this$0:Lcom/kingroot/kinguser/anq;

    iget-object v1, p0, Lcom/kingroot/kinguser/anq$3;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v1}, Lcom/kingroot/kinguser/anq;->j(Lcom/kingroot/kinguser/anq;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anq;->b(Lcom/kingroot/kinguser/anq;Ljava/util/List;)V

    .line 310
    return-void
.end method
