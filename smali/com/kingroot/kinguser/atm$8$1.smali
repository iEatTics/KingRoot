.class Lcom/kingroot/kinguser/atm$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atm$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aOR:Lcom/kingroot/kinguser/atm$8;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atm$8;)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Lcom/kingroot/kinguser/atm$8$1;->aOR:Lcom/kingroot/kinguser/atm$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$8$1;->aOR:Lcom/kingroot/kinguser/atm$8;

    iget-object v0, v0, Lcom/kingroot/kinguser/atm$8;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->r(Lcom/kingroot/kinguser/atm;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$8$1;->aOR:Lcom/kingroot/kinguser/atm$8;

    iget-object v0, v0, Lcom/kingroot/kinguser/atm$8;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->s(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/atq;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kingroot/kinguser/atq;->aPT:Z

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$8$1;->aOR:Lcom/kingroot/kinguser/atm$8;

    iget-object v0, v0, Lcom/kingroot/kinguser/atm$8;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->t(Lcom/kingroot/kinguser/atm;)V

    .line 826
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$8$1;->aOR:Lcom/kingroot/kinguser/atm$8;

    iget-object v0, v0, Lcom/kingroot/kinguser/atm$8;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->s(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/atq;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$8$1;->aOR:Lcom/kingroot/kinguser/atm$8;

    iget-object v0, v0, Lcom/kingroot/kinguser/atm$8;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->s(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/atq;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atm$8$1;->aOR:Lcom/kingroot/kinguser/atm$8;

    iget-object v1, v1, Lcom/kingroot/kinguser/atm$8;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v1}, Lcom/kingroot/kinguser/atm;->r(Lcom/kingroot/kinguser/atm;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/atq;->aZ(Ljava/util/List;)V

    .line 828
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$8$1;->aOR:Lcom/kingroot/kinguser/atm$8;

    iget-object v0, v0, Lcom/kingroot/kinguser/atm$8;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->s(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/atq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atq;->notifyDataSetChanged()V

    .line 830
    :cond_1
    return-void
.end method
