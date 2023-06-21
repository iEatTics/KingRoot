.class Lcom/kingroot/kinguser/apx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aqs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/apx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private aKh:J

.field final synthetic aKi:Lcom/kingroot/kinguser/apx;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/apx;)V
    .locals 2

    .prologue
    .line 120
    iput-object p1, p0, Lcom/kingroot/kinguser/apx$1;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/apx$1;->aKh:J

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/aqs;Lcom/kingroot/kinguser/aqy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/aqs;",
            "Lcom/kingroot/kinguser/aqy",
            "<+",
            "Lcom/kingroot/kinguser/arl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p2}, Lcom/kingroot/kinguser/aqy;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$1;->aKi:Lcom/kingroot/kinguser/apx;

    const/4 v1, 0x3

    invoke-static {v0, v1, p2, p1}, Lcom/kingroot/kinguser/apx;->a(Lcom/kingroot/kinguser/apx;ILcom/kingroot/kinguser/aqb;Lcom/kingroot/kinguser/aqb;)V

    .line 166
    :cond_0
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/aqy;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/aqy",
            "<+",
            "Lcom/kingroot/kinguser/arl;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$1;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0}, Lcom/kingroot/kinguser/apx;->a(Lcom/kingroot/kinguser/apx;)Lcom/kingroot/kinguser/apx$a;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0, p2}, Lcom/kingroot/kinguser/apx$a;->gk(I)V

    .line 141
    :cond_0
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/aqs;Lcom/kingroot/kinguser/aqy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/aqs;",
            "Lcom/kingroot/kinguser/aqy",
            "<+",
            "Lcom/kingroot/kinguser/arl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p2}, Lcom/kingroot/kinguser/aqy;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$1;->aKi:Lcom/kingroot/kinguser/apx;

    const/4 v1, 0x4

    invoke-static {v0, v1, p2, p1}, Lcom/kingroot/kinguser/apx;->a(Lcom/kingroot/kinguser/apx;ILcom/kingroot/kinguser/aqb;Lcom/kingroot/kinguser/aqb;)V

    .line 175
    :cond_0
    return-void
.end method

.method public c(Lcom/kingroot/kinguser/aqs;)V
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/apx$1;->aKh:J

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$1;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0}, Lcom/kingroot/kinguser/apx;->a(Lcom/kingroot/kinguser/apx;)Lcom/kingroot/kinguser/apx$a;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aqs;->MS()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/apx$a;->ih(Ljava/lang/String;)V

    .line 130
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/apx$a;->g(Lcom/kingroot/kinguser/aqs;)V

    .line 132
    :cond_0
    return-void
.end method

.method public d(Lcom/kingroot/kinguser/aqs;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/apx$1;->aKh:J

    sub-long/2addr v0, v2

    .line 146
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 148
    sub-long v0, v4, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$1;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0}, Lcom/kingroot/kinguser/apx;->a(Lcom/kingroot/kinguser/apx;)Lcom/kingroot/kinguser/apx$a;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_1

    .line 155
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/apx$a;->h(Lcom/kingroot/kinguser/aqs;)V

    .line 157
    :cond_1
    return-void

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0
.end method
