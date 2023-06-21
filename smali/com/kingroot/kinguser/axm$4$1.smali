.class Lcom/kingroot/kinguser/axm$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bag:Lcom/kingroot/kinguser/axm$4;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm$4;)V
    .locals 0

    .prologue
    .line 857
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$4$1;->bag:Lcom/kingroot/kinguser/axm$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 861
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$4$1;->bag:Lcom/kingroot/kinguser/axm$4;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$4;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->n(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/bet;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/bhv;->acN()Lcom/kingroot/kinguser/bhv;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bhv;->iR(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bet;->aq(Z)V

    .line 862
    return-void
.end method
