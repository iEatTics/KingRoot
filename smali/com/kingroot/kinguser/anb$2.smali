.class Lcom/kingroot/kinguser/anb$2;
.super Lcom/kingroot/kinguser/alz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/anb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/alz",
        "<",
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic aAd:Lcom/kingroot/kinguser/anb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anb;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/kingroot/kinguser/anb$2;->aAd:Lcom/kingroot/kinguser/anb;

    invoke-direct {p0}, Lcom/kingroot/kinguser/alz;-><init>()V

    return-void
.end method


# virtual methods
.method public Ha()Ljava/io/File;
    .locals 3

    .prologue
    .line 236
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "apps_market_business_exposure_report.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public Hb()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method public synthetic Hc()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anb$2;->Hb()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method
