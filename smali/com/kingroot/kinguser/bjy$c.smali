.class Lcom/kingroot/kinguser/bjy$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bjy$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field final synthetic byO:Lcom/kingroot/kinguser/bjy;

.field private final byP:Lcom/kingroot/loader/sdk/service/IKlPostRestartUpdateObserver;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bjy;Ljava/lang/String;Lcom/kingroot/loader/sdk/service/IKlPostRestartUpdateObserver;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/kingroot/kinguser/bjy$c;->byO:Lcom/kingroot/kinguser/bjy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iput-object p2, p0, Lcom/kingroot/kinguser/bjy$c;->b:Ljava/lang/String;

    .line 552
    iput-object p3, p0, Lcom/kingroot/kinguser/bjy$c;->byP:Lcom/kingroot/loader/sdk/service/IKlPostRestartUpdateObserver;

    .line 553
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/kingroot/kinguser/bjy$c;->byP:Lcom/kingroot/loader/sdk/service/IKlPostRestartUpdateObserver;

    if-nez v0, :cond_0

    .line 558
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjy$c;->byP:Lcom/kingroot/loader/sdk/service/IKlPostRestartUpdateObserver;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjy$c;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/kingroot/loader/sdk/service/IKlPostRestartUpdateObserver;->onPostCompleted(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 563
    iget-object v0, p0, Lcom/kingroot/kinguser/bjy$c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjy$c;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 564
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bjy$c;->a(I)V

    .line 593
    :goto_0
    return-void

    .line 569
    :cond_1
    new-instance v0, Lcom/kingroot/loader/sdk/KlInfo;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjy$c;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/kingroot/loader/sdk/KlInfo;-><init>(Ljava/lang/String;)V

    .line 570
    invoke-static {v0}, Lcom/kingroot/kinguser/bkr;->c(Lcom/kingroot/loader/sdk/KlInfo;)I

    move-result v1

    .line 571
    if-gez v1, :cond_2

    .line 572
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bjy$c;->a(I)V

    goto :goto_0

    .line 577
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/bjy$c;->byO:Lcom/kingroot/kinguser/bjy;

    iget v2, v0, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bjy;->getInstalledKlPackage(I)Lcom/kingroot/loader/sdk/KlPackage;

    move-result-object v1

    .line 578
    if-nez v1, :cond_3

    .line 579
    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bjy$c;->a(I)V

    goto :goto_0

    .line 584
    :cond_3
    iget v0, v0, Lcom/kingroot/loader/sdk/KlInfo;->versionCode:I

    iget-object v2, v1, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    iget v2, v2, Lcom/kingroot/loader/sdk/KlInfo;->versionCode:I

    if-gt v0, v2, :cond_4

    .line 585
    const/4 v0, -0x4

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bjy$c;->a(I)V

    goto :goto_0

    .line 590
    :cond_4
    iget-object v0, v1, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    iget-object v2, p0, Lcom/kingroot/kinguser/bjy$c;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/kingroot/loader/sdk/KlInfo;->rawPluginPath:Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lcom/kingroot/kinguser/bjy$c;->byO:Lcom/kingroot/kinguser/bjy;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjy;->a(Lcom/kingroot/kinguser/bjy;)Lcom/kingroot/kinguser/bkb;

    move-result-object v0

    iget-object v1, v1, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bkb;->a(Lcom/kingroot/loader/sdk/KlInfo;)V

    .line 592
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bjy$c;->a(I)V

    goto :goto_0
.end method
