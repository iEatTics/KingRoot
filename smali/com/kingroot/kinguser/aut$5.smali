.class Lcom/kingroot/kinguser/aut$5;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aut;->gS(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aSO:Lcom/kingroot/kinguser/aut;

.field final synthetic aSU:Lcom/kingroot/kinguser/bcy;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aut;Lcom/kingroot/kinguser/bcy;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/kingroot/kinguser/aut$5;->aSO:Lcom/kingroot/kinguser/aut;

    iput-object p2, p0, Lcom/kingroot/kinguser/aut$5;->aSU:Lcom/kingroot/kinguser/bcy;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v1, 0x1886c

    .line 347
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 348
    iget-object v0, p0, Lcom/kingroot/kinguser/aut$5;->aSU:Lcom/kingroot/kinguser/bcy;

    instance-of v0, v0, Lcom/kingroot/kinguser/bdg;

    if-eqz v0, :cond_2

    .line 349
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 351
    iget-object v0, p0, Lcom/kingroot/kinguser/aut$5;->aSU:Lcom/kingroot/kinguser/bcy;

    check-cast v0, Lcom/kingroot/kinguser/bdg;

    .line 352
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdg;->YB()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    invoke-static {}, Lcom/kingroot/kinguser/bcs;->Yc()Lcom/kingroot/kinguser/bcs;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdg;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bcs;->kD(Ljava/lang/String;)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bcr;->XT()Lcom/kingroot/kinguser/bcr;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdg;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bcr;->kD(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/aut$5;->aSU:Lcom/kingroot/kinguser/bcy;

    instance-of v0, v0, Lcom/kingroot/kinguser/bdi;

    if-eqz v0, :cond_3

    .line 358
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18874

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 360
    iget-object v0, p0, Lcom/kingroot/kinguser/aut$5;->aSU:Lcom/kingroot/kinguser/bcy;

    check-cast v0, Lcom/kingroot/kinguser/bdi;

    .line 361
    invoke-static {}, Lcom/kingroot/kinguser/apc;->KS()Lcom/kingroot/kinguser/apc;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdi;->YC()Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/apc;->hH(Ljava/lang/String;)V

    .line 362
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->bA(J)V

    goto :goto_0

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/aut$5;->aSU:Lcom/kingroot/kinguser/bcy;

    instance-of v0, v0, Lcom/kingroot/kinguser/bdc;

    if-eqz v0, :cond_4

    .line 364
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18871

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 366
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->bK(J)V

    .line 367
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Gh()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->eR(I)V

    goto :goto_0

    .line 368
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/aut$5;->aSU:Lcom/kingroot/kinguser/bcy;

    instance-of v0, v0, Lcom/kingroot/kinguser/bda;

    if-eqz v0, :cond_0

    .line 370
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 371
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->cp(Z)V

    goto :goto_0
.end method
