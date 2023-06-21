.class Lcom/kingroot/kinguser/alf$d;
.super Lcom/kingroot/kinguser/alf$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/alf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field public afV:Landroid/widget/TextView;

.field public awD:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

.field public awb:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/kingroot/kinguser/alf;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/alf;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 272
    iput-object p1, p0, Lcom/kingroot/kinguser/alf$d;->this$0:Lcom/kingroot/kinguser/alf;

    .line 273
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/alf$a;-><init>(Landroid/view/View;)V

    .line 274
    const v0, 0x7f0f021c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/alf$d;->awb:Landroid/widget/ImageView;

    .line 275
    const v0, 0x7f0f021e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/alf$d;->afV:Landroid/widget/TextView;

    .line 276
    const v0, 0x7f0f00f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/alf$d;->awD:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 277
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ame;)V
    .locals 4

    .prologue
    .line 280
    check-cast p1, Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;

    .line 281
    iget-object v0, p0, Lcom/kingroot/kinguser/alf$d;->afV:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/kingroot/kinguser/alf$d;->awD:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    new-instance v1, Lcom/kingroot/kinguser/alf$d$1;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/alf$d$1;-><init>(Lcom/kingroot/kinguser/alf$d;Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;)V

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lcom/kingroot/kinguser/alf$d;->awD:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;)V

    .line 293
    iget-object v0, p0, Lcom/kingroot/kinguser/alf$d;->awb:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;->a(Landroid/widget/ImageView;)V

    .line 295
    iget-object v0, p1, Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;->iconUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/alf$d;->awb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/alf$d;->akC:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/kingroot/kinguser/alf$d;->awb:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;->iconUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/alf$d;->akE:Lcom/kingroot/kinguser/apv$b;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 299
    :cond_0
    invoke-virtual {p1}, Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    .line 300
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703e8

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/alf$d;->this$0:Lcom/kingroot/kinguser/alf;

    invoke-static {v2}, Lcom/kingroot/kinguser/alf;->c(Lcom/kingroot/kinguser/alf;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/alf$d;->this$0:Lcom/kingroot/kinguser/alf;

    invoke-static {v3}, Lcom/kingroot/kinguser/alf;->d(Lcom/kingroot/kinguser/alf;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v3

    .line 299
    invoke-static {p1, v0, v1, v2, v3}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    .line 301
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/alf$d;->this$0:Lcom/kingroot/kinguser/alf;

    invoke-static {v1}, Lcom/kingroot/kinguser/alf;->b(Lcom/kingroot/kinguser/alf;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/alf$d;->this$0:Lcom/kingroot/kinguser/alf;

    invoke-static {v2}, Lcom/kingroot/kinguser/alf;->b(Lcom/kingroot/kinguser/alf;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p1, Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/kingroot/kinguser/anc;->a(Ljava/lang/String;ILcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)V

    .line 302
    return-void
.end method
