.class public Lcom/kingroot/kinguser/aof;
.super Lcom/kingroot/kinguser/anw;
.source "SourceFile"


# instance fields
.field private aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

.field private aFj:Landroid/widget/TextView;

.field private aFk:Landroid/widget/TextView;

.field private aFl:Landroid/widget/TextView;

.field private ahP:Landroid/widget/ImageView;

.field private akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

.field private akD:Lcom/kingroot/kinguser/and$a;

.field private awD:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

.field private awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/kingroot/kinguser/aoa;)V
    .locals 2

    .prologue
    const v1, 0x7f0f0221

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/anw;-><init>(Landroid/view/View;Lcom/kingroot/kinguser/aoa;)V

    .line 45
    new-instance v0, Lcom/kingroot/kinguser/aof$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aof$1;-><init>(Lcom/kingroot/kinguser/aof;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aof;->akD:Lcom/kingroot/kinguser/and$a;

    .line 139
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$4;-><init>(Lcom/kingroot/kinguser/aof;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aof;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 162
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$5;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$5;-><init>(Lcom/kingroot/kinguser/aof;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aof;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    .line 59
    const v0, 0x7f0f00d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/aof;->aFj:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0f0220

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/aof;->aFk:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/aof;->aFl:Landroid/widget/TextView;

    .line 62
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    const v0, 0x7f0f0148

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/aof;->ahP:Landroid/widget/ImageView;

    .line 64
    const v0, 0x7f0f00f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/aof;->awD:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aof;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/aof;->ahP:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/aof;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/aof;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    return-object v0
.end method

.method public static synthetic c(Lcom/kingroot/kinguser/aof;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/aof;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/aof;)Lcom/kingroot/kinguser/and$a;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/aof;->akD:Lcom/kingroot/kinguser/and$a;

    return-object v0
.end method

.method public static synthetic e(Lcom/kingroot/kinguser/aof;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/aof;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    return-object v0
.end method


# virtual methods
.method public ah(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/kingroot/kinguser/aof;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Lcom/kingroot/kinguser/aof$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aof$4;-><init>(Lcom/kingroot/kinguser/aof;)V

    iget-object v1, p0, Lcom/kingroot/kinguser/aof;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    iget-object v2, p0, Lcom/kingroot/kinguser/aof;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-static {p1, v0, v1, v2}, Lcom/kingroot/kinguser/anf;->a(Ljava/util/List;Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 274
    :cond_0
    return-void
.end method

.method public d(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 8

    .prologue
    .line 85
    iput-object p1, p0, Lcom/kingroot/kinguser/aof;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/aof;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/aof;->aFj:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/aof;->aFk:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703e1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->downloadCount:I

    int-to-long v6, v6

    .line 90
    invoke-static {v6, v7}, Lcom/kingroot/kinguser/anf;->bP(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 89
    invoke-virtual {v2, v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->fileSize:J

    .line 90
    invoke-static {v2, v3}, Lcom/kingroot/kinguser/anf;->bQ(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/aof;->aFl:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->describe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/aof;->awD:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;)V

    .line 95
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/aof;->ahP:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/aof;->ahP:Landroid/widget/ImageView;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    new-instance v2, Lcom/kingroot/kinguser/aof$2;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/aof$2;-><init>(Lcom/kingroot/kinguser/aof;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aof;->awD:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    new-instance v1, Lcom/kingroot/kinguser/aof$3;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/aof$3;-><init>(Lcom/kingroot/kinguser/aof;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aof;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    iget-object v2, p0, Lcom/kingroot/kinguser/aof;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 132
    invoke-static {p1, v0, v1, v2}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    .line 136
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/aof;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aof;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/activitys/AppDetailActivity;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    .line 72
    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 277
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aof;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 278
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aof;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aso;->a(Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 279
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/aof;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/aof;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, p0, Lcom/kingroot/kinguser/aof;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 78
    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/aof;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    iget-object v3, p0, Lcom/kingroot/kinguser/aof;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 77
    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    .line 82
    :cond_0
    return-void
.end method
