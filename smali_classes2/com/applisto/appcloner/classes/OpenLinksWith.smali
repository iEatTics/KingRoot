.class public Lcom/applisto/appcloner/classes/OpenLinksWith;
.super Ljava/lang/Object;
.source "OpenLinksWith.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/applisto/appcloner/classes/OpenLinksWith;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/OpenLinksWith;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/applisto/appcloner/classes/CloneSettings;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "openLinksWith"

    const/4 v1, 0x0

    .line 27
    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applisto/appcloner/classes/OpenLinksWith;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/applisto/appcloner/classes/OpenLinksWith;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/applisto/appcloner/classes/OpenLinksWith;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lcom/applisto/appcloner/classes/OpenLinksWith;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/applisto/appcloner/classes/OpenLinksWith;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 81
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x80

    .line 83
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public install(Landroid/content/Context;)V
    .locals 3

    .line 31
    sget-object v0, Lcom/applisto/appcloner/classes/OpenLinksWith;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/applisto/appcloner/classes/OpenLinksWith;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/applisto/appcloner/classes/OpenLinksWith;->mPackageName:Ljava/lang/String;

    const-string v1, "SELF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/OpenLinksWith;->mPackageName:Ljava/lang/String;

    .line 38
    :cond_0
    sget-object v0, Lcom/applisto/appcloner/classes/OpenLinksWith;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init; mPackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applisto/appcloner/classes/OpenLinksWith;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :try_start_0
    new-instance v0, Lcom/applisto/appcloner/classes/OpenLinksWith$1;

    invoke-direct {v0, p0, p1}, Lcom/applisto/appcloner/classes/OpenLinksWith$1;-><init>(Lcom/applisto/appcloner/classes/OpenLinksWith;Landroid/content/Context;)V

    .line 70
    invoke-virtual {v0}, Lcom/applisto/appcloner/classes/OpenLinksWith$1;->install()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    sget-object v0, Lcom/applisto/appcloner/classes/OpenLinksWith;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
