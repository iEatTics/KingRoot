.class public abstract Lcom/kingroot/kinguser/ty;
.super Lcom/kingroot/kinguser/tx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/tx",
        "<",
        "Landroid/os/Bundle;",
        "Landroid/os/Bundle;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private Ia:Ljava/lang/String;

.field private Ib:Lcom/kingroot/kinguser/ua;

.field private Ic:Z

.field private mContext:Landroid/content/Context;

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/kingroot/kinguser/tx;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Ljava/lang/String;Lcom/kingroot/kinguser/ua;)V
    .locals 0

    .prologue
    .line 44
    iput-object p2, p0, Lcom/kingroot/kinguser/ty;->Ia:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/kingroot/kinguser/ty;->Ib:Lcom/kingroot/kinguser/ua;

    .line 46
    iput-object p1, p0, Lcom/kingroot/kinguser/ty;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/ty;->Ib:Lcom/kingroot/kinguser/ua;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/ty;->Ib:Lcom/kingroot/kinguser/ua;

    invoke-virtual {v0, p0, p1}, Lcom/kingroot/kinguser/ua;->a(Lcom/kingroot/kinguser/ty;Landroid/os/Bundle;)V

    .line 126
    :cond_0
    return-void
.end method

.method public e(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/ty;->mStartTime:J

    .line 100
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ty;->kr()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/ty;->mStartTime:J

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v0, v2, v3, v1}, Lcom/kingroot/kinguser/tw;->a(Ljava/lang/String;JI)V

    .line 101
    const-string v0, "task_key_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 102
    invoke-super {p0, v0}, Lcom/kingroot/kinguser/tx;->g(Ljava/lang/Object;)Lcom/kingroot/kinguser/tx;

    .line 104
    :cond_0
    return-void
.end method

.method protected synthetic f(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/ty;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/ty;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/kingroot/kinguser/ty;->mStartTime:J

    return-wide v0
.end method

.method protected kl()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/ty;->Ib:Lcom/kingroot/kinguser/ua;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/kingroot/kinguser/ty;->Ib:Lcom/kingroot/kinguser/ua;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/ua;->a(Lcom/kingroot/kinguser/ty;)V

    .line 115
    :cond_0
    return-void
.end method

.method protected km()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/ty;->Ib:Lcom/kingroot/kinguser/ua;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/ty;->Ib:Lcom/kingroot/kinguser/ua;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/ua;->b(Lcom/kingroot/kinguser/ty;)V

    .line 148
    :cond_0
    return-void
.end method

.method protected kn()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/ty;->Ib:Lcom/kingroot/kinguser/ua;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/kingroot/kinguser/ty;->Ib:Lcom/kingroot/kinguser/ua;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/ua;->c(Lcom/kingroot/kinguser/ty;)V

    .line 159
    :cond_0
    return-void
.end method

.method protected ko()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ty;->Ic:Z

    return v0
.end method

.method public kp()J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 65
    iget-wide v0, p0, Lcom/kingroot/kinguser/ty;->mStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-wide v2

    .line 68
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/kingroot/kinguser/ty;->mStartTime:J

    sub-long/2addr v0, v4

    .line 69
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    :goto_1
    move-wide v2, v0

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method public kq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/ty;->Ia:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract kr()Ljava/lang/String;
.end method
