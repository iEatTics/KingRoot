.class public Lcom/kingroot/kinguser/ayw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/ayw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/kingroot/kinguser/ayw$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ayw$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ayw;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/ayw$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/kingroot/kinguser/ayw;-><init>()V

    return-void
.end method

.method public static Vn()Lcom/kingroot/kinguser/ayw;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/kingroot/kinguser/ayw;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ayw;

    return-object v0
.end method

.method private a(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;B)Lcom/kingroot/kinguser/dt;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/kingroot/kinguser/dt;

    invoke-direct {v0}, Lcom/kingroot/kinguser/dt;-><init>()V

    .line 49
    iput-byte p2, v0, Lcom/kingroot/kinguser/dt;->nSuccess:B

    .line 51
    :try_start_0
    iget-object v1, p1, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->cmsCategoryId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/dt;->categoryid:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    iget-object v1, p1, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->orignalUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/dt;->url:Ljava/lang/String;

    .line 56
    iget-object v1, p1, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->channelId:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/dt;->channelId:Ljava/lang/String;

    .line 57
    iget-object v1, p1, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->businessStream:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/dt;->ext_str:Ljava/lang/String;

    .line 58
    new-instance v1, Lcom/kingroot/kinguser/df;

    invoke-direct {v1}, Lcom/kingroot/kinguser/df;-><init>()V

    .line 59
    iget-object v2, p1, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->packageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/kingroot/kinguser/df;->softname:Ljava/lang/String;

    .line 60
    iget-object v2, p1, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->versionName:Ljava/lang/String;

    iput-object v2, v1, Lcom/kingroot/kinguser/df;->version:Ljava/lang/String;

    .line 61
    iget v2, p1, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->versionCode:I

    iput v2, v1, Lcom/kingroot/kinguser/df;->versioncode:I

    .line 62
    iget-object v2, p1, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->appName:Ljava/lang/String;

    iput-object v2, v1, Lcom/kingroot/kinguser/df;->name:Ljava/lang/String;

    .line 64
    :try_start_1
    iget-object v2, p1, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->cmsCategoryId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/kingroot/kinguser/df;->category:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    :goto_1
    iput-object v1, v0, Lcom/kingroot/kinguser/dt;->softkey:Lcom/kingroot/kinguser/df;

    .line 69
    return-object v0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    iput v3, v0, Lcom/kingroot/kinguser/dt;->categoryid:I

    goto :goto_0

    .line 65
    :catch_1
    move-exception v2

    .line 66
    iput v3, v1, Lcom/kingroot/kinguser/df;->category:I

    goto :goto_1
.end method


# virtual methods
.method public d(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;)V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x28

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/ayw;->a(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;B)Lcom/kingroot/kinguser/dt;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/awf;->a(Lcom/kingroot/kinguser/dt;)V

    .line 33
    return-void
.end method

.method public e(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;)V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/ayw;->a(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;B)Lcom/kingroot/kinguser/dt;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/awf;->a(Lcom/kingroot/kinguser/dt;)V

    .line 37
    return-void
.end method

.method public f(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/ayw;->a(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;B)Lcom/kingroot/kinguser/dt;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/awf;->a(Lcom/kingroot/kinguser/dt;)V

    .line 41
    return-void
.end method

.method public g(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;)V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x1e

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/ayw;->a(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;B)Lcom/kingroot/kinguser/dt;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/awf;->a(Lcom/kingroot/kinguser/dt;)V

    .line 45
    return-void
.end method
