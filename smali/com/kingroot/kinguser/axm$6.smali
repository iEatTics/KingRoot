.class Lcom/kingroot/kinguser/axm$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm;->Mf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm;)V
    .locals 0

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$6;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$6;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->r(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/apy;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apy;->gl(I)V

    .line 1051
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$6;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->r(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/apy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apy;->nL()V

    .line 1052
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$6;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->m(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/asd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/asd;->gs(I)Z

    .line 1053
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$6;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->s(Lcom/kingroot/kinguser/axm;)V

    .line 1054
    return-void
.end method
