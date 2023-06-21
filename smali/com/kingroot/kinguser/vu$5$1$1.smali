.class Lcom/kingroot/kinguser/vu$5$1$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/vu$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic LG:Lcom/kingroot/kinguser/vu$5$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/vu$5$1;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/kingroot/kinguser/vu$5$1$1;->LG:Lcom/kingroot/kinguser/vu$5$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 541
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 542
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$5$1$1;->LG:Lcom/kingroot/kinguser/vu$5$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/vu$5$1;->LF:Lcom/kingroot/kinguser/vu$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/vu$5;->LC:Lcom/kingroot/kinguser/vu;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/vu;->a(Lcom/kingroot/kinguser/vu;I)V

    .line 543
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$5$1$1;->LG:Lcom/kingroot/kinguser/vu$5$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/vu$5$1;->LF:Lcom/kingroot/kinguser/vu$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/vu$5;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0}, Lcom/kingroot/kinguser/vu;->l(Lcom/kingroot/kinguser/vu;)V

    .line 544
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$5$1$1;->LG:Lcom/kingroot/kinguser/vu$5$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/vu$5$1;->LF:Lcom/kingroot/kinguser/vu$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/vu$5;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0}, Lcom/kingroot/kinguser/vu;->h(Lcom/kingroot/kinguser/vu;)V

    .line 545
    return-void
.end method
