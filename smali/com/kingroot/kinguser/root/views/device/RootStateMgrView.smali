.class public Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private aVv:Lcom/kingroot/kinguser/bcp;

.field private final baW:Landroid/view/View$OnClickListener;

.field private final bba:Landroid/view/View$OnClickListener;

.field private final bbb:Landroid/view/View$OnClickListener;

.field private final bhA:Landroid/view/View$OnClickListener;

.field private bhx:Landroid/widget/RelativeLayout;

.field private bhy:Landroid/widget/RelativeLayout;

.field private final bhz:Landroid/view/View$OnClickListener;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private zv:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 73
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 441
    new-instance v0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$3;-><init>(Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->bbb:Landroid/view/View$OnClickListener;

    .line 455
    new-instance v0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$4;-><init>(Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->baW:Landroid/view/View$OnClickListener;

    .line 471
    new-instance v0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$5;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$5;-><init>(Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->bhz:Landroid/view/View$OnClickListener;

    .line 485
    new-instance v0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$6;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$6;-><init>(Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->bba:Landroid/view/View$OnClickListener;

    .line 499
    new-instance v0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$7;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$7;-><init>(Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->bhA:Landroid/view/View$OnClickListener;

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 75
    invoke-direct {p0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->gy()Landroid/view/View;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 79
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 441
    new-instance v0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$3;-><init>(Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->bbb:Landroid/view/View$OnClickListener;

    .line 455
    new-instance v0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$4;-><init>(Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->baW:Landroid/view/View$OnClickListener;

    .line 471
    new-instance v0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$5;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$5;-><init>(Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->bhz:Landroid/view/View$OnClickListener;

    .line 485
    new-instance v0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$6;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$6;-><init>(Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->bba:Landroid/view/View$OnClickListener;

    .line 499
    new-instance v0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$7;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$7;-><init>(Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->bhA:Landroid/view/View$OnClickListener;

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 81
    invoke-direct {p0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->gy()Landroid/view/View;

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;)Lcom/kingroot/kinguser/bcp;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->aVv:Lcom/kingroot/kinguser/bcp;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;Lcom/kingroot/kinguser/bcp;)Lcom/kingroot/kinguser/bcp;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->aVv:Lcom/kingroot/kinguser/bcp;

    return-object p1
.end method

.method private gy()Landroid/view/View;
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030122

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v1, 0x7f0f0319

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->bhx:Landroid/widget/RelativeLayout;

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v1, 0x7f0f031a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->bhy:Landroid/widget/RelativeLayout;

    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public XD()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 184
    const v0, 0x7f030066

    invoke-virtual {p0, v0, v4}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->af(II)V

    .line 186
    const v0, 0x7f030065

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->af(II)V

    .line 188
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0172

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070199

    .line 190
    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 191
    invoke-static {}, Lcom/kingroot/kinguser/bce;->Xk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0173

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070192

    .line 194
    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0174

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 199
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    const v2, 0x7f0700bb

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v1, 0x7f0f031b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    return-void
.end method

.method public XE()V
    .locals 3

    .prologue
    .line 281
    const v0, 0x7f030060

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->af(II)V

    .line 283
    const v0, 0x7f030068

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->af(II)V

    .line 285
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 286
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0175

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0700b4

    .line 287
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0177

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 290
    const v2, 0x7f070288

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v2, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->bhA:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0178

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f07009e

    .line 294
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v1, 0x7f0f031b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    return-void
.end method

.method public XF()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 362
    const v0, 0x7f030064

    invoke-virtual {p0, v0, v5}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->af(II)V

    .line 364
    const v0, 0x7f030069

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->af(II)V

    .line 366
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v1, 0x7f0f031b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v1, 0x7f0f0168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;

    .line 368
    invoke-virtual {v0}, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$1;

    invoke-direct {v2, p0, v0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$1;-><init>(Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;Lcom/kingroot/kinguser/root/views/circles/GradientCircle;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 377
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v4, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$2;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$2;-><init>(Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;)V

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 390
    return-void
.end method

.method public Xv()V
    .locals 3

    .prologue
    .line 256
    const v0, 0x7f030060

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->af(II)V

    .line 258
    const v0, 0x7f030068

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->af(II)V

    .line 260
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 261
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0175

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0700b4

    .line 262
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0177

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 265
    const v2, 0x7f07029a

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v2, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->bbb:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0178

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0700b5

    .line 269
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v1, 0x7f0f031b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    return-void
.end method

.method public af(II)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 113
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, p2}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->ie(I)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->o(Landroid/view/View;I)V

    .line 114
    return-void
.end method

.method public cS(Z)V
    .locals 11

    .prologue
    .line 305
    const v0, 0x7f030062

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->af(II)V

    .line 307
    const v0, 0x7f030067

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->af(II)V

    .line 309
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/akj;->aT(Landroid/content/Context;)Lcom/kingroot/kinguser/akj;

    move-result-object v10

    .line 310
    invoke-virtual {v10}, Lcom/kingroot/kinguser/akj;->AN()V

    .line 311
    invoke-virtual {v10}, Lcom/kingroot/kinguser/akj;->AC()J

    move-result-wide v0

    .line 313
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 314
    invoke-static {}, Lcom/kingroot/kinguser/aus;->EQ()I

    move-result v0

    int-to-long v0, v0

    .line 317
    :cond_0
    if-eqz p1, :cond_1

    .line 318
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {v10, v0, v1}, Lcom/kingroot/kinguser/akj;->am(J)V

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Lcom/kingroot/kinguser/akj;->al(J)V

    :cond_1
    move-wide v8, v0

    .line 322
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 325
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/akj;->aT(Landroid/content/Context;)Lcom/kingroot/kinguser/akj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akj;->AA()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    invoke-virtual {v10}, Lcom/kingroot/kinguser/akj;->AF()J

    move-result-wide v2

    .line 327
    const-wide/16 v4, 0x0

    cmp-long v0, v4, v2

    if-gez v0, :cond_2

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0176

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0700ba

    .line 330
    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v1, 0x7f0f0095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->bba:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/ady;->a(IIIIIII)V

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v1, 0x7f0f0175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v1, 0x7f0f0177

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 343
    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->baW:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v1, 0x7f0f031b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 348
    invoke-virtual {v10}, Lcom/kingroot/kinguser/akj;->AJ()V

    .line 350
    invoke-virtual {v10}, Lcom/kingroot/kinguser/akj;->AC()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/kingroot/kinguser/akj;->ak(J)V

    .line 351
    invoke-virtual {v10}, Lcom/kingroot/kinguser/akj;->AF()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/kingroot/kinguser/akj;->an(J)V

    .line 353
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/ady;->a(IIIIIII)V

    .line 355
    return-void
.end method

.method public dD(Z)V
    .locals 6

    .prologue
    const v5, 0x7f0f031b

    const/4 v4, 0x0

    .line 132
    const v0, 0x7f030066

    invoke-virtual {p0, v0, v4}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->af(II)V

    .line 134
    const v0, 0x7f030065

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->af(II)V

    .line 136
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0172

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070199

    .line 138
    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 139
    invoke-static {}, Lcom/kingroot/kinguser/bce;->Xk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0173

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070192

    .line 142
    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0174

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 145
    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    const v2, 0x7f0700be

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->bhz:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    return-void

    .line 150
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getWholeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    return-object v0
.end method

.method public h(Landroid/view/View$OnClickListener;)V
    .locals 3

    .prologue
    .line 161
    const v0, 0x7f030060

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->af(II)V

    .line 163
    const v0, 0x7f030068

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->af(II)V

    .line 165
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0175

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0700b9

    .line 167
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0177

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 170
    const v2, 0x7f0700a0

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0178

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0700a1

    .line 174
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v1, 0x7f0f031b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    return-void
.end method

.method public i(Landroid/view/View$OnClickListener;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 210
    const v0, 0x7f030060

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->af(II)V

    .line 212
    const v0, 0x7f030068

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->af(II)V

    .line 214
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 215
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0175

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0700b4

    .line 216
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0177

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 219
    const v2, 0x7f0701e4

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 220
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v1, 0x7f0f0178

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v1, 0x7f0f031b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 225
    return-void
.end method

.method public ie(I)Landroid/widget/RelativeLayout;
    .locals 3

    .prologue
    .line 97
    packed-switch p1, :pswitch_data_0

    .line 103
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->bhx:Landroid/widget/RelativeLayout;

    .line 101
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->bhy:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public j(Landroid/view/View$OnClickListener;)V
    .locals 3

    .prologue
    .line 232
    const v0, 0x7f030060

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->af(II)V

    .line 234
    const v0, 0x7f030068

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->af(II)V

    .line 236
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 237
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0175

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0700b4

    .line 238
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0177

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 241
    const v2, 0x7f0701ec

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0178

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0700b6

    .line 245
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v1, 0x7f0f031b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    return-void
.end method

.method public k(Landroid/view/View$OnClickListener;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 397
    const v0, 0x7f030064

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->af(II)V

    .line 399
    const v0, 0x7f030068

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->af(II)V

    .line 401
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 402
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0175

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0700bc

    .line 403
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0177

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 407
    const v2, 0x7f0700c2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 408
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v1, 0x7f0f0178

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v1, 0x7f0f031b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 414
    return-void
.end method

.method public l(Landroid/view/View$OnClickListener;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 421
    const v0, 0x7f030060

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->af(II)V

    .line 423
    const v0, 0x7f030068

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->af(II)V

    .line 425
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 426
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0175

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0700bf

    .line 427
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v2, 0x7f0f0177

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 430
    const v2, 0x7f0700c2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 431
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v1, 0x7f0f0178

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v1, 0x7f0f031b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 436
    return-void
.end method

.method public o(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p0, p2}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->ie(I)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 122
    invoke-virtual {p0, p2}, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->ie(I)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 124
    :cond_0
    return-void
.end method

.method public setCheckContent(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->zv:Landroid/view/View;

    const v1, 0x7f0f0179

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/MarqueeView;

    .line 513
    if-nez v0, :cond_0

    .line 527
    :goto_0
    return-void

    .line 517
    :cond_0
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 519
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f070199

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 521
    invoke-static {}, Lcom/kingroot/kinguser/bce;->Xk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 520
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f070192

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 524
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_1
    invoke-virtual {v0, p1}, Lcom/kingroot/common/uilib/MarqueeView;->J(Ljava/util/List;)V

    goto :goto_0
.end method
