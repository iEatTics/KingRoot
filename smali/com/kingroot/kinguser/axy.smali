.class public Lcom/kingroot/kinguser/axy;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"


# instance fields
.field private NE:Landroid/widget/ImageView;

.field private aXY:Z

.field private aXZ:I

.field private aYc:Ljava/lang/Runnable;

.field private bcq:Z

.field private bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

.field private bcs:Z

.field private bct:Landroid/view/View;

.field private bcu:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 56
    iput-boolean v1, p0, Lcom/kingroot/kinguser/axy;->aXY:Z

    .line 57
    const/16 v0, 0x80

    iput v0, p0, Lcom/kingroot/kinguser/axy;->aXZ:I

    .line 62
    iput-boolean v1, p0, Lcom/kingroot/kinguser/axy;->bcq:Z

    .line 64
    iput-boolean v1, p0, Lcom/kingroot/kinguser/axy;->bcs:Z

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/axy;->bcu:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private UH()Landroid/view/View;
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v0, 0x0

    .line 149
    iget-object v1, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    if-nez v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    iget-object v2, v2, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/apv;->ia(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-static {}, Lcom/kingroot/kinguser/afz;->vG()Lcom/kingroot/kinguser/afz;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    iget-object v2, v2, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/afz;->fl(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/aks;->bI(J)V

    .line 160
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axy;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03010a

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 162
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    iget-object v2, v2, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/apv;->ic(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 163
    const v0, 0x7f0f02d8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axy;->NE:Landroid/widget/ImageView;

    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/axy;->NE:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    iget-object v0, v0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->jumpUrl:Ljava/lang/String;

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 170
    :goto_1
    iget-object v2, p0, Lcom/kingroot/kinguser/axy;->NE:Landroid/widget/ImageView;

    new-instance v3, Lcom/kingroot/kinguser/axy$1;

    invoke-direct {v3, p0, v0}, Lcom/kingroot/kinguser/axy$1;-><init>(Lcom/kingroot/kinguser/axy;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    iget v3, v3, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->showDuration:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->showDuration:I

    .line 190
    iget-object v0, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    iget v3, v3, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->showDuration:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->showDuration:I

    .line 192
    const v0, 0x7f0f01ef

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axy;->bct:Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/kingroot/kinguser/axy;->bct:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 194
    const v0, 0x7f0f02d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axy;->mTextView:Landroid/widget/TextView;

    .line 195
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f07034e

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axy;->bcu:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/kingroot/kinguser/axy;->bct:Landroid/view/View;

    new-instance v2, Lcom/kingroot/kinguser/axy$2;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/axy$2;-><init>(Lcom/kingroot/kinguser/axy;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    iget v0, v0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->showDuration:I

    int-to-long v2, v0

    mul-long/2addr v2, v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/kingroot/kinguser/axy;->i(JJ)V

    .line 214
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    iget-wide v2, v2, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->gt:J

    iget-object v4, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    iget v4, v4, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajv:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/kingroot/kinguser/ady;->c(JI)V

    .line 216
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x1884a

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    move-object v0, v1

    .line 217
    goto/16 :goto_0

    .line 169
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private UI()Landroid/view/View;
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 221
    iget-object v1, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    if-nez v1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-object v0

    .line 225
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    iget-object v2, v2, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/apv;->ia(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-static {}, Lcom/kingroot/kinguser/afz;->vG()Lcom/kingroot/kinguser/afz;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    iget-object v2, v2, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/afz;->fl(Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/aks;->bI(J)V

    .line 232
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axy;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03010a

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 234
    invoke-static {}, Lcom/kingroot/kinguser/afu;->vB()Lcom/kingroot/kinguser/afu;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    iget-object v2, v2, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajw:Lcom/tencent/qqpim/discovery/AdDisplayModel;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/afu;->a(Landroid/view/View;Lcom/tencent/qqpim/discovery/AdDisplayModel;)V

    .line 236
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    iget-object v2, v2, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/apv;->ic(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 237
    const v0, 0x7f0f02da

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 238
    const v0, 0x7f0f02d8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axy;->NE:Landroid/widget/ImageView;

    .line 239
    iget-object v0, p0, Lcom/kingroot/kinguser/axy;->NE:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 241
    const v0, 0x7f0f01ef

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axy;->bct:Landroid/view/View;

    .line 242
    iget-object v0, p0, Lcom/kingroot/kinguser/axy;->bct:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 243
    const v0, 0x7f0f02d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axy;->mTextView:Landroid/widget/TextView;

    .line 244
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f07034e

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axy;->bcu:Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/kingroot/kinguser/axy;->bct:Landroid/view/View;

    new-instance v2, Lcom/kingroot/kinguser/axy$3;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/axy$3;-><init>(Lcom/kingroot/kinguser/axy;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v0, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    iget v3, v3, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->showDuration:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->showDuration:I

    .line 259
    iget-object v0, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    iget v3, v3, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->showDuration:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->showDuration:I

    .line 262
    iget-object v0, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    iget v0, v0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->showDuration:I

    int-to-long v2, v0

    mul-long/2addr v2, v6

    invoke-direct {p0, v2, v3, v6, v7}, Lcom/kingroot/kinguser/axy;->i(JJ)V

    .line 264
    const/4 v0, 0x4

    invoke-static {v0, v4, v4}, Lcom/kingroot/kinguser/aea;->g(III)V

    move-object v0, v1

    .line 265
    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axy;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/axy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axy;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/kingroot/kinguser/axy;->bcq:Z

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axy;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/axy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axy;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/kingroot/kinguser/axy;->bcs:Z

    return p1
.end method

.method static synthetic c(Lcom/kingroot/kinguser/axy;)Lcom/kingroot/kinguser/ad/SplashDisplayModel;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/axy;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/axy;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private du(Z)V
    .locals 2

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axy;->TT()V

    .line 286
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axy;->oP()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 288
    new-instance v0, Lcom/kingroot/kinguser/axy$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axy$4;-><init>(Lcom/kingroot/kinguser/axy;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 308
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbv;->WN()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/axy;->aXZ:I

    .line 299
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbv;->WO()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/kingroot/kinguser/axy;->aXZ:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    .line 301
    const/4 v0, 0x2

    iput v0, p0, Lcom/kingroot/kinguser/axy;->aXZ:I

    .line 306
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/axy;->aXZ:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aiy;->a(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/axy;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/axy;->bcu:Ljava/lang/String;

    return-object v0
.end method

.method private i(JJ)V
    .locals 7

    .prologue
    .line 311
    new-instance v0, Lcom/kingroot/kinguser/axy$5;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/axy$5;-><init>(Lcom/kingroot/kinguser/axy;JJ)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axy;->aYc:Ljava/lang/Runnable;

    .line 334
    iget-object v0, p0, Lcom/kingroot/kinguser/axy;->aYc:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 335
    return-void
.end method


# virtual methods
.method protected TT()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/kingroot/kinguser/axy;->aYc:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axy;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axy;->aYc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/axy;->aYc:Ljava/lang/Runnable;

    .line 345
    :cond_0
    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 270
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->a(Landroid/os/Message;)V

    .line 271
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 273
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/axy;->du(Z)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    .line 278
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/bbv;->dC(Z)V

    .line 279
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/axy;->du(Z)V

    goto :goto_0
.end method

.method protected oG()Landroid/view/View;
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    iget-object v1, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    iget v1, v1, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->type:I

    packed-switch v1, :pswitch_data_0

    .line 145
    :cond_0
    :goto_0
    return-object v0

    .line 137
    :pswitch_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/axy;->UI()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 140
    :pswitch_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/axy;->UH()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lcom/kingroot/kinguser/yt;

    iget-object v1, p0, Lcom/kingroot/kinguser/axy;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/yt;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onBackPressed()Z
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axy;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    .line 87
    :try_start_0
    const-string v1, "splash_display_model"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    iput-object v0, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axy;->bcr:Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axy;->du(Z)V

    .line 94
    :cond_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 350
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onDestroy()V

    .line 351
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onPause()V

    .line 107
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axy;->bcs:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f040009

    const v2, 0x7f04000a

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 110
    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axy;->bcq:Z

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axy;->du(Z)V

    .line 101
    :cond_0
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onRestart()V

    .line 102
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axy;->bcq:Z

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axy;->du(Z)V

    .line 128
    :cond_0
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onResume()V

    .line 129
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onStop()V

    .line 115
    return-void
.end method
