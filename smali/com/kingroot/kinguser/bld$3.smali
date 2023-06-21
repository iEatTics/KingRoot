.class public Lcom/kingroot/kinguser/bld$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bzG:Lcom/kingroot/kinguser/bld;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bld;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/kingroot/kinguser/bld$3;->bzG:Lcom/kingroot/kinguser/bld;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 285
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 290
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->DE()I

    move-result v2

    .line 293
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ahl;->getRebootStat()Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v3

    .line 294
    if-eqz v3, :cond_3

    .line 295
    iget v1, v3, Lcom/kingroot/kinguser/util/protect/RebootStat;->failPeekCount:I

    .line 296
    iget v0, v3, Lcom/kingroot/kinguser/util/protect/RebootStat;->androidRebootPeekCount:I

    .line 301
    :goto_0
    if-eqz v2, :cond_2

    if-ge v0, v4, :cond_2

    if-ge v1, v5, :cond_2

    .line 303
    if-eq v2, v4, :cond_0

    if-ne v2, v5, :cond_1

    .line 304
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bfn;->aap()V

    .line 307
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/kingroot/master/app/ServiceApplication$3$1;

    invoke-direct {v2, p0}, Lcom/kingroot/master/app/ServiceApplication$3$1;-><init>(Lcom/kingroot/kinguser/bld$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ahl;->a(ZLcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;)V

    .line 343
    :cond_2
    return-void

    :cond_3
    move v1, v0

    goto :goto_0
.end method
