.class public final Lcom/kingroot/kinguser/boi;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static bFo:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/boi;->a:Landroid/content/Context;

    const-string v0, "2.5.05"

    sput-object v0, Lcom/kingroot/kinguser/boi;->b:Ljava/lang/String;

    return-void
.end method

.method public static agA()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/kingroot/kinguser/boi;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static agB()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/kingroot/kinguser/boi;->bFo:Landroid/os/Handler;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kingroot/kinguser/boi;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/boi;->a:Landroid/content/Context;

    const-string v0, "2.5.05"

    sput-object v0, Lcom/kingroot/kinguser/boi;->b:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/kingroot/kinguser/boi;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kingroot/kinguser/boi;->bFo:Landroid/os/Handler;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
