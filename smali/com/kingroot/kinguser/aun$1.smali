.class Lcom/kingroot/kinguser/aun$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aun;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aun;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/kingroot/kinguser/aun$1;->this$0:Lcom/kingroot/kinguser/aun;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 69
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bbv;->WP()Z

    move-result v2

    .line 71
    invoke-static {}, Lcom/kingroot/kinguser/ahe;->wL()Lcom/kingroot/kinguser/ahe;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/ahe;->wK()I

    move-result v3

    .line 73
    iget-object v4, p0, Lcom/kingroot/kinguser/aun$1;->this$0:Lcom/kingroot/kinguser/aun;

    invoke-static {v4}, Lcom/kingroot/kinguser/aun;->a(Lcom/kingroot/kinguser/aun;)Lcom/kingroot/kinguser/aue$b;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Lcom/kingroot/kinguser/aue$b;->u(IZ)V

    .line 74
    iget-object v3, p0, Lcom/kingroot/kinguser/aun$1;->this$0:Lcom/kingroot/kinguser/aun;

    invoke-static {v3}, Lcom/kingroot/kinguser/aun;->a(Lcom/kingroot/kinguser/aun;)Lcom/kingroot/kinguser/aue$b;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/kingroot/kinguser/aue$b;->cM(Z)V

    .line 76
    if-eqz v2, :cond_0

    .line 77
    iget-object v1, p0, Lcom/kingroot/kinguser/aun$1;->this$0:Lcom/kingroot/kinguser/aun;

    invoke-static {v1}, Lcom/kingroot/kinguser/aun;->a(Lcom/kingroot/kinguser/aun;)Lcom/kingroot/kinguser/aue$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/aue$b;->cN(Z)V

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aun$1;->this$0:Lcom/kingroot/kinguser/aun;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/aun;->a(Lcom/kingroot/kinguser/aun;Z)V

    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/aun$1;->this$0:Lcom/kingroot/kinguser/aun;

    invoke-static {v0}, Lcom/kingroot/kinguser/aun;->b(Lcom/kingroot/kinguser/aun;)V

    .line 86
    return-void

    .line 80
    :cond_0
    iget-object v3, p0, Lcom/kingroot/kinguser/aun$1;->this$0:Lcom/kingroot/kinguser/aun;

    invoke-static {v3}, Lcom/kingroot/kinguser/aun;->a(Lcom/kingroot/kinguser/aun;)Lcom/kingroot/kinguser/aue$b;

    move-result-object v3

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bbv;->WO()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bbv;->WQ()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-interface {v3, v0}, Lcom/kingroot/kinguser/aue$b;->cN(Z)V

    goto :goto_0
.end method
