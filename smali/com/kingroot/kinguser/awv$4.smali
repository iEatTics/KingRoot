.class Lcom/kingroot/kinguser/awv$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/agb$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/awv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aVI:Lcom/kingroot/kinguser/awv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awv;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/kingroot/kinguser/awv$4;->aVI:Lcom/kingroot/kinguser/awv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public J(II)V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 331
    iget-object v0, p0, Lcom/kingroot/kinguser/awv$4;->aVI:Lcom/kingroot/kinguser/awv;

    invoke-static {v0}, Lcom/kingroot/kinguser/awv;->a(Lcom/kingroot/kinguser/awv;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agb$d;

    .line 332
    iget-object v5, v0, Lcom/kingroot/kinguser/agb$d;->akg:Lcom/kingroot/kinguser/advance/model/AdvancePermModel;

    .line 333
    iget v6, v5, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->type:I

    packed-switch v6, :pswitch_data_0

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 336
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    move v0, v4

    .line 352
    :goto_1
    iget v1, v5, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->apt:I

    if-eq v0, v1, :cond_0

    .line 356
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v1

    iget-object v2, v5, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->packageName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/kingroot/kinguser/bbt;->updateRule(Ljava/lang/String;IJ)V

    .line 357
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18881

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0

    .line 339
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f07026d

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    iput-object v2, v0, Lcom/kingroot/kinguser/agb$d;->akc:Landroid/text/Spanned;

    move v0, v1

    .line 340
    goto :goto_1

    .line 343
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v3, 0x7f07026f

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/agb$d;->akc:Landroid/text/Spanned;

    move v0, v2

    .line 344
    goto :goto_1

    .line 347
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07026e

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/agb$d;->akc:Landroid/text/Spanned;

    move v0, v3

    goto :goto_1

    .line 362
    :pswitch_4
    packed-switch p2, :pswitch_data_2

    move v1, v4

    .line 378
    :goto_2
    iget v0, v5, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->apu:I

    if-eq v1, v0, :cond_0

    .line 381
    invoke-static {}, Lcom/kingroot/kinguser/agy;->wk()Lcom/kingroot/kinguser/agy;

    move-result-object v0

    iget-object v2, v5, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/kingroot/kinguser/agy;->p(Ljava/lang/String;I)V

    .line 382
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18883

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0

    .line 365
    :pswitch_5
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070320

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    iput-object v2, v0, Lcom/kingroot/kinguser/agb$d;->akc:Landroid/text/Spanned;

    goto :goto_2

    .line 369
    :pswitch_6
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v3, 0x7f070322

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/agb$d;->akc:Landroid/text/Spanned;

    move v1, v2

    .line 370
    goto :goto_2

    .line 373
    :pswitch_7
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070321

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/agb$d;->akc:Landroid/text/Spanned;

    move v1, v3

    goto :goto_2

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 336
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 362
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
