.class Lcom/kingroot/kinguser/anb$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anb;->a(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aAd:Lcom/kingroot/kinguser/anb;

.field final synthetic aAe:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

.field final synthetic aAf:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anb;Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/kingroot/kinguser/anb$3;->aAd:Lcom/kingroot/kinguser/anb;

    iput-object p2, p0, Lcom/kingroot/kinguser/anb$3;->aAe:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    iput p3, p0, Lcom/kingroot/kinguser/anb$3;->aAf:I

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/kingroot/kinguser/anb$3;->aAd:Lcom/kingroot/kinguser/anb;

    iget-object v1, p0, Lcom/kingroot/kinguser/anb$3;->aAe:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anb;->a(Lcom/kingroot/kinguser/anb;Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    move-result-object v0

    .line 261
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    new-instance v2, Lcom/kingroot/kinguser/bux;

    invoke-direct {v2}, Lcom/kingroot/kinguser/bux;-><init>()V

    .line 263
    iput-object v0, v2, Lcom/kingroot/kinguser/bux;->appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    .line 264
    iget v0, p0, Lcom/kingroot/kinguser/anb$3;->aAf:I

    iput v0, v2, Lcom/kingroot/kinguser/bux;->bON:I

    .line 265
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-static {}, Lcom/kingroot/kinguser/btx;->aid()Lcom/kingroot/kinguser/btx;

    move-result-object v0

    new-instance v2, Lcom/kingroot/kinguser/anb$3$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/anb$3$1;-><init>(Lcom/kingroot/kinguser/anb$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/btx;->a(Ljava/util/List;Lcom/kingroot/kinguser/bug;)V

    .line 281
    return-void
.end method
