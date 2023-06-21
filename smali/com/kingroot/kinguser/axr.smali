.class public Lcom/kingroot/kinguser/axr;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/auk$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/axr$a;
    }
.end annotation


# instance fields
.field private bbl:Landroid/view/View;

.field private bbm:Lcom/kingroot/kinguser/agh;

.field private bbn:Lcom/kingroot/kinguser/auk$a;

.field private bbo:Z

.field private bbp:Lcom/kingroot/kinguser/bdg;

.field private bbq:Lcom/kingroot/kinguser/agh$k;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/axr;->bbo:Z

    .line 333
    new-instance v0, Lcom/kingroot/kinguser/axr$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axr$3;-><init>(Lcom/kingroot/kinguser/axr;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axr;->bbq:Lcom/kingroot/kinguser/agh$k;

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axr;Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kingroot/kinguser/axr;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axr;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kingroot/kinguser/axr;->bbl:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axr;Lcom/kingroot/kinguser/agh;)Lcom/kingroot/kinguser/agh;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kingroot/kinguser/axr;->bbm:Lcom/kingroot/kinguser/agh;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axr;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axr;->bbo:Z

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axr;)Lcom/kingroot/kinguser/auk$a;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/axr;->bbn:Lcom/kingroot/kinguser/auk$a;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/axr;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/axr;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/axr;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/axr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/axr;)Lcom/kingroot/kinguser/agh$k;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/axr;->bbq:Lcom/kingroot/kinguser/agh$k;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/axr;)Lcom/kingroot/kinguser/agh;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/axr;->bbm:Lcom/kingroot/kinguser/agh;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/axr;)Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/axr;->bbl:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public Qp()V
    .locals 2

    .prologue
    .line 254
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckMainActivity;->f(Landroid/content/Context;Z)V

    .line 255
    return-void
.end method

.method public Qq()V
    .locals 4

    .prologue
    .line 259
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    .line 260
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingroot/kinguser/activitys/SoftwareProtectListActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070316

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    const-string v3, "setting_title"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v2, "software.protect_list.page"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 267
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 268
    return-void
.end method

.method public Qr()V
    .locals 1

    .prologue
    .line 272
    invoke-static {}, Lcom/kingroot/kinguser/aft;->vt()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/AntiInjectLogActivity;->c(Landroid/app/Activity;)V

    .line 273
    return-void
.end method

.method public Qs()V
    .locals 6

    .prologue
    .line 359
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FE()Z

    move-result v1

    .line 361
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FC()Z

    move-result v2

    .line 362
    invoke-static {}, Lcom/kingroot/kinguser/bgt;->abX()Z

    move-result v3

    .line 365
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 366
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 367
    new-instance v2, Lcom/kingroot/kinguser/bii;

    iget-object v3, p0, Lcom/kingroot/kinguser/axr;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/bii;-><init>(Landroid/content/Context;)V

    .line 369
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/kingroot/kinguser/aks;->bE(J)V

    .line 370
    invoke-virtual {v2}, Lcom/kingroot/kinguser/bii;->show()V

    .line 371
    const v3, 0x7f070242

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/bii;->lN(Ljava/lang/String;)V

    .line 372
    const v3, 0x7f070241

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/bii;->lM(Ljava/lang/String;)V

    .line 373
    const v3, 0x7f02014a

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bii;->h(Landroid/graphics/drawable/Drawable;)V

    .line 374
    const v1, 0x7f0201f9

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bii;->jd(I)V

    .line 375
    new-instance v1, Lcom/kingroot/kinguser/axr$4;

    invoke-direct {v1, p0, v2, v0}, Lcom/kingroot/kinguser/axr$4;-><init>(Lcom/kingroot/kinguser/axr;Lcom/kingroot/kinguser/bii;Lcom/kingroot/kinguser/aks;)V

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bii;->n(Landroid/view/View$OnClickListener;)V

    .line 387
    :cond_0
    return-void
.end method

.method public a(ILcom/kingroot/kinguser/bcy;)V
    .locals 3

    .prologue
    .line 295
    new-instance v0, Lcom/kingroot/kinguser/bic;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axr;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bic;-><init>(Landroid/content/Context;)V

    .line 296
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bic;->show()V

    .line 297
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->ee(Z)V

    .line 299
    instance-of v1, p2, Lcom/kingroot/kinguser/bdg;

    if-eqz v1, :cond_1

    .line 300
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0702f9

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->setTitleText(Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0702f8

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->d(Ljava/lang/CharSequence;)V

    .line 306
    :cond_0
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0702f7

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->lJ(Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c4

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->lK(Ljava/lang/String;)V

    .line 308
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->C(F)V

    .line 309
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c9

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->lL(Ljava/lang/String;)V

    .line 311
    new-instance v1, Lcom/kingroot/kinguser/axr$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingroot/kinguser/axr$11;-><init>(Lcom/kingroot/kinguser/axr;ILcom/kingroot/kinguser/bcy;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->b(Lcom/kingroot/kinguser/bic$a;)V

    .line 318
    new-instance v1, Lcom/kingroot/kinguser/axr$2;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/axr$2;-><init>(Lcom/kingroot/kinguser/axr;Lcom/kingroot/kinguser/bic;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->a(Lcom/kingroot/kinguser/bic$a;)V

    .line 326
    return-void

    .line 302
    :cond_1
    instance-of v1, p2, Lcom/kingroot/kinguser/bda;

    if-eqz v1, :cond_0

    .line 303
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700fc

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->setTitleText(Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0704bc

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->d(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(ILcom/kingroot/kinguser/bdb;)V
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axr$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingroot/kinguser/axr$10;-><init>(Lcom/kingroot/kinguser/axr;ILcom/kingroot/kinguser/bdb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    return-void
.end method

.method public a(ILcom/kingroot/kinguser/bdg;)V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axr$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingroot/kinguser/axr$7;-><init>(Lcom/kingroot/kinguser/axr;ILcom/kingroot/kinguser/bdg;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/auk$a;)V
    .locals 1

    .prologue
    .line 330
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/auk$a;

    iput-object v0, p0, Lcom/kingroot/kinguser/axr;->bbn:Lcom/kingroot/kinguser/auk$a;

    .line 331
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/bdd;)V
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axr$6;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/axr$6;-><init>(Lcom/kingroot/kinguser/axr;Lcom/kingroot/kinguser/bdd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method

.method public bm(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axr$5;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/axr$5;-><init>(Lcom/kingroot/kinguser/axr;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void
.end method

.method public cV(Z)V
    .locals 3

    .prologue
    .line 282
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    .line 283
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingroot/kinguser/xmod/ui/CveInfoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 285
    const-string v2, "auto_fix"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 287
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 290
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188df

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 291
    return-void
.end method

.method public cW(Z)V
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axr$9;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/axr$9;-><init>(Lcom/kingroot/kinguser/axr;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    return-void
.end method

.method public d(Lcom/kingroot/kinguser/bdg;)V
    .locals 3

    .prologue
    .line 243
    iput-object p1, p0, Lcom/kingroot/kinguser/axr;->bbp:Lcom/kingroot/kinguser/bdg;

    .line 244
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdg;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axr;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x2711

    invoke-static {v1, v0, v2}, Lcom/kingroot/kinguser/aff;->a(Ljava/lang/String;Landroid/app/Activity;I)V

    .line 245
    return-void
.end method

.method public f(Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;)V
    .locals 2

    .prologue
    .line 277
    invoke-static {}, Lcom/kingroot/kinguser/aft;->vt()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "RootSafe"

    invoke-static {v0, p1, v1}, Lcom/kingroot/kinguser/activitys/ExaminationRecommendAppActivity;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public notifyItemRemoved(I)V
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axr$8;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/axr$8;-><init>(Lcom/kingroot/kinguser/axr;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 3

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axr;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 117
    const v1, 0x7f030104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/kingroot/kinguser/axr;->bbn:Lcom/kingroot/kinguser/auk$a;

    invoke-interface {v1}, Lcom/kingroot/kinguser/auk$a;->start()V

    .line 119
    return-object v0
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 88
    new-instance v1, Lcom/kingroot/kinguser/bex;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axr;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 89
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0702de

    :goto_0
    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/bex;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/kingroot/kinguser/axr$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axr$1;-><init>(Lcom/kingroot/kinguser/axr;)V

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bex;->a(Lcom/kingroot/kinguser/bex$a;)V

    .line 101
    return-object v1

    .line 89
    :cond_0
    const v0, 0x7f070357

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/kingroot/kinguser/axr;->bbn:Lcom/kingroot/kinguser/auk$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/axr;->bbp:Lcom/kingroot/kinguser/bdg;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auk$a;->c(Lcom/kingroot/kinguser/bdg;)V

    .line 250
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axr;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/axr;->bbo:Z

    .line 83
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18868

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 84
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onResume()V

    .line 107
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axr;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bex;

    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bfw;->abe()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bfw;->aaV()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 108
    :cond_0
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bex;->aq(Z)V

    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/axr;->bbn:Lcom/kingroot/kinguser/auk$a;

    iget-boolean v1, p0, Lcom/kingroot/kinguser/axr;->bbo:Z

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auk$a;->cU(Z)V

    .line 112
    return-void
.end method
