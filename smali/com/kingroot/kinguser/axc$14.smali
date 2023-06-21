.class Lcom/kingroot/kinguser/axc$14;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXx:Lcom/kingroot/kinguser/axc;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axc;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/kingroot/kinguser/axc$14;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 681
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 684
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x186d0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 686
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kingroot/kinguser/axc$14;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v1}, Lcom/kingroot/kinguser/axc;->h(Lcom/kingroot/kinguser/axc;)Z

    move-result v1

    new-instance v2, Lcom/kingroot/kinguser/axc$14$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/axc$14$1;-><init>(Lcom/kingroot/kinguser/axc$14;)V

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/bhe;->a(ZZLcom/kingroot/kinguser/bhe$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$14;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->f(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bil;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$14;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/axc;->b(Lcom/kingroot/kinguser/axc;Z)V

    .line 711
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$14;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->f(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bil;->dismiss()V

    .line 712
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$14;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/axc;->a(Lcom/kingroot/kinguser/axc;Lcom/kingroot/kinguser/bil;)Lcom/kingroot/kinguser/bil;

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 705
    :catch_0
    move-exception v0

    .line 708
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$14;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->f(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bil;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$14;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/axc;->b(Lcom/kingroot/kinguser/axc;Z)V

    .line 711
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$14;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->f(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bil;->dismiss()V

    .line 712
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$14;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/axc;->a(Lcom/kingroot/kinguser/axc;Lcom/kingroot/kinguser/bil;)Lcom/kingroot/kinguser/bil;

    goto :goto_0

    .line 708
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axc$14;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v1}, Lcom/kingroot/kinguser/axc;->f(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bil;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 709
    iget-object v1, p0, Lcom/kingroot/kinguser/axc$14;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v1, v3}, Lcom/kingroot/kinguser/axc;->b(Lcom/kingroot/kinguser/axc;Z)V

    .line 711
    iget-object v1, p0, Lcom/kingroot/kinguser/axc$14;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v1}, Lcom/kingroot/kinguser/axc;->f(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bil;->dismiss()V

    .line 712
    iget-object v1, p0, Lcom/kingroot/kinguser/axc$14;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v1, v4}, Lcom/kingroot/kinguser/axc;->a(Lcom/kingroot/kinguser/axc;Lcom/kingroot/kinguser/bil;)Lcom/kingroot/kinguser/bil;

    :cond_1
    throw v0
.end method
