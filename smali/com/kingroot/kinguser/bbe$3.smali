.class Lcom/kingroot/kinguser/bbe$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic beM:Lcom/kingroot/kinguser/bbe;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bbe;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/kingroot/kinguser/bbe$3;->beM:Lcom/kingroot/kinguser/bbe;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 211
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v6

    .line 213
    invoke-static {}, Lcom/kingroot/kinguser/bdx;->jS()V

    .line 216
    invoke-static {}, Lcom/kingroot/kinguser/aih;->xI()Lcom/kingroot/kinguser/aih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aih;->xJ()V

    .line 219
    invoke-static {}, Lcom/kingroot/kinguser/ava;->Rg()V

    .line 222
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OB()V

    .line 225
    invoke-static {}, Lcom/kingroot/kinguser/avv;->Sj()Lcom/kingroot/kinguser/avv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/avv;->uv()V

    .line 231
    invoke-static {}, Lcom/kingroot/kinguser/aeb;->tV()Lcom/kingroot/kinguser/aeb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aeb;->tW()V

    .line 235
    invoke-static {}, Lcom/kingroot/kinguser/bbe;->Wj()V

    .line 238
    invoke-static {v1}, Lcom/kingroot/kinguser/ajz;->dU(I)V

    .line 241
    invoke-static {}, Lcom/kingroot/kinguser/ail;->xT()Lcom/kingroot/kinguser/ail;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/kingroot/kinguser/ail;->p(IZ)V

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 246
    invoke-virtual {v6}, Lcom/kingroot/kinguser/aks;->Cb()J

    move-result-wide v0

    .line 247
    const-wide/32 v4, 0xdbba00

    .line 249
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v6, v2, v3}, Lcom/kingroot/kinguser/aks;->aK(J)V

    .line 253
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bbe$3;->beM:Lcom/kingroot/kinguser/bbe;

    invoke-static {v1}, Lcom/kingroot/kinguser/bbe;->b(Lcom/kingroot/kinguser/bbe;)Lcom/kingroot/kinguser/bed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 256
    invoke-static {}, Lcom/kingroot/kinguser/bbo;->Wv()Lcom/kingroot/kinguser/bbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbo;->clearTimeOutLogs()V

    .line 259
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aeg;->uj()V

    .line 262
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adm;->sI()V

    .line 266
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ajy;->zJ()V

    .line 269
    invoke-static {}, Lcom/kingroot/kinguser/ajv;->zD()Lcom/kingroot/kinguser/ajv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ajv;->zG()V

    .line 274
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adm;->sJ()V

    .line 277
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adm;->sM()V

    .line 280
    invoke-static {}, Lcom/kingroot/kinguser/aii;->xL()Lcom/kingroot/kinguser/aii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aii;->xO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahl;->xo()Z

    move-result v0

    .line 283
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/akr;->BL()Lcom/kingroot/kinguser/akr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akr;->BM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adm;->sz()V

    .line 289
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/awg;->SL()V

    .line 292
    invoke-static {}, Lcom/kingroot/kinguser/bfn;->aaq()V

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bbe$3;->beM:Lcom/kingroot/kinguser/bbe;

    invoke-static {v0}, Lcom/kingroot/kinguser/bbe;->c(Lcom/kingroot/kinguser/bbe;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/activitys/AppsMarketWellChosenAppsActivity;->vs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    invoke-static {}, Lcom/kingroot/kinguser/alx;->HB()Lcom/kingroot/kinguser/alx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alx;->HD()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 304
    invoke-static {}, Lcom/kingroot/kinguser/alx;->HB()Lcom/kingroot/kinguser/alx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/alx;->fl(I)V

    .line 305
    invoke-static {}, Lcom/kingroot/kinguser/alx;->HB()Lcom/kingroot/kinguser/alx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/alx;->fm(I)V

    .line 307
    :cond_2
    return-void

    .line 297
    :catch_0
    move-exception v0

    goto :goto_0
.end method
