.class Lcom/kingroot/kinguser/ale$d;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field public afV:Landroid/widget/TextView;

.field private akC:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private akE:Lcom/kingroot/kinguser/apv$b;

.field private alK:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/ale$c;",
            ">;"
        }
    .end annotation
.end field

.field public alk:Landroid/widget/ImageView;

.field public awb:Landroid/widget/ImageView;

.field public awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

.field public awi:Landroid/widget/TextView;

.field public awj:Landroid/widget/TextView;

.field public awk:Lcom/kingcore/uilib/ExpandableTextView;

.field public awl:Landroid/widget/TextView;

.field public awm:Landroid/widget/TextView;

.field final synthetic awn:Lcom/kingroot/kinguser/ale;

.field public awq:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ale;Landroid/view/View;Lcom/kingroot/kinguser/ale$c;)V
    .locals 1

    .prologue
    .line 284
    iput-object p1, p0, Lcom/kingroot/kinguser/ale$d;->awn:Lcom/kingroot/kinguser/ale;

    .line 285
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$d;->akC:Ljava/util/HashMap;

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$d;->alK:Ljava/lang/ref/WeakReference;

    .line 422
    new-instance v0, Lcom/kingroot/kinguser/ale$d$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ale$d$4;-><init>(Lcom/kingroot/kinguser/ale$d;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$d;->akE:Lcom/kingroot/kinguser/apv$b;

    .line 286
    const v0, 0x7f0f00d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$d;->afV:Landroid/widget/TextView;

    .line 287
    const v0, 0x7f0f022b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$d;->awq:Landroid/widget/TextView;

    .line 288
    const v0, 0x7f0f022c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$d;->awi:Landroid/widget/TextView;

    .line 289
    const v0, 0x7f0f022d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$d;->awj:Landroid/widget/TextView;

    .line 290
    const v0, 0x7f0f0221

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/ExpandableTextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$d;->awk:Lcom/kingcore/uilib/ExpandableTextView;

    .line 291
    const v0, 0x7f0f022e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$d;->alk:Landroid/widget/ImageView;

    .line 292
    const v0, 0x7f0f0148

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$d;->awb:Landroid/widget/ImageView;

    .line 293
    const v0, 0x7f0f00f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$d;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 294
    const v0, 0x7f0f0223

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$d;->awm:Landroid/widget/TextView;

    .line 295
    const v0, 0x7f0f022f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$d;->awl:Landroid/widget/TextView;

    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d;->awl:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    if-eqz p3, :cond_0

    .line 298
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$d;->alK:Ljava/lang/ref/WeakReference;

    .line 300
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ale$d;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d;->alK:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/ale$d;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d;->akC:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ame;)V
    .locals 6

    .prologue
    .line 303
    check-cast p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    .line 304
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/kingroot/kinguser/ale$d;->afV:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-boolean v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->isImportantVersion:Z

    if-eqz v1, :cond_2

    .line 307
    iget-object v1, p0, Lcom/kingroot/kinguser/ale$d;->awq:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    iget-wide v2, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteDiffPkgSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 314
    iget-object v2, p0, Lcom/kingroot/kinguser/ale$d;->awi:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kingroot/kinguser/ale$d;->awi:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 316
    iget-wide v2, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteDiffPkgSize:J

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/anf;->bQ(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :goto_1
    iget-object v2, p0, Lcom/kingroot/kinguser/ale$d;->awi:Landroid/widget/TextView;

    iget-wide v4, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteSize:J

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/anf;->bQ(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget-object v2, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->oldVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const v2, 0x7f07048d

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v2, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget-object v2, p0, Lcom/kingroot/kinguser/ale$d;->awj:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070488

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteNewFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    const-string v1, "\\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    iget-object v2, p0, Lcom/kingroot/kinguser/ale$d;->awk:Lcom/kingcore/uilib/ExpandableTextView;

    invoke-virtual {v2, v1}, Lcom/kingcore/uilib/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v2, p0, Lcom/kingroot/kinguser/ale$d;->awk:Lcom/kingcore/uilib/ExpandableTextView;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Lcom/kingcore/uilib/ExpandableTextView;->setAnimationDuration(J)V

    .line 331
    iget-object v2, p0, Lcom/kingroot/kinguser/ale$d;->alk:Landroid/widget/ImageView;

    new-instance v3, Lcom/kingroot/kinguser/ale$d$1;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/ale$d$1;-><init>(Lcom/kingroot/kinguser/ale$d;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v2, p0, Lcom/kingroot/kinguser/ale$d;->awk:Lcom/kingcore/uilib/ExpandableTextView;

    new-instance v3, Lcom/kingroot/kinguser/ale$d$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/ale$d$2;-><init>(Lcom/kingroot/kinguser/ale$d;)V

    invoke-virtual {v2, v3}, Lcom/kingcore/uilib/ExpandableTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v2, p0, Lcom/kingroot/kinguser/ale$d;->awk:Lcom/kingcore/uilib/ExpandableTextView;

    new-instance v3, Lcom/kingroot/kinguser/ale$d$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/kingroot/kinguser/ale$d$3;-><init>(Lcom/kingroot/kinguser/ale$d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/kingcore/uilib/ExpandableTextView;->setExpandListener(Lcom/kingcore/uilib/ExpandableTextView$a;)V

    .line 368
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {v0, p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iget-object v1, p0, Lcom/kingroot/kinguser/ale$d;->awb:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setTag(Ljava/lang/Object;)V

    .line 370
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;)V

    .line 371
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d;->awm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->iconUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/ale$d;->awb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d;->awb:Landroid/widget/ImageView;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 375
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d;->akC:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/kingroot/kinguser/ale$d;->awb:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->iconUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/ale$d;->akE:Lcom/kingroot/kinguser/apv$b;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d;->alK:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ale$c;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/ale$c;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    .line 382
    :cond_1
    return-void

    .line 309
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/ale$d;->awq:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 319
    :cond_3
    iget-object v2, p0, Lcom/kingroot/kinguser/ale$d;->awi:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kingroot/kinguser/ale$d;->awi:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    and-int/lit8 v3, v3, -0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d;->alK:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ale$d;->getAdapterPosition()I

    move-result v1

    .line 392
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 396
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 397
    sparse-switch v0, :sswitch_data_0

    .line 419
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 399
    :sswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ale$c;

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/ale$c;->h(Landroid/view/View;I)V

    goto :goto_1

    .line 402
    :sswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f0704d4

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/ale$d;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 403
    invoke-virtual {v2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->getProgressText()Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x18976

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 411
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ale$c;

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/ale$c;->i(Landroid/view/View;I)V

    goto :goto_1

    .line 406
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f0703f6

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/ale$d;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 407
    invoke-virtual {v2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->getProgressText()Ljava/lang/String;

    move-result-object v2

    .line 406
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x18977

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_2

    .line 414
    :sswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ale$c;

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/ale$c;->f(Landroid/view/View;I)V

    goto :goto_1

    .line 397
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f00f4 -> :sswitch_1
        0x7f0f0223 -> :sswitch_0
        0x7f0f022f -> :sswitch_2
    .end sparse-switch
.end method
