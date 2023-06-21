.class final Lcom/kingroot/kinguser/aon$3;
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
    .line 118
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 121
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 122
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v6

    .line 124
    invoke-virtual {v6}, Lcom/kingroot/kinguser/aks;->Dg()Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->R(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v6}, Lcom/kingroot/kinguser/aks;->ED()J

    move-result-wide v0

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba00

    .line 137
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    .line 141
    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/kingroot/kinguser/aop;->Kq()Lcom/kingroot/kinguser/aop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aop;->Kc()V

    .line 148
    invoke-static {}, Lcom/kingroot/kinguser/apc;->KS()Lcom/kingroot/kinguser/apc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apc;->Kc()V

    .line 149
    invoke-static {}, Lcom/kingroot/kinguser/aps;->LI()Lcom/kingroot/kinguser/aor;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aor;->Kc()V

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/kingroot/kinguser/aks;->bs(J)V

    goto :goto_0
.end method
