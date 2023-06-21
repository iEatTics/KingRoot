.class Lcom/kingroot/kinguser/aiy$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aiy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic asR:Lcom/kingroot/kinguser/aiy;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aiy;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/kingroot/kinguser/aiy$1;->asR:Lcom/kingroot/kinguser/aiy;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 96
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 98
    iget-object v0, p0, Lcom/kingroot/kinguser/aiy$1;->asR:Lcom/kingroot/kinguser/aiy;

    invoke-static {v0}, Lcom/kingroot/kinguser/aiy;->a(Lcom/kingroot/kinguser/aiy;)V

    .line 102
    invoke-static {v2}, Lcom/kingroot/kinguser/aix;->aQ(Z)I

    move-result v0

    .line 104
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    invoke-static {v0, v2}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-static {}, Lcom/kingroot/kinguser/aix;->yG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    :cond_0
    invoke-static {v2}, Lcom/kingroot/kinguser/aix;->aQ(Z)I

    move-result v0

    .line 112
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    :goto_0
    return-void

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/aiy$1;->asR:Lcom/kingroot/kinguser/aiy;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/aiy;->a(Lcom/kingroot/kinguser/aiy;I)V

    .line 119
    invoke-static {v0, v2}, Lcom/kingroot/kinguser/aix;->q(IZ)I

    .line 120
    iget-object v1, p0, Lcom/kingroot/kinguser/aiy$1;->asR:Lcom/kingroot/kinguser/aiy;

    const/16 v2, 0x27d9

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Lcom/kingroot/kinguser/aiy;->a(Lcom/kingroot/kinguser/aiy;IIILjava/lang/Object;)V

    .line 121
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/bbv;->dC(Z)V

    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/aiy$1;->asR:Lcom/kingroot/kinguser/aiy;

    invoke-static {v0}, Lcom/kingroot/kinguser/aiy;->a(Lcom/kingroot/kinguser/aiy;)V

    goto :goto_0
.end method
