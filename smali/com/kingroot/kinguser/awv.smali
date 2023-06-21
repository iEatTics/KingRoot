.class public Lcom/kingroot/kinguser/awv;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"


# instance fields
.field private aDg:Lcom/kingroot/kinguser/zi;

.field private aRB:Lcom/kingroot/kinguser/bed;

.field private aVA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/agb$e;",
            ">;"
        }
    .end annotation
.end field

.field private aVB:Landroid/widget/ImageView;

.field private aVC:Landroid/widget/TextView;

.field private aVD:Landroid/widget/TextView;

.field private aVE:Landroid/widget/TextView;

.field private aVF:Landroid/widget/TextView;

.field aVG:Lcom/kingroot/kinguser/agb$g;

.field aVH:Lcom/kingroot/kinguser/agb$f;

.field private aVy:Lcom/kingroot/kinguser/agb;

.field private aVz:Landroid/support/v7/widget/RecyclerView;

.field private adZ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/awv;->aDg:Lcom/kingroot/kinguser/zi;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/awv;->aVA:Ljava/util/List;

    .line 132
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/awv$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/awv$1;-><init>(Lcom/kingroot/kinguser/awv;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/awv;->aRB:Lcom/kingroot/kinguser/bed;

    .line 327
    new-instance v0, Lcom/kingroot/kinguser/awv$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/awv$4;-><init>(Lcom/kingroot/kinguser/awv;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/awv;->aVG:Lcom/kingroot/kinguser/agb$g;

    .line 391
    new-instance v0, Lcom/kingroot/kinguser/awv$5;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/awv$5;-><init>(Lcom/kingroot/kinguser/awv;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/awv;->aVH:Lcom/kingroot/kinguser/agb$f;

    .line 77
    return-void
.end method

.method private Tz()V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/awv;->aVA:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/awv;->aVy:Lcom/kingroot/kinguser/agb;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/kingroot/kinguser/agb;

    iget-object v1, p0, Lcom/kingroot/kinguser/awv;->aVA:Ljava/util/List;

    iget-object v2, p0, Lcom/kingroot/kinguser/awv;->aVG:Lcom/kingroot/kinguser/agb$g;

    iget-object v3, p0, Lcom/kingroot/kinguser/awv;->aVH:Lcom/kingroot/kinguser/agb$f;

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/agb;-><init>(Ljava/util/List;Lcom/kingroot/kinguser/agb$g;Lcom/kingroot/kinguser/agb$f;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/awv;->aVy:Lcom/kingroot/kinguser/agb;

    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/awv;->aVz:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/kingroot/kinguser/awv;->aVy:Lcom/kingroot/kinguser/agb;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/awv;->aVz:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/awv;->aVz:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    iget-object v2, p0, Lcom/kingroot/kinguser/awv;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/awv;->aVy:Lcom/kingroot/kinguser/agb;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agb;->notifyDataSetChanged()V

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/awv;->aVz:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 129
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/awv;)Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/awv;->aVA:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/awv;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/awv;->bH(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/awv;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/kingroot/kinguser/awv;->Tz()V

    return-void
.end method

.method private bH(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/AdvancePermModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 236
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/awv;->finish()V

    .line 325
    :cond_1
    return-void

    .line 241
    :cond_2
    new-instance v0, Lcom/kingroot/kinguser/awv$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/awv$3;-><init>(Lcom/kingroot/kinguser/awv;)V

    .line 248
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 254
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v0, v6

    :cond_3
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;

    .line 255
    iget v1, v5, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->type:I

    packed-switch v1, :pswitch_data_0

    .line 320
    :goto_1
    if-eqz v0, :cond_3

    .line 321
    iget-object v1, p0, Lcom/kingroot/kinguser/awv;->aVA:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07026d

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 260
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07026f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    .line 261
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07026e

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    .line 262
    iget v0, v5, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->apt:I

    packed-switch v0, :pswitch_data_1

    move-object v2, v6

    .line 274
    :goto_2
    iget-object v0, p0, Lcom/kingroot/kinguser/awv;->aDg:Lcom/kingroot/kinguser/zi;

    const v1, 0x7f020062

    .line 275
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/awv;->aDg:Lcom/kingroot/kinguser/zi;

    const v10, 0x7f070023

    .line 276
    invoke-virtual {v1, v10}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-static {v4, v7, v8}, Lcom/kingroot/kinguser/agb$h;->a(Landroid/text/Spanned;Landroid/text/Spanned;Landroid/text/Spanned;)Lcom/kingroot/kinguser/agb$h;

    move-result-object v4

    .line 274
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/agb$d;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/text/Spanned;ZLcom/kingroot/kinguser/agb$h;Lcom/kingroot/kinguser/advance/model/AdvancePermModel;)Lcom/kingroot/kinguser/agb$d;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    move-object v2, v4

    .line 265
    goto :goto_2

    :pswitch_2
    move-object v2, v7

    .line 268
    goto :goto_2

    :pswitch_3
    move-object v2, v8

    .line 270
    goto :goto_2

    .line 284
    :pswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070320

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 285
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070322

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    .line 286
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070321

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    .line 287
    iget v0, v5, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->apu:I

    packed-switch v0, :pswitch_data_2

    move-object v2, v6

    .line 301
    :goto_3
    iget-object v0, p0, Lcom/kingroot/kinguser/awv;->aDg:Lcom/kingroot/kinguser/zi;

    const v1, 0x7f020063

    .line 302
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/awv;->aDg:Lcom/kingroot/kinguser/zi;

    const v10, 0x7f070024

    .line 303
    invoke-virtual {v1, v10}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-static {v4, v7, v8}, Lcom/kingroot/kinguser/agb$h;->a(Landroid/text/Spanned;Landroid/text/Spanned;Landroid/text/Spanned;)Lcom/kingroot/kinguser/agb$h;

    move-result-object v4

    .line 301
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/agb$d;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/text/Spanned;ZLcom/kingroot/kinguser/agb$h;Lcom/kingroot/kinguser/advance/model/AdvancePermModel;)Lcom/kingroot/kinguser/agb$d;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_5
    move-object v2, v4

    .line 290
    goto :goto_3

    :pswitch_6
    move-object v2, v7

    .line 294
    goto :goto_3

    :pswitch_7
    move-object v2, v8

    .line 297
    goto :goto_3

    .line 310
    :pswitch_8
    iget-object v0, p0, Lcom/kingroot/kinguser/awv;->aDg:Lcom/kingroot/kinguser/zi;

    const v1, 0x7f02005f

    .line 311
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v0, p0, Lcom/kingroot/kinguser/awv;->aDg:Lcom/kingroot/kinguser/zi;

    const v2, 0x7f070035

    .line 312
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v0, v5, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->apv:I

    if-eqz v0, :cond_4

    iget v0, v5, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->apv:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_5

    :cond_4
    const/4 v0, 0x1

    .line 310
    :goto_4
    invoke-static {v1, v2, v0, v5}, Lcom/kingroot/kinguser/agb$b;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZLcom/kingroot/kinguser/advance/model/AdvancePermModel;)Lcom/kingroot/kinguser/agb$b;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    move v0, v3

    .line 312
    goto :goto_4

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_8
    .end packed-switch

    .line 262
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 287
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private finish()V
    .locals 1

    .prologue
    .line 227
    new-instance v0, Lcom/kingroot/kinguser/awv$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/awv$2;-><init>(Lcom/kingroot/kinguser/awv;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method private jU(Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 169
    :try_start_0
    const-string v2, "com.android.shell"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 170
    iget-object v1, p0, Lcom/kingroot/kinguser/awv;->aDg:Lcom/kingroot/kinguser/zi;

    const v2, 0x7f070345

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 171
    iget-object v1, p0, Lcom/kingroot/kinguser/awv;->aDg:Lcom/kingroot/kinguser/zi;

    const v2, 0x7f0202bd

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 172
    iget-object v1, p0, Lcom/kingroot/kinguser/awv;->aDg:Lcom/kingroot/kinguser/zi;

    const v2, 0x7f070027

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "1.0"

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 173
    iget-object v1, p0, Lcom/kingroot/kinguser/awv;->aDg:Lcom/kingroot/kinguser/zi;

    const v5, 0x7f070026

    invoke-virtual {v1, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "yyyy-MM-dd"

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/kingroot/kinguser/acu;->g(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 173
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 210
    :goto_1
    iget-object v5, p0, Lcom/kingroot/kinguser/awv;->aVB:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v3, p0, Lcom/kingroot/kinguser/awv;->aVD:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v3, p0, Lcom/kingroot/kinguser/awv;->aVF:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 214
    iget-object v2, p0, Lcom/kingroot/kinguser/awv;->aVC:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/kingroot/kinguser/awv;->aVE:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    goto :goto_0

    .line 176
    :cond_3
    const-string v2, "com.android.kinguser.console"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 178
    iget-object v1, p0, Lcom/kingroot/kinguser/awv;->aDg:Lcom/kingroot/kinguser/zi;

    const v2, 0x7f070274

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 179
    iget-object v1, p0, Lcom/kingroot/kinguser/awv;->aDg:Lcom/kingroot/kinguser/zi;

    const v2, 0x7f02016a

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 180
    iget-object v1, p0, Lcom/kingroot/kinguser/awv;->aDg:Lcom/kingroot/kinguser/zi;

    const v2, 0x7f070027

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "1.0"

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 181
    iget-object v1, p0, Lcom/kingroot/kinguser/awv;->aDg:Lcom/kingroot/kinguser/zi;

    const v5, 0x7f070026

    invoke-virtual {v1, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "yyyy-MM-dd"

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/kingroot/kinguser/acu;->g(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 181
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 185
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/kingroot/kinguser/zh;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 186
    if-eqz v5, :cond_0

    .line 190
    iget-object v2, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 191
    if-eqz v2, :cond_0

    .line 195
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 196
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 197
    iget-object v1, p0, Lcom/kingroot/kinguser/awv;->aDg:Lcom/kingroot/kinguser/zi;

    const v2, 0x7f070027

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v7, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 199
    new-instance v6, Ljava/io/File;

    iget-object v1, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 203
    iget-object v0, p0, Lcom/kingroot/kinguser/awv;->aDg:Lcom/kingroot/kinguser/zi;

    const v1, 0x7f070026

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "yyyy-MM-dd"

    .line 204
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/kingroot/kinguser/acu;->g(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v5

    .line 203
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/awv;->aDg:Lcom/kingroot/kinguser/zi;

    const v5, 0x7f070025

    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 206
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awv;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 205
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    move-object v1, v0

    goto/16 :goto_1
.end method


# virtual methods
.method protected oG()Landroid/view/View;
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awv;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 106
    const v1, 0x7f0300f4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 107
    const v0, 0x7f0f0281

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/awv;->aVz:Landroid/support/v7/widget/RecyclerView;

    .line 108
    const v0, 0x7f0f0152

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/awv;->aVB:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f0f00d0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/awv;->aVD:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0f0138

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/awv;->aVF:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0f0280

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/awv;->aVC:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0f013a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/awv;->aVE:Landroid/widget/TextView;

    .line 114
    return-object v1
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Lcom/kingroot/kinguser/ada;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/awv;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 87
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f07001c

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 82
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 93
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onResume()V

    .line 94
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awv;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 95
    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    const-string v1, "pkgName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/awv;->adZ:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/kingroot/kinguser/awv;->adZ:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/awv;->jU(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/awv;->aRB:Lcom/kingroot/kinguser/bed;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingroot/kinguser/awv;->adZ:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    goto :goto_0
.end method
