.class final Lcom/kingroot/kinguser/aon$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/32 v4, 0x2932e00

    .line 55
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 57
    invoke-static {}, Lcom/kingroot/kinguser/aop;->Kq()Lcom/kingroot/kinguser/aop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aop;->JY()Ljava/util/List;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    invoke-static {}, Lcom/kingroot/kinguser/aop;->Kq()Lcom/kingroot/kinguser/aop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aop;->JX()Ljava/util/List;

    .line 74
    :cond_0
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/apc;->KS()Lcom/kingroot/kinguser/apc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apc;->JY()Ljava/util/List;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/apc;->KS()Lcom/kingroot/kinguser/apc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apc;->JX()Ljava/util/List;

    .line 91
    :cond_1
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/aps;->LI()Lcom/kingroot/kinguser/aor;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aor;->JY()Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 93
    invoke-static {}, Lcom/kingroot/kinguser/aps;->LI()Lcom/kingroot/kinguser/aor;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aor;->JX()Ljava/util/List;

    .line 106
    :cond_2
    :goto_2
    return-void

    .line 62
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->EA()J

    move-result-wide v0

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 63
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->bp(J)V

    .line 69
    invoke-static {}, Lcom/kingroot/kinguser/aop;->Kq()Lcom/kingroot/kinguser/aop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aop;->JX()Ljava/util/List;

    goto :goto_0

    .line 79
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->EB()J

    move-result-wide v0

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 80
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    .line 84
    if-eqz v0, :cond_1

    .line 85
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->bq(J)V

    .line 86
    invoke-static {}, Lcom/kingroot/kinguser/apc;->KS()Lcom/kingroot/kinguser/apc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apc;->JX()Ljava/util/List;

    goto :goto_1

    .line 96
    :cond_5
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->EC()J

    move-result-wide v0

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 97
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    .line 101
    if-eqz v0, :cond_2

    .line 102
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->br(J)V

    .line 103
    invoke-static {}, Lcom/kingroot/kinguser/aps;->LI()Lcom/kingroot/kinguser/aor;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aor;->JX()Ljava/util/List;

    goto :goto_2
.end method
