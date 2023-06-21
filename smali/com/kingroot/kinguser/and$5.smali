.class final Lcom/kingroot/kinguser/and$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic aAp:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

.field final synthetic aAr:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

.field final synthetic aAw:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

.field final synthetic aAx:Ljava/lang/String;

.field final synthetic avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/kingroot/kinguser/and$5;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iput-object p2, p0, Lcom/kingroot/kinguser/and$5;->aAw:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iput-object p3, p0, Lcom/kingroot/kinguser/and$5;->aAx:Ljava/lang/String;

    iput-object p4, p0, Lcom/kingroot/kinguser/and$5;->aAp:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    iput-object p5, p0, Lcom/kingroot/kinguser/and$5;->aAr:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 631
    iget-object v0, p0, Lcom/kingroot/kinguser/and$5;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, p0, Lcom/kingroot/kinguser/and$5;->aAw:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iget-object v2, p0, Lcom/kingroot/kinguser/and$5;->aAx:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/and$5;->aAp:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    iget-object v4, p0, Lcom/kingroot/kinguser/and$5;->aAr:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    .line 632
    return-void
.end method
