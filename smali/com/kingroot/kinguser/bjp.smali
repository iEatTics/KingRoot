.class public Lcom/kingroot/kinguser/bjp;
.super Lcom/kingroot/kinguser/bid;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bjp$a;
    }
.end annotation


# static fields
.field private static dataSize:J


# instance fields
.field private Vm:Lcom/kingroot/kinguser/acr;

.field private Vn:[B

.field private aAN:Landroid/widget/TextView;

.field private afO:Landroid/graphics/drawable/Drawable;

.field private afU:Landroid/widget/ImageView;

.field private age:Landroid/widget/TextView;

.field private bxA:Landroid/widget/TextView;

.field private bxB:Landroid/widget/TextView;

.field private bxC:Landroid/widget/TextView;

.field public bxD:Landroid/widget/TextView;

.field private bxE:Lcom/kingroot/kinguser/bjp$a;

.field private bxF:Lcom/kingroot/kinguser/aex$a;

.field private bxG:Landroid/widget/Button;

.field private bxH:Landroid/widget/Button;

.field private bxI:Lcom/kingroot/kinguser/bed;

.field private bxy:Z

.field private bxz:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/aex$a;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 77
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    .line 52
    new-array v0, v5, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/bjp;->Vn:[B

    .line 55
    iput-boolean v5, p0, Lcom/kingroot/kinguser/bjp;->bxy:Z

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxE:Lcom/kingroot/kinguser/bjp$a;

    .line 264
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/bjp$3;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/bjp$3;-><init>(Lcom/kingroot/kinguser/bjp;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxI:Lcom/kingroot/kinguser/bed;

    .line 78
    iput-object p2, p0, Lcom/kingroot/kinguser/bjp;->bxF:Lcom/kingroot/kinguser/aex$a;

    .line 80
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f020188

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjp;->afO:Landroid/graphics/drawable/Drawable;

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->afO:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0a00f0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 83
    iget-object v1, p0, Lcom/kingroot/kinguser/bjp;->afO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5, v5, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjp;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxI:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method

.method private aek()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 294
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxF:Lcom/kingroot/kinguser/aex$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    .line 295
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 296
    sput-wide v6, Lcom/kingroot/kinguser/bjp;->dataSize:J

    .line 298
    :try_start_0
    invoke-static {v0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->eW(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .line 299
    iget-wide v2, v1, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v4, v1, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v2, v4

    sput-wide v2, Lcom/kingroot/kinguser/bjp;->dataSize:J

    .line 300
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    .line 302
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "externalDataSize"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 304
    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    .line 305
    sget-wide v4, Lcom/kingroot/kinguser/bjp;->dataSize:J

    add-long/2addr v4, v2

    sput-wide v4, Lcom/kingroot/kinguser/bjp;->dataSize:J

    .line 308
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "externalCacheSize"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 310
    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    .line 311
    sget-wide v2, Lcom/kingroot/kinguser/bjp;->dataSize:J

    add-long/2addr v0, v2

    sput-wide v0, Lcom/kingroot/kinguser/bjp;->dataSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_1
    :goto_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    sget-wide v2, Lcom/kingroot/kinguser/bjp;->dataSize:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 314
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bjp;)Lcom/kingroot/kinguser/bjp$a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxE:Lcom/kingroot/kinguser/bjp$a;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bjp;)Lcom/kingroot/kinguser/aex$a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxF:Lcom/kingroot/kinguser/aex$a;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bjp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjp;->aek()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/bjp;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxB:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/bjp;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bjp$a;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/kingroot/kinguser/bjp;->bxE:Lcom/kingroot/kinguser/bjp$a;

    .line 323
    return-void
.end method

.method protected acQ()Landroid/view/View;
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03005d

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/bjp;->bI(I)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjp;->mContentView:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected acS()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030052

    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/bjp;->bI(I)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjp;->btf:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->btf:Landroid/view/View;

    return-object v0
.end method

.method public aej()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxz:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    return-void
.end method

.method public getImageFetcher()Lcom/kingroot/kinguser/acr;
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->Vm:Lcom/kingroot/kinguser/acr;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bjp;->bxy:Z

    if-nez v0, :cond_1

    .line 364
    iget-object v1, p0, Lcom/kingroot/kinguser/bjp;->Vn:[B

    monitor-enter v1

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->Vm:Lcom/kingroot/kinguser/acr;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bjp;->bxy:Z

    if-nez v0, :cond_0

    .line 366
    invoke-static {}, Lcom/kingroot/kinguser/yr;->pb()Lcom/kingroot/kinguser/acr;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjp;->Vm:Lcom/kingroot/kinguser/acr;

    .line 369
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->Vm:Lcom/kingroot/kinguser/acr;

    return-object v0

    .line 369
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public iY(I)V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxH:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 253
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxG:Landroid/widget/Button;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxG:Landroid/widget/Button;

    const v1, 0x7f0200e6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public lK(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxG:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 262
    return-void
.end method

.method public oL()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->Vm:Lcom/kingroot/kinguser/acr;

    if-eqz v0, :cond_1

    .line 380
    iget-object v1, p0, Lcom/kingroot/kinguser/bjp;->Vn:[B

    monitor-enter v1

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->Vm:Lcom/kingroot/kinguser/acr;

    if-eqz v0, :cond_0

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjp;->Vm:Lcom/kingroot/kinguser/acr;

    .line 383
    invoke-static {}, Lcom/kingroot/kinguser/yr;->pc()V

    .line 385
    :cond_0
    monitor-exit v1

    .line 387
    :cond_1
    return-void

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v5, 0x1

    const/16 v10, 0x21

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 102
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bid;->onCreate(Landroid/os/Bundle;)V

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjp;->mHandler:Landroid/os/Handler;

    .line 104
    const v0, 0x7f0f00de

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjp;->afU:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f0f0076

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjp;->age:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0f0153

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    const v1, 0x7f0f0135

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/bjp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 109
    const v2, 0x7f0f0134

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/bjp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kingroot/kinguser/bjp;->bxz:Landroid/widget/TextView;

    .line 110
    const v2, 0x7f0f0137

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/bjp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 111
    const v3, 0x7f0f0136

    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/bjp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 113
    const v4, 0x7f0f0138

    invoke-virtual {p0, v4}, Lcom/kingroot/kinguser/bjp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/kingroot/kinguser/bjp;->aAN:Landroid/widget/TextView;

    .line 114
    const v4, 0x7f0f0139

    invoke-virtual {p0, v4}, Lcom/kingroot/kinguser/bjp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/kingroot/kinguser/bjp;->bxA:Landroid/widget/TextView;

    .line 115
    const v4, 0x7f0f013a

    invoke-virtual {p0, v4}, Lcom/kingroot/kinguser/bjp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/kingroot/kinguser/bjp;->bxB:Landroid/widget/TextView;

    .line 117
    const v4, 0x7f0f013c

    invoke-virtual {p0, v4}, Lcom/kingroot/kinguser/bjp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/kingroot/kinguser/bjp;->bxC:Landroid/widget/TextView;

    .line 118
    const v4, 0x7f0f013b

    invoke-virtual {p0, v4}, Lcom/kingroot/kinguser/bjp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/kingroot/kinguser/bjp;->bxD:Landroid/widget/TextView;

    .line 119
    const v4, 0x7f0f0096

    invoke-virtual {p0, v4}, Lcom/kingroot/kinguser/bjp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/kingroot/kinguser/bjp;->bxG:Landroid/widget/Button;

    .line 120
    const v4, 0x7f0f0097

    invoke-virtual {p0, v4}, Lcom/kingroot/kinguser/bjp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/kingroot/kinguser/bjp;->bxH:Landroid/widget/Button;

    .line 121
    iget-object v4, p0, Lcom/kingroot/kinguser/bjp;->bxH:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v7

    const v8, 0x7f07038d

    invoke-virtual {v7, v8}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v4, p0, Lcom/kingroot/kinguser/bjp;->bxG:Landroid/widget/Button;

    new-instance v7, Lcom/kingroot/kinguser/bjp$1;

    invoke-direct {v7, p0}, Lcom/kingroot/kinguser/bjp$1;-><init>(Lcom/kingroot/kinguser/bjp;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v4, p0, Lcom/kingroot/kinguser/bjp;->bxF:Lcom/kingroot/kinguser/aex$a;

    iget-object v4, v4, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget v4, v4, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->classify:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/kingroot/kinguser/bjp;->bxF:Lcom/kingroot/kinguser/aex$a;

    iget-object v4, v4, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget v4, v4, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->flag:I

    if-ne v4, v5, :cond_0

    .line 135
    iget-object v4, p0, Lcom/kingroot/kinguser/bjp;->bxH:Landroid/widget/Button;

    invoke-virtual {v4, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 137
    :cond_0
    iget-object v4, p0, Lcom/kingroot/kinguser/bjp;->bxH:Landroid/widget/Button;

    new-instance v7, Lcom/kingroot/kinguser/bjp$2;

    invoke-direct {v7, p0}, Lcom/kingroot/kinguser/bjp$2;-><init>(Lcom/kingroot/kinguser/bjp;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v4, p0, Lcom/kingroot/kinguser/bjp;->age:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/kingroot/kinguser/bjp;->bxF:Lcom/kingroot/kinguser/aex$a;

    iget-object v7, v7, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v7, v7, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v4, p0, Lcom/kingroot/kinguser/bjp;->bxF:Lcom/kingroot/kinguser/aex$a;

    iget-object v4, v4, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget v4, v4, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->riskType:I

    invoke-static {v4}, Lcom/kingroot/kinguser/avu;->hj(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 151
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v7, 0x7f0e000a

    invoke-virtual {v4, v7}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    iget-object v4, p0, Lcom/kingroot/kinguser/bjp;->afO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 153
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v7, 0x7f070387

    invoke-virtual {v4, v7}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/kingroot/kinguser/bjp;->bxF:Lcom/kingroot/kinguser/aex$a;

    iget-object v8, v8, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget v8, v8, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->riskType:I

    .line 154
    invoke-static {v8}, Lcom/kingroot/kinguser/avu;->hi(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    .line 153
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v4, 0x7f07025e

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/zi;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 169
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 170
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v5

    .line 174
    :goto_1
    iget-object v3, p0, Lcom/kingroot/kinguser/bjp;->bxF:Lcom/kingroot/kinguser/aex$a;

    iget-object v3, v3, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v3, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->description:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/kingroot/kinguser/bjp;->bxF:Lcom/kingroot/kinguser/aex$a;

    iget-object v3, v3, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v3, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->description:Ljava/lang/String;

    const-string v4, ""

    .line 175
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxF:Lcom/kingroot/kinguser/aex$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->description:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :goto_2
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v4, 0x7f0e0014

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 184
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxF:Lcom/kingroot/kinguser/aex$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-boolean v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->isPersonApp:Z

    if-eqz v0, :cond_4

    .line 185
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    :goto_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxF:Lcom/kingroot/kinguser/aex$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->flag:I

    if-ne v0, v5, :cond_1

    .line 199
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxz:Landroid/widget/TextView;

    const v1, 0x7f070390

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->aAN:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v3, v6, v0, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 207
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->aAN:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v1, p0, Lcom/kingroot/kinguser/bjp;->aAN:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxF:Lcom/kingroot/kinguser/aex$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxF:Lcom/kingroot/kinguser/aex$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->versionName:Ljava/lang/String;

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxA:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v3, v6, v0, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 213
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 214
    new-instance v2, Ljava/util/Date;

    iget-object v4, p0, Lcom/kingroot/kinguser/bjp;->bxF:Lcom/kingroot/kinguser/aex$a;

    iget-object v4, v4, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-wide v4, v4, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->pkgLastModified:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 216
    iget-object v4, p0, Lcom/kingroot/kinguser/bjp;->bxA:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v1, p0, Lcom/kingroot/kinguser/bjp;->bxA:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 219
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07036a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v3, v6, v0, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 223
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxD:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxD:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070071

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 226
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07036c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v3, v6, v0, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxB:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxB:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070071

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxC:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 234
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v3, v6, v0, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 237
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxC:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxC:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjp;->bxF:Lcom/kingroot/kinguser/aex$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v1, v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appSourceDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 240
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bjp;->bxI:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 242
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjp;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 243
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 244
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjp;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 245
    return-void

    .line 160
    :cond_2
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v4, p0, Lcom/kingroot/kinguser/bjp;->bxF:Lcom/kingroot/kinguser/aex$a;

    iget-object v4, v4, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v4, v4, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 178
    :cond_3
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 188
    :cond_4
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v3, v6, v0, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp;->bxF:Lcom/kingroot/kinguser/aex$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->classify:I

    invoke-static {v0}, Lcom/kingroot/kinguser/afd;->cP(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 195
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07036b

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_5
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 208
    :cond_6
    const-string v0, "null"

    goto/16 :goto_4

    :cond_7
    move v0, v6

    goto/16 :goto_1
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 331
    invoke-super {p0}, Lcom/kingroot/kinguser/bid;->onStart()V

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bjp;->bxy:Z

    .line 333
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjp;->getImageFetcher()Lcom/kingroot/kinguser/acr;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_0

    .line 336
    iget-object v1, p0, Lcom/kingroot/kinguser/bjp;->bxF:Lcom/kingroot/kinguser/aex$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v1, v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/bjp;->afU:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f020110

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/acr;->a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 338
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 351
    invoke-super {p0}, Lcom/kingroot/kinguser/bid;->onStop()V

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bjp;->bxy:Z

    .line 353
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjp;->oL()V

    .line 354
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 343
    :try_start_0
    invoke-super {p0}, Lcom/kingroot/kinguser/bid;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    goto :goto_0
.end method
