.class Lcom/kingroot/kinguser/alb$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bhn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/alb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic avQ:Lcom/kingroot/kinguser/alb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alb;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/kingroot/kinguser/alb$2;->avQ:Lcom/kingroot/kinguser/alb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/util/protect/RebootStat;I)V
    .locals 6

    .prologue
    const/4 v0, 0x6

    const/4 v5, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x3

    .line 304
    if-ne p2, v2, :cond_2

    .line 307
    iget v3, p1, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    if-eq v3, v5, :cond_0

    iget v3, p1, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    :cond_0
    move v0, v2

    .line 317
    :cond_1
    :goto_0
    if-eq v0, v1, :cond_2

    .line 319
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/kingroot/kinguser/aks;->bo(Z)V

    .line 320
    invoke-static {p1, v0}, Lcom/kingroot/kinguser/alb;->d(Lcom/kingroot/kinguser/util/protect/RebootStat;I)V

    .line 323
    :cond_2
    return-void

    .line 311
    :cond_3
    iget v3, p1, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    if-lt v3, v2, :cond_4

    iget v2, p1, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    if-lt v2, v0, :cond_1

    :cond_4
    iget v2, p1, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public b(Lcom/kingroot/kinguser/util/protect/RebootStat;)V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/kingroot/kinguser/alb$2;->avQ:Lcom/kingroot/kinguser/alb;

    invoke-static {v0}, Lcom/kingroot/kinguser/alb;->a(Lcom/kingroot/kinguser/alb;)Lcom/kingroot/kinguser/agq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/alb;->d(Lcom/kingroot/kinguser/util/protect/RebootStat;I)V

    .line 334
    :cond_0
    return-void
.end method

.method public c(Lcom/kingroot/kinguser/util/protect/RebootStat;)V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/alb;->d(Lcom/kingroot/kinguser/util/protect/RebootStat;I)V

    .line 299
    return-void
.end method

.method public d(Lcom/kingroot/kinguser/util/protect/RebootStat;)V
    .locals 1

    .prologue
    .line 338
    iget v0, p1, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    packed-switch v0, :pswitch_data_0

    .line 356
    :goto_0
    :pswitch_0
    return-void

    .line 341
    :pswitch_1
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/alb;->d(Lcom/kingroot/kinguser/util/protect/RebootStat;I)V

    goto :goto_0

    .line 346
    :pswitch_2
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/alb;->d(Lcom/kingroot/kinguser/util/protect/RebootStat;I)V

    goto :goto_0

    .line 351
    :pswitch_3
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/alb;->d(Lcom/kingroot/kinguser/util/protect/RebootStat;I)V

    goto :goto_0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
