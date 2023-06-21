.class public Lcom/kingroot/kinguser/bff;
.super Lcom/kingroot/kinguser/bfa;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

.field private akD:Lcom/kingroot/kinguser/and$a;

.field private awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

.field private bmo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

.field private bmp:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ToolBoxMarketAppViewHolder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bff;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfa;-><init>()V

    .line 119
    new-instance v0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$3;-><init>(Lcom/kingroot/kinguser/bff;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bff;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 141
    new-instance v0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;-><init>(Lcom/kingroot/kinguser/bff;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bff;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    .line 254
    new-instance v0, Lcom/kingroot/kinguser/bff$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bff$3;-><init>(Lcom/kingroot/kinguser/bff;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bff;->akD:Lcom/kingroot/kinguser/and$a;

    return-void
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/bff;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/bff;->bmp:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bff;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/bff;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bff;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/bff;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bff;)Lcom/kingroot/kinguser/and$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/bff;->akD:Lcom/kingroot/kinguser/and$a;

    return-object v0
.end method

.method public static synthetic e(Lcom/kingroot/kinguser/bff;)Lcom/kingcore/uilib/TextRoundCornerProgressBar;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/bff;->bmo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    return-object v0
.end method


# virtual methods
.method protected ZD()I
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f030139

    return v0
.end method

.method protected ZE()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 44
    invoke-super {p0}, Lcom/kingroot/kinguser/bfa;->ZE()V

    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/bff;->mView:Landroid/view/View;

    const v1, 0x7f0f0341

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/bff;->mView:Landroid/view/View;

    const v1, 0x7f0f020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/bff;->mView:Landroid/view/View;

    const v1, 0x7f0f0340

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/bff;->bmo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/bff;->bmo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/bff;->blR:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/bff;->blQ:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/bff;->bmp:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/bff;->bmp:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, p0, Lcom/kingroot/kinguser/bff;->bmo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bff;->bmo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    new-instance v1, Lcom/kingroot/kinguser/bff$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bff$1;-><init>(Lcom/kingroot/kinguser/bff;)V

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/bff;->mView:Landroid/view/View;

    new-instance v1, Lcom/kingroot/kinguser/bff$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bff$2;-><init>(Lcom/kingroot/kinguser/bff;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method protected a(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;)V
    .locals 4

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bfa;->a(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;)V

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/bff;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmL:Ljava/lang/Object;

    instance-of v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    if-eqz v0, :cond_2

    .line 81
    new-instance v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v0, p0, Lcom/kingroot/kinguser/bff;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmL:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bff;->bmp:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/bff;->bmo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/bff;->bmp:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, p0, Lcom/kingroot/kinguser/bff;->bmo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bff;->bmp:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, p0, Lcom/kingroot/kinguser/bff;->bmo:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 91
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703e8

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/bff;->bmp:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v0, :cond_1

    .line 94
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bff;->bmp:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/bff;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/amz;->a(Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 95
    invoke-static {}, Lcom/kingroot/kinguser/alm;->GQ()Lcom/kingroot/kinguser/asy;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bff;->bmp:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/bff;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/asy;->a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 97
    :cond_1
    return-void

    .line 83
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mModel must be an instance of ToolBoxEntry<AppBaseModel>"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/kingroot/kinguser/bfa;->onDestroy()V

    .line 115
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bff;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 116
    invoke-static {}, Lcom/kingroot/kinguser/alm;->GQ()Lcom/kingroot/kinguser/asy;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bff;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/asy;->a(Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 117
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method protected s(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bfa;->s(Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bff;->r(Ljava/lang/Object;)V

    .line 104
    return-void
.end method
