.class public Lcom/applisto/appcloner/classes/DefaultProvider;
.super Lcom/applisto/appcloner/classes/util/activity/AbstractContentProvider;
.source "DefaultProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity;,
        Lcom/applisto/appcloner/classes/DefaultProvider$DefaultReceiver;
    }
.end annotation


# static fields
.field private static final MAX_COUNT:I = 0xa

.field private static final PREF_KEY_COUNT:Ljava/lang/String; = "com.applisto.appcloner.classes.DefaultProvider.count"

.field public static final PREF_KEY_PREFIX:Ljava/lang/String; = "com.applisto.appcloner.classes."

.field private static final PREF_ORIGINAL_INSTALL_VERSION_CODE:Ljava/lang/String; = "com.applisto.appcloner.classes.originalInstallVersionCode"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/applisto/appcloner/classes/DefaultProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/AbstractContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/applisto/appcloner/classes/DefaultProvider;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/applisto/appcloner/classes/DefaultProvider;->sendBroadcastOnStart(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static getOriginalPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1558
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1559
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    .line 1560
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 1562
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.applisto.appcloner.appClonerDevDevice"

    .line 1564
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1565
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/applisto/appcloner/classes/Utils;->sDevDevice:Ljava/lang/Boolean;

    .line 1566
    sput-boolean v0, Lcom/applisto/appcloner/classes/util/Log;->sEnabled:Z

    .line 1569
    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "com.applisto.appcloner.originalPackageName"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 1572
    sget-object v0, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs invokeSecondaryInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1657
    invoke-static {p0}, Lcom/applisto/appcloner/classes/Utils;->getSecondaryClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.applisto.appcloner.classes.secondary."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 1659
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1660
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1661
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private varargs invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1652
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/DefaultProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static varargs invokeSecondaryStatic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1674
    invoke-static {p0}, Lcom/applisto/appcloner/classes/Utils;->getSecondaryClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.applisto.appcloner.classes.secondary."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 1676
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-ge v0, p1, :cond_1

    aget-object v2, p0, v0

    .line 1677
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1678
    invoke-virtual {v2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private varargs invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1669
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/DefaultProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1648
    invoke-static {p0}, Lcom/applisto/appcloner/classes/Utils;->getSecondaryClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private sendBroadcastOnStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1544
    sget-object v0, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastOnStart; componentName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1548
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1549
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1551
    sget-object p2, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 41

    move-object/from16 v1, p0

    const-string v2, ""

    const-string v3, "NO_CHANGE"

    const-string v4, "init"

    const-string v5, "NONE"

    const-string v6, "install"

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/applisto/appcloner/classes/DefaultProvider;->getContext()Landroid/content/Context;

    move-result-object v15

    const/4 v14, 0x0

    .line 64
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    if-nez v15, :cond_0

    .line 65
    sget-object v2, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    const-string v3, "onCreate; no context"

    invoke-static {v2, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v14

    .line 68
    :cond_0
    invoke-static {v15}, Lcom/applisto/appcloner/classes/DefaultProvider;->getOriginalPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 69
    sget-object v9, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onCreate; originalPackageName: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->getBuildSerial()Ljava/lang/String;

    move-result-object v9

    .line 72
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->isDevDevice()Z

    move-result v14

    .line 73
    sget-object v10, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    move-wide/from16 v17, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate; buildSerial: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", devDevice: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :try_start_0
    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 77
    new-instance v8, Ljava/util/zip/ZipFile;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "META-INF/CERT.SF"

    .line 80
    invoke-virtual {v8, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move/from16 v19, v14

    :try_start_2
    const-string v14, "UTF-8"

    invoke-direct {v9, v10, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 83
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Created-By: App Cloner"

    .line 84
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    :goto_0
    const-wide/16 v9, 0x3e8

    .line 86
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 90
    :cond_1
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 93
    :try_start_5
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v9, v0

    .line 90
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 91
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move/from16 v19, v14

    :goto_1
    move-object v7, v0

    .line 93
    :try_start_7
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V

    .line 94
    throw v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v19, v14

    :goto_2
    move-object v7, v0

    .line 96
    sget-object v8, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :goto_3
    invoke-static {v15}, Lcom/applisto/appcloner/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/applisto/appcloner/classes/CloneSettings;

    move-result-object v7

    .line 100
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->getStringsProperties()Ljava/util/Properties;

    move-result-object v8

    .line 105
    :try_start_8
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 106
    sget-object v10, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-object/from16 v21, v3

    :try_start_9
    const-string v3, "onCreate; installerPackageName: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.android.vending"

    .line 107
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    if-nez v3, :cond_3

    :try_start_a
    const-string v3, "com.amazon.venezia"

    .line 108
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.sec.android.app.samsungapps"

    .line 109
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.excelliance.multiaccount"

    .line 111
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.excelliance.multiaccounts"

    .line 113
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.trendmicro.tmas"

    .line 115
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.trendmicro.tmas64"

    .line 116
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.excean.parallelspace"

    .line 118
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    if-eqz v3, :cond_2

    goto :goto_4

    :cond_2
    move-object/from16 v22, v5

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move-object v3, v0

    move-object/from16 v22, v5

    goto/16 :goto_9

    .line 121
    :cond_3
    :goto_4
    :try_start_b
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v3}, Lcom/applisto/appcloner/classes/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "com.lbe.doubleagent.client"

    .line 127
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    if-nez v9, :cond_5

    :try_start_c
    const-string v9, "com.lody.virtual.client"

    .line 132
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "com.excelliance.kxqp.platform"

    .line 137
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "com.trendmicro.tmmssandbox"

    .line 139
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "com.estrongs.vbox.client"

    .line 141
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "com.polestar.clone.client"

    .line 145
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "com.prism.gaia.client"

    .line 147
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    if-eqz v3, :cond_4

    goto :goto_5

    :cond_4
    const/4 v14, 0x0

    goto :goto_6

    :cond_5
    :goto_5
    const/4 v14, 0x1

    :goto_6
    :try_start_d
    const-string v3, "allowInMultiAccountApps"

    .line 148
    invoke-virtual {v7, v3, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 149
    sget-object v9, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    move-object/from16 v22, v5

    :try_start_e
    const-string v5, "onCreate; multiAccountApp: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", allowInMultiAccountApps: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_6

    const-string v3, "Enable the cloning option \'Allow in multi-account apps\'."

    const/4 v5, 0x1

    .line 152
    invoke-static {v15, v3, v5}, Lcom/applisto/appcloner/classes/Utils;->showNotificationMessage(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    const/4 v14, 0x0

    :cond_6
    if-nez v14, :cond_7

    const/4 v3, 0x0

    .line 156
    invoke-static {v3}, Ljava/lang/System;->exit(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    move-object/from16 v21, v3

    :goto_7
    move-object/from16 v22, v5

    :goto_8
    move-object v3, v0

    .line 160
    :goto_9
    sget-object v5, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_a
    const/4 v3, 0x5

    :try_start_f
    const-string v9, "bundleAppData"

    .line 164
    invoke-virtual {v7, v9, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const-string v5, "restoreAppDataOnEveryStart"

    .line 165
    invoke-virtual {v7, v5, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v14, "AppData"

    new-array v10, v3, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v15, v10, v16

    .line 167
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v20, 0x1

    aput-object v9, v10, v20

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v9, 0x2

    aput-object v5, v10, v9

    const/4 v5, 0x3

    aput-object v11, v10, v5

    const/4 v5, 0x4

    aput-object v8, v10, v5

    .line 166
    invoke-direct {v1, v14, v4, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v5, v0

    .line 169
    sget-object v9, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v9, v5}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    :goto_b
    invoke-static {v15}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 176
    :try_start_10
    invoke-virtual {v15}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "MontserratSans.otf"

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    const/4 v10, 0x1

    .line 175
    invoke-static {v9, v10}, Lcom/applisto/appcloner/classes/Utils;->readFully(Ljava/io/InputStream;Z)[B

    move-result-object v9

    const/4 v10, 0x2

    .line 177
    invoke-static {v9, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    const-string v10, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkUKNyxB+D5EkRPw+KHangPP7ZaCQFF7A0HzrsT5qQ+vOejCW2jofBcJe2auLrMdVG+sIwGzAXYPzO3PAWz70ErVPl3DfHoogawb87D5zk2M8LTVQ6FxvR43LeMIm4qvtLAomA05X7VFbusGEDsCI3B7SAIAhrsBoenvjEdUSIgtK0AKC/Bzm4/p9tXDEGHEQyR4D38YQB2jsPS6asWlzyeX6ceJTahQPjBG3pwm8g9/wt0TWdk8lLYk2LKNqQlONbmao/xOc+OB+ZrSOQehGRtDGQ9ZlrvR9hEkWDoNPe4uPEhg8ITCVHgouc/jvmHL+n2aX2XwxyquMm+D3oy3lewIDAQAB"

    .line 178
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_c

    .line 179
    :cond_8
    new-instance v9, Ljava/lang/Exception;

    invoke-direct {v9}, Ljava/lang/Exception;-><init>()V

    throw v9
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    :catch_6
    :try_start_11
    const-string v9, "com.applisto.appcloner.classes.DefaultProvider.count"

    const/4 v10, 0x0

    .line 184
    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    .line 185
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v14, "com.applisto.appcloner.classes.DefaultProvider.count"

    invoke-interface {v10, v14, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    const/16 v10, 0xa

    if-lt v9, v10, :cond_9

    .line 189
    :try_start_12
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity;

    invoke-direct {v9, v15, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v10, 0x10000000

    .line 190
    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 191
    invoke-virtual {v15, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    goto :goto_c

    :catch_7
    const/4 v9, 0x1

    .line 193
    :try_start_13
    invoke-static {v9}, Ljava/lang/System;->exit(I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    :catch_8
    :cond_9
    :goto_c
    :try_start_14
    const-string v9, "com.applisto.appcloner.classes.originalInstallVersionCode"

    const/4 v10, 0x0

    .line 201
    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 202
    sget-object v10, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate; originalInstallVersionCode: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_a

    .line 204
    invoke-static {v15}, Lcom/applisto/appcloner/classes/Utils;->getApplicationVersionCode(Landroid/content/Context;)I

    move-result v3

    .line 205
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v9, "com.applisto.appcloner.classes.originalInstallVersionCode"

    invoke-interface {v5, v9, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    move-object v3, v0

    .line 208
    sget-object v5, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_d
    const/high16 v3, 0x3f800000    # 1.0f

    :try_start_15
    const-string v5, "language"

    .line 213
    invoke-virtual {v7, v5, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "densityDpiScale"

    .line 214
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    const-string v10, "fontScale"

    .line 215
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v7, v10, v14}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    const-string v14, "hideSimOperatorInfo"

    .line 216
    invoke-virtual {v7, v14, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .line 217
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_c

    cmpl-float v27, v9, v3

    if-nez v27, :cond_c

    cmpl-float v27, v10, v3

    if-nez v27, :cond_c

    if-eqz v14, :cond_b

    goto :goto_e

    :cond_b
    move-object/from16 v28, v2

    move-object/from16 v29, v4

    goto :goto_10

    :cond_c
    :goto_e
    const-string v3, "UpdateConfiguration"
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    move-object/from16 v28, v2

    move-object/from16 v29, v4

    const/4 v2, 0x5

    :try_start_16
    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v15, v4, v2

    const/4 v2, 0x1

    aput-object v5, v4, v2

    .line 221
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v4, v5

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v4, v5

    invoke-direct {v1, v3, v6, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    goto :goto_10

    :catchall_4
    move-exception v0

    goto :goto_f

    :catchall_5
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v29, v4

    :goto_f
    move-object v2, v0

    .line 224
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    :goto_10
    new-instance v2, Lcom/applisto/appcloner/classes/CrashHandler;

    invoke-direct {v2, v7}, Lcom/applisto/appcloner/classes/CrashHandler;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v15}, Lcom/applisto/appcloner/classes/CrashHandler;->install(Landroid/content/Context;)V

    .line 228
    new-instance v2, Lcom/applisto/appcloner/classes/ToastFilter;

    invoke-direct {v2, v7}, Lcom/applisto/appcloner/classes/ToastFilter;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v15}, Lcom/applisto/appcloner/classes/ToastFilter;->install(Landroid/content/Context;)V

    .line 229
    new-instance v2, Lcom/applisto/appcloner/classes/BundleFilesDirectories;

    invoke-direct {v2, v7}, Lcom/applisto/appcloner/classes/BundleFilesDirectories;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v15}, Lcom/applisto/appcloner/classes/BundleFilesDirectories;->install(Landroid/content/Context;)V

    .line 230
    new-instance v2, Lcom/applisto/appcloner/classes/BundleObb;

    invoke-direct {v2, v7}, Lcom/applisto/appcloner/classes/BundleObb;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v15}, Lcom/applisto/appcloner/classes/BundleObb;->install(Landroid/content/Context;)V

    .line 231
    new-instance v2, Lcom/applisto/appcloner/classes/PressBackAgainToExit;

    invoke-direct {v2, v7}, Lcom/applisto/appcloner/classes/PressBackAgainToExit;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v15, v8}, Lcom/applisto/appcloner/classes/PressBackAgainToExit;->install(Landroid/content/Context;Ljava/util/Properties;)V

    .line 232
    new-instance v2, Lcom/applisto/appcloner/classes/ConfirmExit;

    invoke-direct {v2, v7}, Lcom/applisto/appcloner/classes/ConfirmExit;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v8}, Lcom/applisto/appcloner/classes/ConfirmExit;->install(Ljava/util/Properties;)V

    .line 233
    new-instance v2, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;

    invoke-direct {v2, v7}, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2}, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->install()V

    .line 234
    new-instance v2, Lcom/applisto/appcloner/classes/WifiControls;

    invoke-direct {v2, v7}, Lcom/applisto/appcloner/classes/WifiControls;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v15}, Lcom/applisto/appcloner/classes/WifiControls;->install(Landroid/content/Context;)V

    .line 235
    new-instance v2, Lcom/applisto/appcloner/classes/BluetoothControls;

    invoke-direct {v2, v7}, Lcom/applisto/appcloner/classes/BluetoothControls;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2}, Lcom/applisto/appcloner/classes/BluetoothControls;->install()V

    .line 236
    new-instance v2, Lcom/applisto/appcloner/classes/InterruptionFilterControls;

    invoke-direct {v2, v7}, Lcom/applisto/appcloner/classes/InterruptionFilterControls;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v8}, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->install(Ljava/util/Properties;)V

    .line 237
    new-instance v2, Lcom/applisto/appcloner/classes/NotificationOptions;

    invoke-direct {v2, v7}, Lcom/applisto/appcloner/classes/NotificationOptions;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v15}, Lcom/applisto/appcloner/classes/NotificationOptions;->install(Landroid/content/Context;)V

    .line 238
    new-instance v2, Lcom/applisto/appcloner/classes/AutoRotateControls;

    invoke-direct {v2, v7}, Lcom/applisto/appcloner/classes/AutoRotateControls;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2}, Lcom/applisto/appcloner/classes/AutoRotateControls;->install()V

    .line 239
    new-instance v2, Lcom/applisto/appcloner/classes/FacebookLoginBehavior;

    invoke-direct {v2, v7}, Lcom/applisto/appcloner/classes/FacebookLoginBehavior;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2}, Lcom/applisto/appcloner/classes/FacebookLoginBehavior;->install()V

    .line 240
    new-instance v2, Lcom/applisto/appcloner/classes/OpenLinksWith;

    invoke-direct {v2, v7}, Lcom/applisto/appcloner/classes/OpenLinksWith;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v15}, Lcom/applisto/appcloner/classes/OpenLinksWith;->install(Landroid/content/Context;)V

    const-string v2, "com.tokopedia.tkpd"

    .line 242
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 243
    new-instance v2, Lcom/applisto/appcloner/classes/Signatures;

    invoke-direct {v2, v7}, Lcom/applisto/appcloner/classes/Signatures;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v15}, Lcom/applisto/appcloner/classes/Signatures;->install(Landroid/content/Context;)V

    .line 246
    :cond_d
    new-instance v2, Lcom/applisto/appcloner/classes/DisableClipboardAccess;

    invoke-direct {v2, v7}, Lcom/applisto/appcloner/classes/DisableClipboardAccess;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v15, v8}, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->install(Landroid/content/Context;Ljava/util/Properties;)V

    .line 247
    new-instance v2, Lcom/applisto/appcloner/classes/ShowOnLockScreen;

    invoke-direct {v2, v7}, Lcom/applisto/appcloner/classes/ShowOnLockScreen;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2}, Lcom/applisto/appcloner/classes/ShowOnLockScreen;->install()V

    .line 248
    new-instance v2, Lcom/applisto/appcloner/classes/PersistentApp;

    invoke-direct {v2, v7}, Lcom/applisto/appcloner/classes/PersistentApp;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v15}, Lcom/applisto/appcloner/classes/PersistentApp;->install(Landroid/content/Context;)V

    .line 249
    new-instance v2, Lcom/applisto/appcloner/classes/AutoPressButtons;

    invoke-direct {v2, v7}, Lcom/applisto/appcloner/classes/AutoPressButtons;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2}, Lcom/applisto/appcloner/classes/AutoPressButtons;->install()V

    .line 250
    new-instance v2, Lcom/applisto/appcloner/classes/PictureInPicture;

    invoke-direct {v2, v7}, Lcom/applisto/appcloner/classes/PictureInPicture;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2}, Lcom/applisto/appcloner/classes/PictureInPicture;->install()V

    .line 251
    new-instance v2, Lcom/applisto/appcloner/classes/LogcatViewer;

    invoke-direct {v2, v7}, Lcom/applisto/appcloner/classes/LogcatViewer;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v15}, Lcom/applisto/appcloner/classes/LogcatViewer;->install(Landroid/content/Context;)V

    :try_start_17
    const-string v2, "longPressTimeout"

    .line 256
    invoke-virtual {v7, v2, v13}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_e

    const-string v3, "LongPressTimeout"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v5, v4

    .line 258
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v5, v4

    invoke-direct {v1, v3, v6, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    const-string v2, "passwordProtectApp"

    .line 262
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "stealthMode"

    .line 263
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 264
    :cond_f
    new-instance v2, Lcom/applisto/appcloner/classes/PasswordProtectApp;

    invoke-direct {v2}, Lcom/applisto/appcloner/classes/PasswordProtectApp;-><init>()V

    invoke-virtual {v2}, Lcom/applisto/appcloner/classes/PasswordProtectApp;->install()V

    :cond_10
    const-string v2, "rotationLock"

    move-object/from16 v3, v22

    .line 268
    invoke-virtual {v7, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "LANDSCAPE"

    .line 269
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "PORTRAIT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_11
    const-string v4, "RotationLock"

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v15, v9, v5

    const/4 v5, 0x1

    aput-object v2, v9, v5

    .line 270
    invoke-direct {v1, v4, v6, v9}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    const-string v4, "forceRotationLockUsingOverlay"

    .line 274
    invoke-virtual {v7, v4, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "LANDSCAPE"

    .line 276
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "PORTRAIT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_13
    const-string v4, "com.applisto.appcloner.classes.secondary.ForceRotationLockUsingOverlay"

    .line 277
    invoke-static {v15, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 278
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    const/4 v14, 0x0

    aput-object v9, v10, v14

    const-class v9, Ljava/lang/String;

    const/16 v20, 0x1

    aput-object v9, v10, v20
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_21

    move-object/from16 v9, v29

    :try_start_18
    invoke-virtual {v5, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object/from16 v22, v3

    const/4 v10, 0x2

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v15, v3, v14

    aput-object v2, v3, v20

    .line 279
    invoke-virtual {v5, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_14
    move-object/from16 v22, v3

    move-object/from16 v9, v29

    :goto_11
    const-string v2, "floatingApp"

    .line 283
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-eqz v2, :cond_15

    const-string v2, "statusBarColor"

    .line 285
    invoke-virtual {v7, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "densityDpiScale"

    const/high16 v10, 0x3f800000    # 1.0f

    .line 286
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v7, v5, v14}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const-string v14, "floatingAppOpacity"

    .line 287
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v7, v14, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const-string v10, "floatingAppNotchMargin"

    .line 288
    invoke-virtual {v7, v10, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const-string v14, "floating.FloatingApp"

    move-object/from16 v30, v13

    new-array v13, v3, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v15, v13, v16

    const/16 v20, 0x1

    aput-object v2, v13, v20

    .line 290
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v13, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v13, v4

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v13, v4

    const/4 v2, 0x5

    aput-object v8, v13, v2

    .line 289
    invoke-direct {v1, v14, v6, v13}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12

    :cond_15
    move-object/from16 v30, v13

    :goto_12
    const-string v2, "multiWindowNoPause"

    .line 294
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "com.applisto.appcloner.classes.secondary.MultiWindowNoPause"

    .line 296
    invoke-static {v15, v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 297
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/Class;

    const-class v13, Landroid/content/Context;

    const/4 v14, 0x0

    aput-object v13, v10, v14

    invoke-virtual {v4, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v15, v10, v14

    invoke-virtual {v4, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    const-string v2, "immersiveMode"

    .line 301
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v4, "immersiveModeIgnoreNotch"

    .line 302
    invoke-virtual {v7, v4, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "transparentNavigationBar"

    .line 303
    invoke-virtual {v7, v5, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v10, "preventImmersiveMode"

    .line 304
    invoke-virtual {v7, v10, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v2, :cond_17

    if-eqz v10, :cond_18

    :cond_17
    const-string v13, "ImmersiveMode"

    const/4 v14, 0x4

    new-array v3, v14, [Ljava/lang/Object;

    .line 307
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v14, 0x0

    aput-object v2, v3, v14

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    .line 306
    invoke-direct {v1, v13, v6, v3}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    const-string v2, "taskerStartTaskName"

    const/4 v3, 0x0

    .line 311
    invoke-virtual {v7, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "taskerStopTaskName"

    .line 312
    invoke-virtual {v7, v4, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 313
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_19
    const-string v3, "com.applisto.appcloner.classes.secondary.ExecuteTaskerTasks"

    .line 314
    invoke-static {v15, v3}, Lcom/applisto/appcloner/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 315
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v10, 0x3

    new-array v13, v10, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const-class v10, Ljava/lang/String;

    const/4 v14, 0x1

    aput-object v10, v13, v14

    const-class v10, Ljava/lang/String;

    const/4 v14, 0x2

    aput-object v10, v13, v14

    invoke-virtual {v5, v9, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v10, 0x3

    new-array v13, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v15, v13, v10

    const/4 v10, 0x1

    aput-object v2, v13, v10

    aput-object v4, v13, v14

    .line 316
    invoke-virtual {v5, v3, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    const-string v2, "makeDebuggable"

    .line 320
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "waitForDebugger"

    .line 322
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "com.applisto.appcloner.classes.secondary.MakeDebuggable"

    .line 323
    invoke-static {v15, v3}, Lcom/applisto/appcloner/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 324
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x2

    new-array v10, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v13, 0x0

    aput-object v5, v10, v13

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x1

    aput-object v5, v10, v14

    invoke-virtual {v4, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x2

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v15, v10, v13

    .line 325
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v10, v14

    invoke-virtual {v4, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    const-string v2, "privateAccounts"

    .line 329
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const-string v2, "com.insightly.droid"

    .line 330
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v14, 0x1

    :cond_1c
    if-eqz v14, :cond_1d

    const-string v2, "com.applisto.appcloner.classes.secondary.PrivateAccounts"

    .line 334
    invoke-static {v15, v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 335
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    const/4 v13, 0x0

    aput-object v10, v5, v13

    invoke-virtual {v3, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v15, v5, v13

    .line 336
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    const-string v2, "disableShareActions"

    .line 340
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, "DisableShareActions"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v4, v3

    const/4 v3, 0x1

    aput-object v8, v4, v3

    .line 341
    invoke-direct {v1, v2, v6, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    const-string v2, "disableWakeLocks"

    .line 345
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "com.applisto.appcloner.classes.secondary.DisableWakeLocks"

    .line 347
    invoke-static {v15, v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 348
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    const/4 v13, 0x0

    aput-object v10, v5, v13

    invoke-virtual {v3, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v15, v5, v13

    .line 349
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    const-string v2, "disableContactsAccess"

    .line 353
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "com.applisto.appcloner.classes.secondary.DisableContactsAccess"

    .line 355
    invoke-static {v15, v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 356
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    const/4 v13, 0x0

    aput-object v10, v5, v13

    invoke-virtual {v3, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v15, v5, v13

    .line 357
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    const-string v2, "disableCalendarAccess"

    .line 361
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, "com.applisto.appcloner.classes.secondary.DisableCalendarAccess"

    .line 363
    invoke-static {v15, v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 364
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    const/4 v13, 0x0

    aput-object v10, v5, v13

    invoke-virtual {v3, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v15, v5, v13

    .line 365
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    const-string v2, "disableCallLogSmsAccess"

    .line 369
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "com.applisto.appcloner.classes.secondary.DisableCallLogAccess"

    .line 372
    invoke-static {v15, v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 373
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    const/4 v13, 0x0

    aput-object v10, v5, v13

    invoke-virtual {v3, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v15, v5, v13

    .line 374
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "com.applisto.appcloner.classes.secondary.DisableSmsAccess"

    .line 377
    invoke-static {v15, v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 378
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    const/4 v13, 0x0

    aput-object v10, v5, v13

    invoke-virtual {v3, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v15, v5, v13

    .line 379
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    const-string v2, "deviceLockDeviceIdentifiers"

    .line 384
    invoke-virtual {v7, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 385
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, "DeviceLock"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    const/4 v2, 0x1

    aput-object v8, v5, v2

    .line 386
    invoke-direct {v1, v3, v6, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    :cond_23
    const-string v2, "ForceDeviceLock"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v4, v3

    const/4 v3, 0x1

    aput-object v8, v4, v3

    .line 388
    invoke-direct {v1, v2, v6, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_13
    const-string v2, "changeAndroidId"

    .line 392
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "changeAndroidIdSeed"

    move-object/from16 v4, v30

    .line 393
    invoke-virtual {v7, v3, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v5, "randomAndroidId"

    .line 394
    invoke-virtual {v7, v5, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v10, "customAndroidId"

    const/4 v13, 0x0

    .line 395
    invoke-virtual {v7, v10, v13}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v2, :cond_24

    const-string v2, "ChangeAndroidId"

    const/4 v13, 0x4

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v15, v14, v13

    .line 398
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v13, 0x1

    aput-object v3, v14, v13

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v14, v5

    const/4 v3, 0x3

    aput-object v10, v14, v3

    .line 397
    invoke-direct {v1, v2, v6, v14}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_24
    const-string v2, "changeImei"

    move-object/from16 v3, v21

    .line 402
    invoke-virtual {v7, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "changeImsi"

    .line 403
    invoke-virtual {v7, v5, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "hideSimOperatorInfo"

    .line 404
    invoke-virtual {v7, v10, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 405
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    if-eqz v10, :cond_25

    goto :goto_14

    :cond_25
    move-object/from16 v32, v4

    move-object/from16 v33, v8

    move-object/from16 v30, v11

    move-object/from16 v34, v28

    move-object/from16 v28, v9

    goto :goto_15

    :cond_26
    :goto_14
    const-string v13, "changeImeiRandomizeClone"

    .line 406
    invoke-virtual {v7, v13, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const-string v14, "changeImsiRandomizeClone"

    .line 407
    invoke-virtual {v7, v14, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_20

    move-object/from16 v30, v11

    :try_start_19
    const-string v11, "customImei"

    move-object/from16 v32, v4

    move-object/from16 v4, v28

    .line 408
    invoke-virtual {v7, v11, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1f

    move-object/from16 v28, v9

    :try_start_1a
    const-string v9, "customImsi"

    .line 409
    invoke-virtual {v7, v9, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v33, v8

    const-string v8, "ChangeImeiImsiHideSimOperatorInfo"

    move-object/from16 v34, v4

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v15, v4, v16

    const/16 v20, 0x1

    aput-object v2, v4, v20

    .line 411
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v13, 0x2

    aput-object v2, v4, v13

    const/4 v2, 0x3

    aput-object v11, v4, v2

    const/4 v2, 0x4

    aput-object v5, v4, v2

    .line 412
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v4, v5

    const/4 v2, 0x6

    aput-object v9, v4, v2

    .line 413
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x7

    aput-object v2, v4, v5

    .line 410
    invoke-direct {v1, v8, v6, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_15
    const-string v2, "changeWifiMacAddress"

    .line 417
    invoke-virtual {v7, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 418
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    const-string v4, "changeWifiMacAddressRandomizeClone"

    .line 419
    invoke-virtual {v7, v4, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "customWifiMacAddress"

    move-object/from16 v8, v34

    .line 420
    invoke-virtual {v7, v5, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "ChangeWifiMacAddress"

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v15, v11, v10

    const/4 v10, 0x1

    aput-object v2, v11, v10

    .line 421
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v11, v4

    const/4 v2, 0x3

    aput-object v5, v11, v2

    invoke-direct {v1, v9, v6, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "hideWifiInfo"

    .line 422
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, "HideWifiInfo"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v5, v4

    .line 424
    invoke-direct {v1, v2, v6, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    :cond_27
    move-object/from16 v8, v34

    :cond_28
    :goto_16
    const-string v2, "changeBluetoothMacAddress"

    .line 429
    invoke-virtual {v7, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 430
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    const-string v4, "changeBluetoothMacAddressRandomizeClone"

    .line 431
    invoke-virtual {v7, v4, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "customBluetoothMacAddress"

    .line 432
    invoke-virtual {v7, v5, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "ChangeBluetoothMacAddress"

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v15, v11, v10

    const/4 v10, 0x1

    aput-object v2, v11, v10

    .line 433
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v11, v4

    const/4 v2, 0x3

    aput-object v5, v11, v2

    invoke-direct {v1, v9, v6, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_29
    const-string v2, "spoofLocationLatitude"

    const/4 v4, 0x0

    .line 437
    invoke-virtual {v7, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v2

    const-string v5, "spoofLocationLongitude"

    .line 438
    invoke-virtual {v7, v5, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v5

    if-eqz v2, :cond_2a

    if-eqz v5, :cond_2a

    const-string v4, "spoofLocationInterval"

    const/16 v9, 0xa

    .line 440
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v9, "SpoofLocation"

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v15, v11, v10

    const/4 v10, 0x1

    aput-object v2, v11, v10

    const/4 v2, 0x2

    aput-object v5, v11, v2

    .line 441
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v11, v4

    invoke-direct {v1, v9, v6, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "gpsJoystick"

    .line 444
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string v2, "gpsJoystickHorizontalAlignment"

    const-string v4, "LEFT"

    .line 445
    invoke-virtual {v7, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "gpsJoystickVerticalAlignment"

    const-string v5, "BOTTOM"

    .line 446
    invoke-virtual {v7, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "gpsJoystickSize"

    const-string v9, "MEDIUM"

    .line 447
    invoke-virtual {v7, v5, v9}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "gpsJoystickColor"

    const v10, -0x777778

    .line 448
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "gpsJoystickOpacity"

    const/high16 v11, 0x3f800000    # 1.0f

    .line 449
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v7, v10, v13}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    const-string v11, "gpsJoystickMaxSpeed"

    const/high16 v13, 0x3fc00000    # 1.5f

    .line 450
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v7, v11, v13}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    const-string v13, "GpsJoystick"

    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/16 v20, 0x1

    aput-object v2, v14, v20

    const/4 v2, 0x2

    aput-object v4, v14, v2

    const/4 v2, 0x3

    aput-object v5, v14, v2

    .line 453
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v14, v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v14, v4

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v14, v4

    const/4 v2, 0x7

    aput-object v33, v14, v2

    .line 451
    invoke-direct {v1, v13, v6, v14}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2a
    const-string v2, "androidVersionSdk"

    const/4 v4, 0x0

    .line 458
    invoke-virtual {v7, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "androidVersionSdkInt"

    .line 459
    invoke-virtual {v7, v5, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "androidVersionPreviewSdkInt"

    .line 460
    invoke-virtual {v7, v9, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "androidVersionCodename"

    .line 461
    invoke-virtual {v7, v10, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "androidVersionIncremental"

    .line 462
    invoke-virtual {v7, v11, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "androidVersionRelease"

    .line 463
    invoke-virtual {v7, v13, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "androidVersionBaseOs"

    .line 464
    invoke-virtual {v7, v14, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v34, v8

    const-string v8, "androidVersionSecurityPatch"

    .line 465
    invoke-virtual {v7, v8, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 467
    sget-object v4, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    move-object/from16 v35, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1e

    :try_start_1b
    const-string v1, "onCreate; androidVersionSdk: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidVersionSdkInt: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidVersionPreviewSdkInt: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidVersionCodename: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidVersionIncremental: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidVersionRelease: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidVersionBaseOs: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidVersionSecurityPatch: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1d

    if-eqz v1, :cond_2c

    .line 479
    :try_start_1c
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 480
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 481
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 482
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 483
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 484
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 485
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    if-nez v1, :cond_2b

    goto :goto_18

    :cond_2b
    move-object/from16 v36, v6

    move-object/from16 v6, v28

    goto/16 :goto_19

    :catchall_6
    move-exception v0

    move-object/from16 v2, p0

    move-object v1, v0

    move-object v5, v6

    move-object/from16 v39, v28

    :goto_17
    move-object/from16 v6, v30

    goto/16 :goto_43

    :cond_2c
    :goto_18
    :try_start_1d
    const-string v1, "com.applisto.appcloner.classes.secondary.AndroidVersion"

    .line 487
    invoke-static {v15, v1}, Lcom/applisto/appcloner/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 488
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Class;

    const-class v36, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v36, v4, v16

    const-class v36, Ljava/lang/String;

    const/16 v20, 0x1

    aput-object v36, v4, v20

    const-class v36, Ljava/lang/String;

    const/16 v25, 0x2

    aput-object v36, v4, v25

    const-class v36, Ljava/lang/String;

    const/16 v24, 0x3

    aput-object v36, v4, v24

    const-class v36, Ljava/lang/String;

    const/16 v23, 0x4

    aput-object v36, v4, v23

    const-class v36, Ljava/lang/String;

    const/16 v26, 0x5

    aput-object v36, v4, v26

    const-class v36, Ljava/lang/String;

    const/16 v31, 0x6

    aput-object v36, v4, v31

    const-class v36, Ljava/lang/String;

    const/16 v21, 0x7

    aput-object v36, v4, v21

    const/16 v36, 0x8

    const-class v37, Ljava/lang/String;

    aput-object v37, v4, v36
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1d

    move-object/from16 v36, v6

    move-object/from16 v6, v28

    :try_start_1e
    invoke-virtual {v3, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v15, v4, v16

    const/16 v20, 0x1

    aput-object v2, v4, v20

    const/4 v2, 0x2

    aput-object v5, v4, v2

    const/4 v2, 0x3

    aput-object v9, v4, v2

    const/4 v2, 0x4

    aput-object v10, v4, v2

    const/4 v2, 0x5

    aput-object v11, v4, v2

    const/4 v2, 0x6

    aput-object v13, v4, v2

    const/4 v2, 0x7

    aput-object v14, v4, v2

    const/16 v2, 0x8

    aput-object v8, v4, v2

    .line 490
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_19
    const-string v1, "buildPropsManufacturer"

    const/4 v2, 0x0

    .line 503
    invoke-virtual {v7, v1, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "buildPropsBrand"

    .line 504
    invoke-virtual {v7, v3, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "buildPropsModel"

    .line 505
    invoke-virtual {v7, v4, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "buildPropsProduct"

    .line 506
    invoke-virtual {v7, v5, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "buildPropsDevice"

    .line 507
    invoke-virtual {v7, v8, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "buildPropsBoard"

    .line 508
    invoke-virtual {v7, v9, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "buildPropsHardware"

    .line 509
    invoke-virtual {v7, v10, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "buildPropsBootloader"

    .line 510
    invoke-virtual {v7, v11, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "buildPropsFingerprint"

    .line 511
    invoke-virtual {v7, v13, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "randomizeBuildProps"

    .line 513
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    .line 514
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1c

    if-eqz v14, :cond_2d

    :try_start_1f
    const-string v1, "buildPropsManufacturer"

    .line 515
    invoke-static {v15, v1}, Lcom/applisto/appcloner/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "buildPropsBrand"

    .line 516
    invoke-static {v15, v3}, Lcom/applisto/appcloner/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "buildPropsModel"

    .line 517
    invoke-static {v15, v4}, Lcom/applisto/appcloner/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "buildPropsProduct"

    .line 518
    invoke-static {v15, v5}, Lcom/applisto/appcloner/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "buildPropsDevice"

    .line 519
    invoke-static {v15, v8}, Lcom/applisto/appcloner/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "buildPropsBoard"

    .line 520
    invoke-static {v15, v9}, Lcom/applisto/appcloner/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "buildPropsHardware"

    .line 521
    invoke-static {v15, v10}, Lcom/applisto/appcloner/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "buildPropsBootloader"

    .line 522
    invoke-static {v15, v11}, Lcom/applisto/appcloner/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "buildPropsFingerprint"

    .line 523
    invoke-static {v15, v13}, Lcom/applisto/appcloner/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    goto :goto_1b

    :catchall_7
    move-exception v0

    move-object/from16 v2, p0

    move-object v1, v0

    move-object/from16 v39, v6

    move-object/from16 v6, v30

    :goto_1a
    move-object/from16 v5, v36

    goto/16 :goto_43

    .line 526
    :cond_2d
    :goto_1b
    :try_start_20
    sget-object v14, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    move-object/from16 v28, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1c

    move-object/from16 v37, v6

    :try_start_21
    const-string v6, "onCreate; buildPropsManufacturer: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", buildPropsBrand: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", buildPropsModel: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", buildPropsProduct: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", buildPropsDevice: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", buildPropsBoard: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", buildPropsHardware: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", buildPropsBootloader: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", buildPropsFingerprint: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1b

    if-eqz v2, :cond_2f

    .line 538
    :try_start_22
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 539
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 540
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 541
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 542
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 543
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 544
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 545
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    if-nez v2, :cond_2e

    goto :goto_1c

    :cond_2e
    move-object/from16 v1, p0

    move-object/from16 v3, v36

    goto :goto_1d

    :catchall_8
    move-exception v0

    move-object/from16 v2, p0

    move-object v1, v0

    move-object/from16 v6, v30

    move-object/from16 v5, v36

    move-object/from16 v39, v37

    goto/16 :goto_43

    :cond_2f
    :goto_1c
    :try_start_23
    const-string v2, "BuildProps"

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v15, v6, v14

    const/4 v14, 0x1

    aput-object v1, v6, v14

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v4, v6, v1

    const/4 v1, 0x4

    aput-object v5, v6, v1

    const/4 v1, 0x5

    aput-object v8, v6, v1

    const/4 v1, 0x6

    aput-object v9, v6, v1

    const/4 v1, 0x7

    aput-object v10, v6, v1

    const/16 v1, 0x8

    aput-object v11, v6, v1

    const/16 v1, 0x9

    aput-object v13, v6, v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1b

    move-object/from16 v1, p0

    move-object/from16 v3, v36

    .line 546
    :try_start_24
    invoke-direct {v1, v2, v3, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1d
    const-string v2, "httpProxy"

    .line 560
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "httpProxyHost"

    const/4 v4, 0x0

    .line 562
    invoke-virtual {v7, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "httpProxyPort"

    move-object/from16 v5, v32

    .line 563
    invoke-virtual {v7, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 564
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_31

    if-eqz v4, :cond_31

    const-string v6, "httpProxyUsername"

    const/4 v8, 0x0

    .line 565
    invoke-virtual {v7, v6, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "httpProxyPassword"

    .line 566
    invoke-virtual {v7, v9, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v8, "HttpProxy"

    const/4 v10, 0x5

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v15, v11, v10

    const/4 v10, 0x1

    aput-object v2, v11, v10

    .line 568
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v11, v4

    const/4 v2, 0x3

    aput-object v6, v11, v2

    const/4 v2, 0x4

    aput-object v9, v11, v2

    .line 567
    invoke-direct {v1, v8, v3, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1e

    :cond_30
    move-object/from16 v5, v32

    :cond_31
    :goto_1e
    const-string v2, "socksProxy"

    .line 573
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "socksProxyHost"

    const/4 v4, 0x0

    .line 575
    invoke-virtual {v7, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "socksProxyPort"

    .line 576
    invoke-virtual {v7, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 577
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_32

    if-eqz v4, :cond_32

    const-string v6, "socksProxyUsername"

    const/4 v8, 0x0

    .line 578
    invoke-virtual {v7, v6, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "socksProxyPassword"

    .line 579
    invoke-virtual {v7, v9, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v8, "SocksProxy"

    const/4 v10, 0x5

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v15, v11, v10

    const/4 v10, 0x1

    aput-object v2, v11, v10

    .line 581
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v11, v4

    const/4 v2, 0x3

    aput-object v6, v11, v2

    const/4 v2, 0x4

    aput-object v9, v11, v2

    .line 580
    invoke-direct {v1, v8, v3, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_32
    const-string v2, "showIpInfo"

    .line 586
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "ShowIpInfo"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v6, v4

    const/4 v4, 0x1

    aput-object v33, v6, v4

    .line 587
    invoke-direct {v1, v2, v3, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_33
    const-string v2, "disableAllNetworking"

    .line 591
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_34

    const-string v2, "disableAllNetworkingDisableDelay"

    .line 593
    invoke-virtual {v7, v2, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v4, "disableAllNetworkingEnableDelay"

    .line 594
    invoke-virtual {v7, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v6, "DisableAllNetworking"

    const/4 v8, 0x4

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v15, v9, v8

    .line 595
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x1

    aput-object v2, v9, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v9, v4

    const/4 v2, 0x3

    aput-object v33, v9, v2

    invoke-direct {v1, v6, v3, v9}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_34
    const-string v2, "disableBackgroundNetworking"

    .line 599
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "com.applisto.appcloner.classes.secondary.DisableBackgroundNetworking"

    .line 601
    invoke-static {v15, v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 602
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v9, v8, v10
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1a

    move-object/from16 v9, v37

    :try_start_25
    invoke-virtual {v4, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v15, v8, v10

    .line 603
    invoke-virtual {v4, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_35
    move-object/from16 v9, v37

    :goto_1f
    const-string v2, "disableNetworkingWhenScreenOff"

    .line 607
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v2, "DisableNetworkingWhenScreenOff"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v6, v4

    const/4 v4, 0x1

    aput-object v33, v6, v4

    .line 608
    invoke-direct {v1, v2, v3, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_36
    const-string v2, "disableNetworkingWithoutVpn"

    .line 612
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v2, "DisableNetworkingWithoutVpn"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v6, v4

    const/4 v4, 0x1

    aput-object v33, v6, v4

    .line 613
    invoke-direct {v1, v2, v3, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_37
    const-string v2, "disableMobileData"

    .line 617
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "DisableMobileData"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v6, v4

    const/4 v4, 0x1

    aput-object v33, v6, v4

    .line 619
    invoke-direct {v1, v2, v3, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_38
    const-string v2, "disableInAppSearch"

    .line 623
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const-string v2, "com.contextlogic.wish"
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_19

    move-object/from16 v4, v30

    .line 624
    :try_start_26
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    const/4 v14, 0x1

    :cond_39
    if-eqz v14, :cond_3a

    const-string v2, "com.applisto.appcloner.classes.secondary.DisableInAppSearch"

    .line 628
    invoke-static {v15, v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 629
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    const/4 v13, 0x0

    aput-object v11, v10, v13

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v15, v10, v13

    .line 630
    invoke-virtual {v6, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    const-string v2, "makeWatchApp"

    .line 634
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3b

    const-string v2, "com.applisto.appcloner.classes.secondary.NullSearchManager"

    .line 636
    invoke-static {v15, v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 637
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    const/4 v13, 0x0

    aput-object v11, v10, v13

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v15, v10, v13

    .line 638
    invoke-virtual {v6, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    const-string v2, "activityTransitions"

    move-object/from16 v6, v35

    .line 642
    invoke-virtual {v7, v2, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "ActivityTransitions"

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v15, v10, v8

    .line 643
    invoke-direct {v1, v2, v3, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3c
    const-string v2, "longPressBackAction"

    move-object/from16 v8, v22

    .line 647
    invoke-virtual {v7, v2, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 648
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3d

    const-string v10, "longPressBackActionParam"

    const/4 v11, 0x0

    .line 649
    invoke-virtual {v7, v10, v11}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "LongPressBackAction"

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v14, v13

    const/4 v2, 0x1

    aput-object v10, v14, v2

    .line 650
    invoke-direct {v1, v11, v3, v14}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3d
    const-string v2, "shakeAction"

    .line 656
    invoke-virtual {v7, v2, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 657
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3e

    const-string v10, "shakeActionParam"

    const/4 v11, 0x0

    .line 658
    invoke-virtual {v7, v10, v11}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "shakeSensitivity"

    const-string v13, "NORMAL"

    .line 659
    invoke-virtual {v7, v11, v13}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "ShakeAction"

    move-object/from16 v35, v6

    const/4 v14, 0x4

    new-array v6, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v15, v6, v14

    const/4 v14, 0x1

    aput-object v2, v6, v14

    const/4 v2, 0x2

    aput-object v10, v6, v2

    const/4 v2, 0x3

    aput-object v11, v6, v2

    .line 660
    invoke-direct {v1, v13, v3, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_20

    :cond_3e
    move-object/from16 v35, v6

    :goto_20
    const-string v2, "backAlwaysFinishes"

    .line 666
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3f

    const-string v2, "BackAlwaysFinishes"

    const/4 v6, 0x0

    new-array v10, v6, [Ljava/lang/Object;

    .line 667
    invoke-direct {v1, v2, v3, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    const-string v2, "fingerprintTapAction"

    .line 671
    invoke-virtual {v7, v2, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "fingerprintLongTapAction"

    .line 672
    invoke-virtual {v7, v6, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 673
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_41

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_40

    goto :goto_21

    :cond_40
    move-object/from16 v30, v5

    goto :goto_22

    :cond_41
    :goto_21
    const-string v10, "fingerprintTapActionParam"

    const/4 v11, 0x0

    .line 674
    invoke-virtual {v7, v10, v11}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "fingerprintLongTapActionParam"

    .line 676
    invoke-virtual {v7, v13, v11}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v11, "FingerprintTapAction"

    move-object/from16 v30, v5

    const/4 v14, 0x5

    new-array v5, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v15, v5, v14

    const/4 v14, 0x1

    aput-object v2, v5, v14

    const/4 v2, 0x2

    aput-object v10, v5, v2

    const/4 v2, 0x3

    aput-object v6, v5, v2

    const/4 v2, 0x4

    aput-object v13, v5, v2

    .line 678
    invoke-direct {v1, v11, v3, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_22
    const-string v2, "volumeUpKeyAction"

    .line 686
    invoke-virtual {v7, v2, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "volumeDownKeyAction"

    .line 687
    invoke-virtual {v7, v5, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "volumeUpDownKeyAction"

    .line 688
    invoke-virtual {v7, v6, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 689
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_43

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_43

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_42

    goto :goto_23

    :cond_42
    move-object/from16 v22, v8

    move-object/from16 v37, v9

    goto :goto_24

    :cond_43
    :goto_23
    const-string v10, "volumeUpKeyActionParam"

    const/4 v11, 0x0

    .line 690
    invoke-virtual {v7, v10, v11}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "volumeDownKeyActionParam"

    .line 692
    invoke-virtual {v7, v13, v11}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "volumeUpDownKeyActionParam"

    .line 694
    invoke-virtual {v7, v14, v11}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v11, "VolumeUpDownKeyAction"
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_18

    move-object/from16 v22, v8

    move-object/from16 v37, v9

    const/4 v8, 0x6

    :try_start_27
    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v9, v8

    const/4 v2, 0x1

    aput-object v10, v9, v2

    const/4 v2, 0x2

    aput-object v5, v9, v2

    const/4 v2, 0x3

    aput-object v13, v9, v2

    const/4 v2, 0x4

    aput-object v6, v9, v2

    const/4 v2, 0x5

    aput-object v14, v9, v2

    .line 696
    invoke-direct {v1, v11, v3, v9}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_24
    const-string v2, "SecurityExceptionWorkaround"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v15, v6, v5

    .line 704
    invoke-direct {v1, v2, v3, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 707
    invoke-static {v15, v4}, Lcom/applisto/appcloner/classes/LoadLibraryWorkaround;->install(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "googlePlayServicesWorkaround"

    .line 710
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const-string v2, "com.fiverr.fiverr"

    .line 711
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    const-string v2, "com.instagram.android"

    .line 712
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    const-string v2, "com.viber.voip"

    .line 713
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    const-string v2, "com.waze"

    .line 714
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    const-string v2, "com.amazon.mShop.android"

    .line 715
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    :cond_44
    const/4 v14, 0x1

    :cond_45
    if-eqz v14, :cond_46

    const-string v2, "GooglePlayServicesWorkaround"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v15, v6, v5

    .line 720
    invoke-direct {v1, v2, v3, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_46
    const-string v2, "hideGooglePlayServices"

    .line 724
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_47

    const-string v2, "com.applisto.appcloner.classes.secondary.HideGooglePlayServices"

    .line 726
    invoke-static {v15, v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 727
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v9, v8, v10
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_17

    move-object/from16 v9, v37

    :try_start_28
    invoke-virtual {v5, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v15, v8, v10

    .line 728
    invoke-virtual {v5, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :cond_47
    move-object/from16 v9, v37

    :goto_25
    const-string v2, "welcomeMessageHtml"

    const/4 v5, 0x0

    .line 732
    invoke-virtual {v7, v2, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 733
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_48

    const-string v5, "welcomeMessageMode"

    const-string v6, "DIALOG"

    .line 734
    invoke-virtual {v7, v5, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "welcomeMessageDelay"

    const/16 v8, 0x7d0

    .line 735
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v8, "WelcomeMessage"

    const/4 v10, 0x5

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v15, v11, v10

    const/4 v10, 0x1

    aput-object v5, v11, v10

    const/4 v5, 0x2

    aput-object v2, v11, v5

    .line 736
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v11, v5

    const/4 v2, 0x4

    aput-object v33, v11, v2

    invoke-direct {v1, v8, v3, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_48
    const-string v2, "incognitoMode"

    .line 740
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_49

    const-string v2, "autoIncognitoMode"

    .line 742
    invoke-virtual {v7, v2, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v5, "IncognitoMode"

    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v15, v8, v6

    .line 743
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v8, v6

    const/4 v2, 0x2

    aput-object v33, v8, v2

    invoke-direct {v1, v5, v3, v8}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_49
    const-string v2, "volumeRockerLocker"

    move-object/from16 v5, v22

    .line 747
    invoke-virtual {v7, v2, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 748
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4a

    const-string v6, "com.applisto.appcloner.classes.secondary.VolumeRockerLocker"

    .line 749
    invoke-static {v15, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 750
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    const/4 v13, 0x0

    aput-object v10, v11, v13

    const-class v10, Ljava/lang/String;

    const/4 v14, 0x1

    aput-object v10, v11, v14

    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v15, v11, v13

    aput-object v2, v11, v14

    .line 751
    invoke-virtual {v8, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    const-string v6, "floatingBackButton"

    .line 755
    invoke-virtual {v7, v6, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_18

    if-eqz v6, :cond_4b

    :try_start_29
    const-string v6, "floatingBackButtonSize"

    const-string v8, "MEDIUM"

    .line 757
    invoke-virtual {v7, v6, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "floatingBackButtonLongPressAction"

    .line 758
    invoke-virtual {v7, v8, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "floatingBackButtonDoubleBackTap"

    .line 759
    invoke-virtual {v7, v10, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const-string v11, "floatingBackButtonPositionPerScreen"

    .line 760
    invoke-virtual {v7, v11, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    const-string v13, "floatingBackButtonColor"

    const v14, -0x777778

    .line 761
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v14, "floatingBackButtonOpacity"

    const/high16 v22, 0x3f000000    # 0.5f

    move-object/from16 v32, v2

    .line 762
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v7, v14, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-string v14, "com.applisto.appcloner.classes.secondary.FloatingBackButton"

    .line 763
    invoke-static {v15, v14}, Lcom/applisto/appcloner/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v22, v5

    .line 764
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_9

    move-object/from16 v36, v3

    const/4 v1, 0x7

    :try_start_2a
    new-array v3, v1, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v1, v3, v16

    const-class v1, Ljava/lang/String;

    const/16 v20, 0x1

    aput-object v1, v3, v20

    const-class v1, Ljava/lang/String;

    const/16 v25, 0x2

    aput-object v1, v3, v25

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v24, 0x3

    aput-object v1, v3, v24

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x4

    aput-object v1, v3, v23

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v26, 0x5

    aput-object v1, v3, v26

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v31, 0x6

    aput-object v1, v3, v31

    invoke-virtual {v5, v9, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x7

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v5, v3

    const/4 v3, 0x1

    aput-object v6, v5, v3

    const/4 v3, 0x2

    aput-object v8, v5, v3

    .line 766
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v5, v6

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v6, 0x4

    aput-object v3, v5, v6

    .line 767
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x5

    aput-object v3, v5, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v5, v3

    .line 765
    invoke-virtual {v1, v14, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_a

    goto :goto_27

    :catchall_9
    move-exception v0

    move-object/from16 v2, p0

    move-object v1, v0

    move-object v5, v3

    :goto_26
    move-object v6, v4

    move-object/from16 v39, v9

    goto/16 :goto_43

    :cond_4b
    move-object/from16 v32, v2

    move-object/from16 v36, v3

    move-object/from16 v22, v5

    :goto_27
    :try_start_2b
    const-string v1, "joystickPointer"

    .line 771
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_16

    if-eqz v1, :cond_4c

    :try_start_2c
    const-string v1, "joystickPointerSize"

    const-string v2, "MEDIUM"

    .line 773
    invoke-virtual {v7, v1, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "joystickPointerColor"

    const v3, -0x777778

    .line 774
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "joystickPointerOpacity"

    const/high16 v5, 0x3f800000    # 1.0f

    .line 775
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v7, v3, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const-string v5, "joystickPointerToggleKeyCode"

    move-object/from16 v6, v30

    .line 776
    invoke-virtual {v7, v5, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v8, "joystickPointerToggleLongPress"

    .line 777
    invoke-virtual {v7, v8, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const-string v10, "joystickPointerShowInitially"

    const/4 v11, 0x1

    .line 778
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v7, v10, v13}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const-string v11, "com.applisto.appcloner.classes.secondary.JoystickPointer"

    .line 779
    invoke-static {v15, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 780
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    move-object/from16 v30, v6

    const/4 v14, 0x7

    new-array v6, v14, [Ljava/lang/Class;

    const-class v14, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v14, v6, v16

    const-class v14, Ljava/lang/String;

    const/16 v20, 0x1

    aput-object v14, v6, v20

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v25, 0x2

    aput-object v14, v6, v25

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v24, 0x3

    aput-object v14, v6, v24

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x4

    aput-object v14, v6, v23

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v26, 0x5

    aput-object v14, v6, v26

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v31, 0x6

    aput-object v14, v6, v31

    invoke-virtual {v13, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v14, 0x7

    new-array v13, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v15, v13, v16

    const/16 v20, 0x1

    aput-object v1, v13, v20

    .line 783
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v13, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v13, v2

    .line 784
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v13, v2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v13, v2

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v13, v2

    .line 782
    invoke-virtual {v6, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_a

    goto :goto_28

    :catchall_a
    move-exception v0

    move-object/from16 v2, p0

    move-object v1, v0

    move-object v6, v4

    move-object/from16 v39, v9

    goto/16 :goto_1a

    :cond_4c
    const/4 v14, 0x7

    :goto_28
    :try_start_2d
    const-string v1, "showTouches"

    .line 788
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_16

    if-eqz v1, :cond_4d

    :try_start_2e
    const-string v1, "com.applisto.appcloner.classes.secondary.ShowTouches"

    .line 789
    invoke-static {v15, v1}, Lcom/applisto/appcloner/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 790
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v6, v5, v8

    invoke-virtual {v2, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v15, v5, v8

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_a

    :cond_4d
    :try_start_2f
    const-string v1, "localBroadcastsServices"

    .line 794
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_16

    if-eqz v1, :cond_4e

    :try_start_30
    const-string v1, "LocalBroadcastsServices"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v15, v3, v2

    const/4 v2, 0x1

    aput-object v4, v3, v2
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_b

    move-object/from16 v2, p0

    move-object/from16 v5, v36

    .line 795
    :try_start_31
    invoke-direct {v2, v1, v5, v3}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_c

    goto :goto_2a

    :catchall_b
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v5, v36

    :goto_29
    move-object v1, v0

    goto/16 :goto_26

    :cond_4e
    move-object/from16 v2, p0

    move-object/from16 v5, v36

    :goto_2a
    :try_start_32
    const-string v1, "localActivities"

    .line 799
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_15

    if-eqz v1, :cond_4f

    :try_start_33
    const-string v1, "LocalActivities"

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v6, v3

    const/4 v3, 0x1

    aput-object v4, v6, v3

    .line 800
    invoke-direct {v2, v1, v5, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_c

    goto :goto_2b

    :catchall_c
    move-exception v0

    goto :goto_29

    :cond_4f
    :goto_2b
    :try_start_34
    const-string v1, "showAppInfoNotification"

    .line 804
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_15

    if-eqz v1, :cond_50

    :try_start_35
    const-string v1, "ShowAppInfoNotification"

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v6, v3

    const/4 v3, 0x1

    aput-object v33, v6, v3

    .line 805
    invoke-direct {v2, v1, v5, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_c

    :cond_50
    :try_start_36
    const-string v1, "pictureInPictureNotification"

    .line 809
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_15

    if-eqz v1, :cond_51

    :try_start_37
    const-string v1, "PictureInPictureNotification"

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v6, v3

    const/4 v3, 0x1

    aput-object v33, v6, v3

    .line 810
    invoke-direct {v2, v1, v5, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_c

    :cond_51
    :try_start_38
    const-string v1, "hidePasswordCharacters"

    .line 814
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_15

    if-eqz v1, :cond_52

    :try_start_39
    const-string v1, "com.applisto.appcloner.classes.secondary.HidePasswordCharacters"

    .line 815
    invoke-static {v15, v1}, Lcom/applisto/appcloner/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 816
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v3, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v15, v8, v11

    invoke-virtual {v3, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_c

    :cond_52
    :try_start_3a
    const-string v1, "incognitoKeyboard"

    .line 820
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_15

    if-eqz v1, :cond_53

    :try_start_3b
    const-string v1, "IncognitoKeyboard"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v6, v3

    .line 821
    invoke-direct {v2, v1, v5, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_c

    :cond_53
    :try_start_3c
    const-string v1, "makeDebuggable"

    .line 825
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_15

    if-eqz v1, :cond_54

    :try_start_3d
    const-string v1, "debugUtils"

    .line 826
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_54

    const-string v1, "autoStartProfiling"

    .line 827
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v3, "DebugUtils"

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v15, v8, v6

    .line 828
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v8, v6

    invoke-direct {v2, v3, v5, v8}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_c

    :cond_54
    :try_start_3e
    const-string v1, "noBackgroundServices"

    .line 832
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_15

    if-eqz v1, :cond_55

    :try_start_3f
    const-string v1, "NoBackgroundServices"

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v6, v3

    const/4 v3, 0x1

    aput-object v33, v6, v3

    .line 833
    invoke-direct {v2, v1, v5, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_c

    :cond_55
    :try_start_40
    const-string v1, "disableLogcatLogging"

    .line 837
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_15

    if-eqz v1, :cond_56

    :try_start_41
    const-string v1, "DisableLogcatLogging"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v6, v3

    .line 838
    invoke-direct {v2, v1, v5, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_c

    :cond_56
    :try_start_42
    const-string v1, "flushLogcatBufferOnExit"

    .line 842
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_15

    if-eqz v1, :cond_57

    :try_start_43
    const-string v1, "FlushLogcatBufferOnExit"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v33, v6, v3

    .line 843
    invoke-direct {v2, v1, v5, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_c

    :cond_57
    :try_start_44
    const-string v1, "logGetPackageName"

    .line 847
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_15

    if-eqz v1, :cond_58

    if-eqz v19, :cond_58

    :try_start_45
    const-string v1, "LogGetPackageNameHook"

    const/4 v3, 0x0

    new-array v6, v3, [Ljava/lang/Object;

    .line 848
    invoke-direct {v2, v1, v5, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_c

    :cond_58
    :try_start_46
    const-string v1, "statusBarColor"

    const/4 v3, 0x0

    .line 852
    invoke-virtual {v7, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "navigationBarColor"

    .line 853
    invoke-virtual {v7, v6, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    const-string v3, "navigationBarColorUseStatusBarColor"

    .line 854
    invoke-virtual {v7, v3, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_59

    move-object v6, v1

    :cond_59
    if-nez v1, :cond_5a

    if-eqz v6, :cond_5b

    :cond_5a
    const-string v3, "StatusNavigationBarColor"

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v10, v8

    const/4 v8, 0x1

    aput-object v6, v10, v8

    .line 858
    invoke-direct {v2, v3, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5b
    const-string v3, "toolbarColor"

    const/4 v6, 0x0

    .line 862
    invoke-virtual {v7, v3, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "toolbarColorUseStatusBarColor"

    .line 863
    invoke-virtual {v7, v6, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_15

    if-eqz v6, :cond_5c

    goto :goto_2c

    :cond_5c
    move-object v1, v3

    :goto_2c
    if-eqz v1, :cond_5d

    :try_start_47
    const-string v3, "ToolbarColor"

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v8, v6

    .line 867
    invoke-direct {v2, v3, v5, v8}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_c

    :cond_5d
    :try_start_48
    const-string v1, "muteOnStart"

    .line 871
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_15

    if-eqz v1, :cond_5e

    :try_start_49
    const-string v1, "MuteOnStart"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v33, v6, v3

    .line 872
    invoke-direct {v2, v1, v5, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_c

    :cond_5e
    :try_start_4a
    const-string v1, "muteWhileInForeground"

    .line 876
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_15

    if-eqz v1, :cond_5f

    :try_start_4b
    const-string v1, "MuteWhileInForeground"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v33, v6, v3

    .line 877
    invoke-direct {v2, v1, v5, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_c

    :cond_5f
    :try_start_4c
    const-string v1, "allowTextSelection"

    .line 881
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v3, "longPressToCopyText"

    .line 882
    invoke-virtual {v7, v3, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v6, "allowSharingImages"

    .line 883
    invoke-virtual {v7, v6, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v1, :cond_60

    if-nez v3, :cond_60

    if-eqz v6, :cond_61

    :cond_60
    const-string v8, "saveImagesToGallery"

    .line 885
    invoke-virtual {v7, v8, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const-string v10, "AllowTextSelectionSharingImages"

    const/4 v11, 0x5

    new-array v13, v11, [Ljava/lang/Object;

    .line 887
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v11, 0x0

    aput-object v1, v13, v11

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v13, v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v13, v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v13, v3

    const/4 v1, 0x4

    aput-object v33, v13, v1

    .line 886
    invoke-direct {v2, v10, v5, v13}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_61
    const-string v1, "keepScreenOn"

    .line 891
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_15

    if-eqz v1, :cond_62

    :try_start_4d
    const-string v1, "KeepScreenOn"

    const/4 v3, 0x0

    new-array v6, v3, [Ljava/lang/Object;

    .line 892
    invoke-direct {v2, v1, v5, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_c

    :cond_62
    :try_start_4e
    const-string v1, "exitAppOnScreenOff"

    .line 896
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_15

    if-eqz v1, :cond_63

    :try_start_4f
    const-string v1, "exitAppOnScreenOffDelaySeconds"

    move-object/from16 v3, v30

    .line 897
    invoke-virtual {v7, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v6, "ExitAppOnScreenOff"

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    .line 898
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v8, 0x0

    aput-object v1, v10, v8

    invoke-direct {v2, v6, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_c

    goto :goto_2d

    :cond_63
    move-object/from16 v3, v30

    :goto_2d
    :try_start_50
    const-string v1, "requestAllPermissions"

    .line 902
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_15

    if-eqz v1, :cond_64

    :try_start_51
    const-string v1, "RequestAllPermissions"

    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/Object;

    .line 903
    invoke-direct {v2, v1, v5, v8}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_c

    :cond_64
    :try_start_52
    const-string v1, "allowScreenshots"

    .line 907
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v6, "preventScreenshots"

    .line 908
    invoke-virtual {v7, v6, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v1, :cond_65

    if-eqz v6, :cond_66

    :cond_65
    const-string v8, "AllowPreventScreenshots"

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v15, v11, v10

    .line 911
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v10, 0x1

    aput-object v1, v11, v10

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v6, 0x2

    aput-object v1, v11, v6

    .line 910
    invoke-direct {v2, v8, v5, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_66
    const-string v1, "webViewSafeBrowsing"

    const/4 v6, 0x0

    .line 915
    invoke-virtual {v7, v1, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    .line 916
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_67

    if-eqz v1, :cond_68

    :cond_67
    const-string v6, "WebViewHooks"

    const/4 v8, 0x3

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v15, v10, v8

    const/4 v8, 0x1

    aput-object v28, v10, v8

    const/4 v8, 0x2

    aput-object v1, v10, v8

    .line 917
    invoke-direct {v2, v6, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_68
    const-string v1, "clearCacheWhenNotUsed"

    .line 922
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_15

    if-eqz v1, :cond_69

    :try_start_53
    const-string v1, "clearCacheWhenNotUsedValue"

    const/4 v6, 0x3

    .line 924
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v6, "clearCacheWhenNotUsedTimeUnit"

    const-string v8, "DAYS"

    .line 925
    invoke-virtual {v7, v6, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/concurrent/TimeUnit;->valueOf(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;

    move-result-object v6

    const-string v8, "ClearCacheWhenNotUsed"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    .line 927
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v10, 0x0

    aput-object v1, v11, v10

    const/4 v1, 0x1

    aput-object v6, v11, v1

    invoke-direct {v2, v8, v5, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_a
    .catchall {:try_start_53 .. :try_end_53} :catchall_c

    goto :goto_2e

    :catch_a
    move-exception v0

    move-object v1, v0

    .line 929
    :try_start_54
    sget-object v6, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_c

    :cond_69
    :goto_2e
    :try_start_55
    const-string v1, "com.amazon.mas.kiwi.util.ApkHelpers"

    .line 935
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v1, "AmazonAppstoreWorkaround"

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v15, v8, v6

    .line 936
    invoke-direct {v2, v1, v5, v8}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_d

    :catchall_d
    :try_start_56
    const-string v1, "BrazeAppboyWorkaround"

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v15, v8, v6

    .line 941
    invoke-direct {v2, v1, v5, v8}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "FabricWorkaround"

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v15, v10, v6

    const/4 v6, 0x1

    aput-object v33, v10, v6

    .line 944
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "removeLauncherIcon"

    .line 947
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_15

    if-nez v1, :cond_6a

    :try_start_57
    const-string v1, "removeLauncherIconShortcuts"

    .line 948
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_c

    if-eqz v1, :cond_6b

    :cond_6a
    :try_start_58
    const-string v1, "RemoveLauncherIconShortcuts"

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v15, v8, v6

    .line 949
    invoke-direct {v2, v1, v5, v8}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6b
    const-string v1, "bringAppToFrontNotification"

    .line 953
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_15

    if-eqz v1, :cond_6c

    :try_start_59
    const-string v1, "BringAppToFrontNotification"

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v15, v8, v6

    const/4 v6, 0x1

    aput-object v33, v8, v6

    .line 954
    invoke-direct {v2, v1, v5, v8}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_c

    :cond_6c
    :try_start_5a
    const-string v1, "penDetachedEventAction"

    move-object/from16 v6, v22

    .line 958
    invoke-virtual {v7, v1, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "penInsertedEventAction"

    .line 959
    invoke-virtual {v7, v8, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "EXIT_APP"

    .line 960
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_15

    if-nez v1, :cond_6d

    :try_start_5b
    const-string v1, "EXIT_APP"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_c

    if-eqz v1, :cond_6e

    .line 961
    :cond_6d
    :try_start_5c
    invoke-static {}, Lcom/applisto/appcloner/classes/PenEventReceiver;->install()V

    :cond_6e
    const-string v1, "powerConnectedEventAction"

    .line 965
    invoke-virtual {v7, v1, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "powerDisconnectedEventAction"

    .line 966
    invoke-virtual {v7, v8, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "EXIT_APP"

    .line 967
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_15

    if-nez v1, :cond_6f

    :try_start_5d
    const-string v1, "EXIT_APP"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_c

    if-eqz v1, :cond_70

    .line 968
    :cond_6f
    :try_start_5e
    invoke-static {}, Lcom/applisto/appcloner/classes/PowerEventReceiver;->install()V

    :cond_70
    const-string v1, "headphonesPluggedEventAction"

    .line 972
    invoke-virtual {v7, v1, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "headphonesUnpluggedEventAction"

    .line 973
    invoke-virtual {v7, v8, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 974
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_15

    if-eqz v1, :cond_71

    :try_start_5f
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_c

    if-nez v1, :cond_72

    .line 975
    :cond_71
    :try_start_60
    invoke-static {v15}, Lcom/applisto/appcloner/classes/HeadphonesEventReceiver;->install(Landroid/content/Context;)V

    :cond_72
    const-string v1, "disableCameras"

    .line 979
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_15

    if-eqz v1, :cond_73

    .line 980
    :try_start_61
    new-instance v1, Lcom/applisto/appcloner/classes/DisableCameras;

    invoke-direct {v1}, Lcom/applisto/appcloner/classes/DisableCameras;-><init>()V

    move-object/from16 v6, v33

    invoke-virtual {v1, v6}, Lcom/applisto/appcloner/classes/DisableCameras;->install(Ljava/util/Properties;)V
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_c

    goto :goto_2f

    :cond_73
    move-object/from16 v6, v33

    :goto_2f
    :try_start_62
    const-string v1, "muteMic"

    .line 984
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_15

    if-eqz v1, :cond_74

    :try_start_63
    const-string v1, "MuteMic"

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v10, v8

    .line 985
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_c

    :cond_74
    :try_start_64
    const-string v1, "disableAutoFill"

    .line 989
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_15

    if-eqz v1, :cond_75

    :try_start_65
    const-string v1, "DisableAutoFill"

    const/4 v8, 0x0

    new-array v10, v8, [Ljava/lang/Object;

    .line 990
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_c

    :cond_75
    :try_start_66
    const-string v1, "disablePermissionPrompts"

    .line 994
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_15

    if-eqz v1, :cond_76

    :try_start_67
    const-string v1, "DisablePermissionPrompts"

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v15, v10, v8

    .line 995
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_c

    :cond_76
    :try_start_68
    const-string v1, "requestIgnoreBatteryOptimizations"

    .line 999
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_15

    if-eqz v1, :cond_77

    :try_start_69
    const-string v1, "RequestIgnoreBatteryOptimizations"

    const/4 v8, 0x0

    new-array v10, v8, [Ljava/lang/Object;

    .line 1000
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_c

    :cond_77
    :try_start_6a
    const-string v1, "trustAllCertificates"

    .line 1004
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_15

    if-eqz v1, :cond_78

    :try_start_6b
    const-string v1, "TrustAllCertificates"

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v15, v10, v8

    .line 1005
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_c

    :cond_78
    :try_start_6c
    const-string v1, "fakeCalculator"

    .line 1009
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_15

    if-eqz v1, :cond_79

    .line 1010
    :try_start_6d
    new-instance v1, Lcom/applisto/appcloner/classes/FakeCalculator;

    invoke-direct {v1}, Lcom/applisto/appcloner/classes/FakeCalculator;-><init>()V

    invoke-virtual {v1}, Lcom/applisto/appcloner/classes/FakeCalculator;->install()V
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_c

    :cond_79
    :try_start_6e
    const-string v1, "hideNotch"

    .line 1014
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_15

    if-eqz v1, :cond_7a

    :try_start_6f
    const-string v1, "HideNotch"

    const/4 v8, 0x0

    new-array v10, v8, [Ljava/lang/Object;

    .line 1015
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_c

    :cond_7a
    :try_start_70
    const-string v1, "appValidFrom"

    const-wide/16 v10, 0x0

    .line 1019
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-string v1, "appValidUntil"

    const-wide/16 v21, 0x0

    .line 1020
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    const-wide/16 v36, 0x0

    cmp-long v1, v10, v36

    if-nez v1, :cond_7b

    const-wide/16 v36, 0x0

    cmp-long v1, v21, v36

    if-eqz v1, :cond_7c

    :cond_7b
    const-string v1, "AppValidity"

    const/4 v8, 0x3

    new-array v13, v8, [Ljava/lang/Object;

    .line 1022
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v13, v10

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v13, v10

    const/4 v8, 0x2

    aput-object v6, v13, v8

    invoke-direct {v2, v1, v5, v13}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7c
    const-string v1, "accessibleDataDirectory"

    .line 1026
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_15

    if-eqz v1, :cond_7d

    :try_start_71
    const-string v1, "AccessibleDataDirectory"

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v15, v10, v8

    .line 1027
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_c

    :cond_7d
    :try_start_72
    const-string v1, "dataDirectoryFtpServer"

    .line 1031
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_15

    if-eqz v1, :cond_7e

    .line 1032
    :try_start_73
    new-instance v1, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;

    invoke-direct {v1}, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;-><init>()V

    invoke-virtual {v1, v6}, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->install(Ljava/util/Properties;)V
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_c

    .line 1035
    :cond_7e
    :try_start_74
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->allowHiddenApiAccess()V

    const-string v1, "hostsBlocker"

    .line 1038
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_15

    if-eqz v1, :cond_7f

    :try_start_75
    const-string v1, "blockByDefault"

    .line 1039
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v8, "socksProxyHost"

    const/4 v10, 0x0

    .line 1040
    invoke-virtual {v7, v8, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "hostsBlockerAllowAllOtherHosts"

    .line 1041
    invoke-virtual {v7, v10, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 1042
    invoke-static {v15, v1, v8, v10, v6}, Lcom/applisto/appcloner/classes/HostsBlocker;->install(Landroid/content/Context;ZLjava/lang/String;ZLjava/util/Properties;)V
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_c

    :cond_7f
    :try_start_76
    const-string v1, "mappedHosts"

    .line 1046
    invoke-virtual {v7, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getStringMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_15

    if-eqz v1, :cond_80

    .line 1047
    :try_start_77
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_80

    const-string v8, "hostMapperSilent"

    .line 1048
    invoke-virtual {v7, v8, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const-string v10, "socksProxyHost"

    const/4 v11, 0x0

    .line 1049
    invoke-virtual {v7, v10, v11}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1050
    invoke-static {v15, v1, v8, v10, v6}, Lcom/applisto/appcloner/classes/HostMapper;->install(Landroid/content/Context;Ljava/util/Map;ZLjava/lang/String;Ljava/util/Properties;)V
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_c

    :cond_80
    :try_start_78
    const-string v1, "overrideSharedPreferences"

    .line 1054
    invoke-virtual {v7, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getStringMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_15

    if-eqz v1, :cond_81

    .line 1055
    :try_start_79
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_81

    const-string v8, "OverrideSharedPreferences"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v15, v11, v10

    const/4 v10, 0x1

    aput-object v1, v11, v10

    .line 1056
    invoke-direct {v2, v8, v5, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_c

    :cond_81
    :try_start_7a
    const-string v1, "enableTvVersion"

    .line 1060
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_15

    if-eqz v1, :cond_82

    :try_start_7b
    const-string v1, "EnableTvVersion"

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v15, v10, v8

    .line 1061
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_c

    :cond_82
    :try_start_7c
    const-string v1, "hideRoot"

    .line 1065
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_15

    if-eqz v1, :cond_83

    :try_start_7d
    const-string v1, "HideRoot"

    const/4 v8, 0x0

    new-array v10, v8, [Ljava/lang/Object;

    .line 1066
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_c

    :cond_83
    :try_start_7e
    const-string v1, "hideOtherApps"

    .line 1070
    invoke-virtual {v7, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_15

    if-eqz v1, :cond_84

    .line 1071
    :try_start_7f
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_84

    const-string v8, "HideOtherApps"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v11, v10

    .line 1072
    invoke-direct {v2, v8, v5, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_c

    :cond_84
    :try_start_80
    const-string v1, "disablePhotoMediaAccess"

    .line 1076
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_15

    if-eqz v1, :cond_85

    :try_start_81
    const-string v1, "DisablePhotoMediaAccess"

    const/4 v8, 0x0

    new-array v10, v8, [Ljava/lang/Object;

    .line 1077
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_c

    :cond_85
    :try_start_82
    const-string v1, "fileAccessMonitor"

    .line 1081
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_15

    if-eqz v1, :cond_86

    .line 1082
    :try_start_83
    invoke-static {}, Lcom/applisto/appcloner/classes/FileAccessMonitor;->install()V
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_c

    :cond_86
    :try_start_84
    const-string v1, "dismissableDialogs"

    const/4 v8, 0x0

    .line 1086
    invoke-virtual {v7, v1, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_15

    if-eqz v1, :cond_87

    :try_start_85
    const-string v8, "DismissableDialogs"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v15, v11, v10

    const/4 v10, 0x1

    aput-object v1, v11, v10

    .line 1088
    invoke-direct {v2, v8, v5, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_c

    :cond_87
    :try_start_86
    const-string v1, "volumeControlIndicator"

    move-object/from16 v8, v35

    .line 1092
    invoke-virtual {v7, v1, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1093
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_15

    if-nez v10, :cond_88

    :try_start_87
    const-string v10, "volumeControlIndicatorStep"

    const/4 v11, 0x1

    .line 1094
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v10, v13}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v11, "VolumeControlIndicator"

    const/4 v13, 0x5

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v15, v14, v13

    const/4 v13, 0x1

    aput-object v1, v14, v13

    .line 1096
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v10, 0x2

    aput-object v1, v14, v10

    const/4 v1, 0x3

    aput-object v32, v14, v1

    const/4 v1, 0x4

    aput-object v6, v14, v1

    .line 1095
    invoke-direct {v2, v11, v5, v14}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_c

    :cond_88
    :try_start_88
    const-string v1, "screenTextReplacements"

    .line 1100
    invoke-virtual {v7, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getMapList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_15

    if-eqz v1, :cond_89

    .line 1101
    :try_start_89
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_89

    const-string v10, "ReplaceTextOnScreen"

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v13, v11

    .line 1102
    invoke-direct {v2, v10, v5, v13}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_c

    :cond_89
    :try_start_8a
    const-string v1, "viewModifications"

    .line 1106
    invoke-virtual {v7, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getMapList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_15

    if-eqz v1, :cond_8a

    .line 1107
    :try_start_8b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_8a

    const-string v10, "ModifyViews"

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v13, v11

    .line 1108
    invoke-direct {v2, v10, v5, v13}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_c

    :cond_8a
    :try_start_8c
    const-string v1, "disableNestedScrolling"

    .line 1112
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_15

    if-eqz v1, :cond_8b

    :try_start_8d
    const-string v1, "DisableNestedScrolling"

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    .line 1113
    invoke-direct {v2, v1, v5, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_c

    :cond_8b
    :try_start_8e
    const-string v1, "blockActivitiesNames"

    .line 1117
    invoke-virtual {v7, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v10, "activitiesMonitor"

    .line 1118
    invoke-virtual {v7, v10, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_15

    if-eqz v1, :cond_8c

    .line 1119
    :try_start_8f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_8d

    :cond_8c
    if-eqz v10, :cond_8e

    :cond_8d
    const-string v11, "BlockActivities"

    const/4 v13, 0x4

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v15, v14, v13

    const/4 v13, 0x1

    aput-object v1, v14, v13

    .line 1120
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v10, 0x2

    aput-object v1, v14, v10

    const/4 v1, 0x3

    aput-object v6, v14, v1

    invoke-direct {v2, v11, v5, v14}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_c

    :cond_8e
    :try_start_90
    const-string v1, "sendBroadcastOnStart"

    const/4 v10, 0x0

    .line 1124
    invoke-virtual {v7, v1, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v11, "processName"

    .line 1126
    invoke-virtual {v7, v11, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_15

    if-nez v10, :cond_8f

    .line 1128
    :try_start_91
    new-instance v10, Lcom/applisto/appcloner/classes/DefaultProvider$1;

    const-string v11, "ContextClassLoaderThread"

    invoke-direct {v10, v2, v11, v1, v15}, Lcom/applisto/appcloner/classes/DefaultProvider$1;-><init>(Lcom/applisto/appcloner/classes/DefaultProvider;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1147
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 1148
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_c

    goto :goto_30

    .line 1151
    :cond_8f
    :try_start_92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_15

    if-nez v10, :cond_90

    .line 1152
    :try_start_93
    invoke-direct {v2, v15, v1}, Lcom/applisto/appcloner/classes/DefaultProvider;->sendBroadcastOnStart(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_c

    :cond_90
    :goto_30
    :try_start_94
    const-string v1, "fakeDateYear"

    .line 1157
    invoke-virtual {v7, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v10, "fakeDateMonth"

    .line 1158
    invoke-virtual {v7, v10, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v11, "fakeDateDay"

    .line 1159
    invoke-virtual {v7, v11, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_15

    if-eqz v1, :cond_91

    if-eqz v10, :cond_91

    if-eqz v11, :cond_91

    :try_start_95
    const-string v13, "FakeDate"
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_c

    move-object/from16 v30, v4

    const/4 v14, 0x4

    :try_start_96
    new-array v4, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v15, v4, v14

    .line 1161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v14, 0x1

    aput-object v1, v4, v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v10, 0x2

    aput-object v1, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v10, 0x3

    aput-object v1, v4, v10

    invoke-direct {v2, v13, v5, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_e

    goto :goto_31

    :catchall_e
    move-exception v0

    move-object v1, v0

    move-object/from16 v39, v9

    goto/16 :goto_17

    :cond_91
    move-object/from16 v30, v4

    :goto_31
    :try_start_97
    const-string v1, "disableChromecastButton"

    .line 1165
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_14

    if-eqz v1, :cond_92

    :try_start_98
    const-string v1, "DisableChromecastButton"

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v10, v4

    .line 1166
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_e

    :cond_92
    :try_start_99
    const-string v1, "ignoreCrashes"

    .line 1170
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_14

    if-eqz v1, :cond_93

    :try_start_9a
    const-string v1, "IgnoreCrashes"

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v10, v4

    .line 1171
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_e

    :cond_93
    :try_start_9b
    const-string v1, "fakeCamera"

    .line 1175
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_14

    if-eqz v1, :cond_94

    .line 1176
    :try_start_9c
    invoke-static {v15, v6}, Lcom/applisto/appcloner/classes/FakeCamera;->install(Landroid/content/Context;Ljava/util/Properties;)V
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_e

    :cond_94
    :try_start_9d
    const-string v1, "audioPlaybackCapture"

    .line 1180
    invoke-virtual {v7, v1, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_9d
    .catchall {:try_start_9d .. :try_end_9d} :catchall_14

    if-nez v1, :cond_95

    :try_start_9e
    const-string v1, "AudioPlaybackCapture"

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v10, v4

    .line 1181
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_e

    :cond_95
    :try_start_9f
    const-string v1, "keyboardAdjust"

    .line 1185
    invoke-virtual {v7, v1, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1186
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_9f
    .catchall {:try_start_9f .. :try_end_9f} :catchall_14

    if-nez v4, :cond_96

    :try_start_a0
    const-string v4, "KeyboardAdjust"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v11, v10

    .line 1187
    invoke-direct {v2, v4, v5, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a0
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_e

    :cond_96
    :try_start_a1
    const-string v1, "inAppFloatingKeyboard"

    const/4 v4, 0x0

    .line 1191
    invoke-virtual {v7, v1, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1192
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_a1
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_14

    if-nez v4, :cond_97

    :try_start_a2
    const-string v4, "InAppFloatingKeyboard"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v15, v11, v10

    const/4 v10, 0x1

    aput-object v1, v11, v10

    .line 1193
    invoke-direct {v2, v4, v5, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a2
    .catchall {:try_start_a2 .. :try_end_a2} :catchall_e

    :cond_97
    :try_start_a3
    const-string v1, "disableHapticFeedback"

    .line 1197
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_a3
    .catchall {:try_start_a3 .. :try_end_a3} :catchall_14

    if-eqz v1, :cond_98

    :try_start_a4
    const-string v1, "DisableHapticFeedback"

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v10, v4

    .line 1198
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a4
    .catchall {:try_start_a4 .. :try_end_a4} :catchall_e

    :cond_98
    :try_start_a5
    const-string v1, "hideDeveloperMode"

    .line 1202
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_a5
    .catchall {:try_start_a5 .. :try_end_a5} :catchall_14

    if-eqz v1, :cond_99

    :try_start_a6
    const-string v1, "HideDeveloperMode"

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v10, v4

    .line 1203
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a6
    .catchall {:try_start_a6 .. :try_end_a6} :catchall_e

    :cond_99
    :try_start_a7
    const-string v1, "hideVpnConnection"

    .line 1207
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_a7
    .catchall {:try_start_a7 .. :try_end_a7} :catchall_14

    if-eqz v1, :cond_9a

    :try_start_a8
    const-string v1, "HideVpnConnection"

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v10, v4

    .line 1208
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a8
    .catchall {:try_start_a8 .. :try_end_a8} :catchall_e

    :cond_9a
    :try_start_a9
    const-string v1, "noKill"

    .line 1212
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_a9
    .catchall {:try_start_a9 .. :try_end_a9} :catchall_14

    if-eqz v1, :cond_9b

    :try_start_aa
    const-string v1, "NoKill"

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v10, v4

    .line 1213
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_aa
    .catchall {:try_start_aa .. :try_end_aa} :catchall_e

    :cond_9b
    :try_start_ab
    const-string v1, "showOnSecondaryDisplay"

    .line 1217
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_ab
    .catchall {:try_start_ab .. :try_end_ab} :catchall_14

    if-eqz v1, :cond_9c

    :try_start_ac
    const-string v1, "showOnSecondaryDisplayActivitiesNames"

    .line 1218
    invoke-virtual {v7, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v4, "ShowOnSecondaryDisplay"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v15, v11, v10

    const/4 v10, 0x1

    aput-object v1, v11, v10

    .line 1219
    invoke-direct {v2, v4, v5, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ac
    .catchall {:try_start_ac .. :try_end_ac} :catchall_e

    :cond_9c
    :try_start_ad
    const-string v1, "hideScreenMirroring"

    .line 1223
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_ad
    .catchall {:try_start_ad .. :try_end_ad} :catchall_14

    if-eqz v1, :cond_9d

    :try_start_ae
    const-string v1, "HideScreenMirroring"

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v10, v4

    .line 1224
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ae
    .catchall {:try_start_ae .. :try_end_ae} :catchall_e

    :cond_9d
    :try_start_af
    const-string v1, "palmRejectionWidthPercentage"

    .line 1228
    invoke-virtual {v7, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_af
    .catchall {:try_start_af .. :try_end_af} :catchall_14

    if-lez v1, :cond_9e

    :try_start_b0
    const-string v4, "PalmRejection"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v15, v11, v10

    .line 1230
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v10, 0x1

    aput-object v1, v11, v10

    invoke-direct {v2, v4, v5, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b0
    .catchall {:try_start_b0 .. :try_end_b0} :catchall_e

    :cond_9e
    :try_start_b1
    const-string v1, "fakeBatteryLevel"

    .line 1234
    invoke-virtual {v7, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_b1
    .catchall {:try_start_b1 .. :try_end_b1} :catchall_14

    if-lez v1, :cond_9f

    :try_start_b2
    const-string v4, "hidePowerSavingMode"

    .line 1236
    invoke-virtual {v7, v4, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v10, "FakeBatteryLevel"

    const/4 v11, 0x3

    new-array v13, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v15, v13, v11

    .line 1237
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v11, 0x1

    aput-object v1, v13, v11

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v13, v4

    invoke-direct {v2, v10, v5, v13}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b2
    .catchall {:try_start_b2 .. :try_end_b2} :catchall_e

    :cond_9f
    :try_start_b3
    const-string v1, "startSound"

    .line 1241
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_b3
    .catchall {:try_start_b3 .. :try_end_b3} :catchall_14

    if-eqz v1, :cond_a0

    :try_start_b4
    const-string v1, "StartSound"

    const/4 v4, 0x0

    new-array v10, v4, [Ljava/lang/Object;

    .line 1242
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b4
    .catchall {:try_start_b4 .. :try_end_b4} :catchall_e

    :cond_a0
    :try_start_b5
    const-string v1, "muteForTextOnScreen"

    move-object/from16 v4, v34

    .line 1246
    invoke-virtual {v7, v1, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1247
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_b5
    .catchall {:try_start_b5 .. :try_end_b5} :catchall_14

    if-nez v10, :cond_a1

    :try_start_b6
    const-string v10, "MuteForTextOnScreen"

    const/4 v11, 0x3

    new-array v13, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v15, v13, v11

    const/4 v11, 0x1

    aput-object v1, v13, v11

    const/4 v1, 0x2

    aput-object v6, v13, v1

    .line 1248
    invoke-direct {v2, v10, v5, v13}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b6
    .catchall {:try_start_b6 .. :try_end_b6} :catchall_e

    :cond_a1
    :try_start_b7
    const-string v1, "deleteFilesDirectoriesOnExit"

    .line 1252
    invoke-virtual {v7, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_b7
    .catchall {:try_start_b7 .. :try_end_b7} :catchall_14

    if-eqz v1, :cond_a2

    .line 1253
    :try_start_b8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a2

    const-string v10, "DeleteFilesDirectoriesOnExit"

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v13, v11

    .line 1254
    invoke-direct {v2, v10, v5, v13}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b8
    .catchall {:try_start_b8 .. :try_end_b8} :catchall_e

    :cond_a2
    :try_start_b9
    const-string v1, "flashlightWhileAppOpen"

    .line 1258
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_b9
    .catchall {:try_start_b9 .. :try_end_b9} :catchall_14

    if-eqz v1, :cond_a3

    :try_start_ba
    const-string v1, "FlashlightWhileAppOpen"

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    .line 1259
    invoke-direct {v2, v1, v5, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ba
    .catchall {:try_start_ba .. :try_end_ba} :catchall_e

    :cond_a3
    :try_start_bb
    const-string v1, "popupBlocker"

    .line 1263
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_bb
    .catchall {:try_start_bb .. :try_end_bb} :catchall_14

    if-eqz v1, :cond_a4

    :try_start_bc
    const-string v1, "PopupBlocker"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v15, v11, v10

    const/4 v10, 0x1

    aput-object v6, v11, v10

    .line 1264
    invoke-direct {v2, v1, v5, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_bc
    .catchall {:try_start_bc .. :try_end_bc} :catchall_e

    :cond_a4
    :try_start_bd
    const-string v1, "toastPosition"

    .line 1268
    invoke-virtual {v7, v1, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v10, "toastDuration"

    .line 1269
    invoke-virtual {v7, v10, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_bd
    .catchall {:try_start_bd .. :try_end_bd} :catchall_14

    if-nez v1, :cond_a6

    .line 1270
    :try_start_be
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a5

    goto :goto_32

    :cond_a5
    move-object/from16 v28, v9

    const/4 v1, 0x3

    const/4 v11, 0x2

    const/4 v14, 0x0

    const/16 v16, 0x1

    goto :goto_35

    :cond_a6
    :goto_32
    if-eqz v1, :cond_a7

    const-string v11, "toastHorizontalAlignment"

    const-string v13, "CENTER"

    .line 1272
    invoke-virtual {v7, v11, v13}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_33

    :cond_a7
    const/4 v11, 0x0

    :goto_33
    if-eqz v1, :cond_a8

    const-string v1, "toastVerticalAlignment"

    const-string v13, "BOTTOM"

    .line 1274
    invoke-virtual {v7, v1, v13}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_be
    .catchall {:try_start_be .. :try_end_be} :catchall_e

    goto :goto_34

    :cond_a8
    const/4 v1, 0x0

    :goto_34
    :try_start_bf
    const-string v13, "ToastPositionDuration"
    :try_end_bf
    .catchall {:try_start_bf .. :try_end_bf} :catchall_14

    move-object/from16 v28, v9

    const/4 v14, 0x4

    :try_start_c0
    new-array v9, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v15, v9, v14

    const/16 v16, 0x1

    aput-object v11, v9, v16

    const/4 v11, 0x2

    aput-object v1, v9, v11

    const/4 v1, 0x3

    aput-object v10, v9, v1

    .line 1275
    invoke-direct {v2, v13, v5, v9}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_35
    const-string v9, "screenSaverDelayMinutes"

    .line 1280
    invoke-virtual {v7, v9, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13
    :try_end_c0
    .catchall {:try_start_c0 .. :try_end_c0} :catchall_13

    if-lez v13, :cond_a9

    :try_start_c1
    const-string v9, "screenSaverExitApp"

    .line 1282
    invoke-virtual {v7, v9, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "screenSaverMuteVolume"

    .line 1283
    invoke-virtual {v7, v10, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    .line 1284
    new-instance v20, Lcom/applisto/appcloner/classes/ScreenSaver;

    invoke-direct/range {v20 .. v20}, Lcom/applisto/appcloner/classes/ScreenSaver;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24
    :try_end_c1
    .catchall {:try_start_c1 .. :try_end_c1} :catchall_f

    move-object/from16 v10, v28

    move-object/from16 v9, v20

    move-object v11, v10

    const/4 v1, 0x2

    move-object v10, v15

    move-object/from16 v39, v11

    move-object/from16 v38, v30

    move v11, v13

    move-object v13, v12

    move/from16 v12, v22

    move-object/from16 v40, v3

    move-object v3, v13

    move/from16 v13, v24

    move/from16 v16, v19

    const/4 v1, 0x0

    const/16 v19, 0x7

    move-object v14, v6

    :try_start_c2
    invoke-virtual/range {v9 .. v14}, Lcom/applisto/appcloner/classes/ScreenSaver;->install(Landroid/content/Context;IZZLjava/util/Properties;)V
    :try_end_c2
    .catchall {:try_start_c2 .. :try_end_c2} :catchall_10

    goto :goto_36

    :catchall_f
    move-exception v0

    move-object/from16 v39, v28

    move-object v1, v0

    goto/16 :goto_17

    :cond_a9
    move-object/from16 v40, v3

    move-object v3, v12

    move/from16 v16, v19

    move-object/from16 v39, v28

    move-object/from16 v38, v30

    const/4 v1, 0x0

    const/16 v19, 0x7

    :goto_36
    :try_start_c3
    const-string v9, "databaseEditor"

    .line 1288
    invoke-virtual {v7, v9, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9
    :try_end_c3
    .catchall {:try_start_c3 .. :try_end_c3} :catchall_12

    if-eqz v9, :cond_aa

    .line 1289
    :try_start_c4
    new-instance v9, Lcom/applisto/appcloner/classes/DatabaseEditor;

    invoke-direct {v9}, Lcom/applisto/appcloner/classes/DatabaseEditor;-><init>()V

    invoke-virtual {v9, v6}, Lcom/applisto/appcloner/classes/DatabaseEditor;->install(Ljava/util/Properties;)V
    :try_end_c4
    .catchall {:try_start_c4 .. :try_end_c4} :catchall_10

    goto :goto_37

    :catchall_10
    move-exception v0

    move-object v1, v0

    move-object/from16 v6, v38

    goto/16 :goto_43

    :cond_aa
    :goto_37
    :try_start_c5
    const-string v9, "fpsMonitor"

    .line 1293
    invoke-virtual {v7, v9, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9
    :try_end_c5
    .catchall {:try_start_c5 .. :try_end_c5} :catchall_12

    if-eqz v9, :cond_ab

    :try_start_c6
    const-string v9, "fpsMonitorHorizontalAlignment"

    const-string v10, "RIGHT"

    .line 1294
    invoke-virtual {v7, v9, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "fpsMonitorVerticalAlignment"

    const-string v11, "BOTTOM"

    .line 1295
    invoke-virtual {v7, v10, v11}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "fpsMonitorSize"

    const-string v12, "MEDIUM"

    .line 1296
    invoke-virtual {v7, v11, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "fpsMonitorColor"

    const v13, -0x777778

    .line 1297
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v13, "fpsMonitorOpacity"

    const/high16 v14, 0x3f800000    # 1.0f

    .line 1298
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v7, v13, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const-string v13, "FpsMonitor"

    move-object/from16 v28, v4

    const/4 v14, 0x6

    new-array v4, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v15, v4, v14

    const/4 v14, 0x1

    aput-object v9, v4, v14

    const/4 v9, 0x2

    aput-object v10, v4, v9

    const/4 v9, 0x3

    aput-object v11, v4, v9

    .line 1301
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x4

    aput-object v10, v4, v11

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v10, 0x5

    aput-object v1, v4, v10

    .line 1299
    invoke-direct {v2, v13, v5, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c6
    .catchall {:try_start_c6 .. :try_end_c6} :catchall_10

    goto :goto_38

    :cond_ab
    move-object/from16 v28, v4

    const/4 v9, 0x3

    :goto_38
    :try_start_c7
    const-string v1, "sneezeToExitThreshold"

    move-object/from16 v4, v40

    .line 1305
    invoke-virtual {v7, v1, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_c7
    .catchall {:try_start_c7 .. :try_end_c7} :catchall_12

    if-lez v1, :cond_ac

    :try_start_c8
    const-string v10, "SneezeToExit"

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v15, v12, v11

    .line 1307
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v11, 0x1

    aput-object v1, v12, v11

    invoke-direct {v2, v10, v5, v12}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c8
    .catchall {:try_start_c8 .. :try_end_c8} :catchall_10

    :cond_ac
    :try_start_c9
    const-string v1, "fakeTimeZoneId"

    const/4 v10, 0x0

    .line 1311
    invoke-virtual {v7, v1, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1312
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_c9
    .catchall {:try_start_c9 .. :try_end_c9} :catchall_12

    if-nez v10, :cond_ad

    :try_start_ca
    const-string v10, "FakeTimeZone"

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v15, v12, v11

    const/4 v11, 0x1

    aput-object v1, v12, v11

    .line 1313
    invoke-direct {v2, v10, v5, v12}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ca
    .catchall {:try_start_ca .. :try_end_ca} :catchall_10

    :cond_ad
    :try_start_cb
    const-string v1, "makeWebViewsDebuggable"

    .line 1317
    invoke-virtual {v7, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_cb
    .catchall {:try_start_cb .. :try_end_cb} :catchall_12

    if-eqz v1, :cond_ae

    :try_start_cc
    const-string v1, "MakeWebViewsDebuggable"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v15, v11, v10

    .line 1318
    invoke-direct {v2, v1, v5, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_cc
    .catchall {:try_start_cc .. :try_end_cc} :catchall_10

    :cond_ae
    :try_start_cd
    const-string v1, "hideMockLocation"

    .line 1322
    invoke-virtual {v7, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_cd
    .catchall {:try_start_cd .. :try_end_cd} :catchall_12

    if-eqz v1, :cond_af

    :try_start_ce
    const-string v1, "HideMockLocation"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v15, v11, v10

    .line 1323
    invoke-direct {v2, v1, v5, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ce
    .catchall {:try_start_ce .. :try_end_ce} :catchall_10

    :cond_af
    :try_start_cf
    const-string v1, "disableAudioFocus"

    .line 1327
    invoke-virtual {v7, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_cf
    .catchall {:try_start_cf .. :try_end_cf} :catchall_12

    if-eqz v1, :cond_b0

    :try_start_d0
    const-string v1, "DisableAudioFocus"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v15, v11, v10

    .line 1328
    invoke-direct {v2, v1, v5, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d0
    .catchall {:try_start_d0 .. :try_end_d0} :catchall_10

    :cond_b0
    :try_start_d1
    const-string v1, "kioskMode"

    const-string v10, "DISABLED"

    .line 1332
    invoke-virtual {v7, v1, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "DISABLED"

    .line 1333
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_d1
    .catchall {:try_start_d1 .. :try_end_d1} :catchall_12

    if-nez v10, :cond_b1

    :try_start_d2
    const-string v10, "START_IMMEDIATELY"

    .line 1334
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v10, "KioskMode"

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v15, v11, v12

    .line 1335
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v12, 0x1

    aput-object v1, v11, v12

    const/4 v1, 0x2

    aput-object v6, v11, v1

    invoke-direct {v2, v10, v5, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d2
    .catchall {:try_start_d2 .. :try_end_d2} :catchall_10

    :cond_b1
    :try_start_d3
    const-string v1, "flipScreenHorizontally"

    .line 1339
    invoke-virtual {v7, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v10, "flipScreenVertically"

    .line 1340
    invoke-virtual {v7, v10, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v1, :cond_b2

    if-eqz v10, :cond_b3

    :cond_b2
    const-string v11, "flipScreenUsingNotification"

    .line 1342
    invoke-virtual {v7, v11, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    const-string v12, "flipScreenUsingNfcTag"

    .line 1343
    invoke-virtual {v7, v12, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const-string v13, "FlipScreen"

    const/4 v14, 0x6

    new-array v9, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v15, v9, v14

    .line 1345
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v14, 0x1

    aput-object v1, v9, v14

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v10, 0x2

    aput-object v1, v9, v10

    .line 1346
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v10, 0x3

    aput-object v1, v9, v10

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v10, 0x4

    aput-object v1, v9, v10

    const/4 v1, 0x5

    aput-object v6, v9, v1

    .line 1344
    invoke-direct {v2, v13, v5, v9}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b3
    const-string v1, "swipeToGoBack"

    .line 1350
    invoke-virtual {v7, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_d3
    .catchall {:try_start_d3 .. :try_end_d3} :catchall_12

    if-eqz v1, :cond_b4

    :try_start_d4
    const-string v1, "swipeToGoBackDirection"

    const-string v9, "RIGHT"

    .line 1351
    invoke-virtual {v7, v1, v9}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "swipeToGoBackBorder"

    const/4 v10, 0x0

    .line 1352
    invoke-virtual {v7, v9, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "swipeToGoBackDoubleBack"

    .line 1353
    invoke-virtual {v7, v10, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const-string v11, "SwipeToGoBack"

    const/4 v12, 0x4

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v15, v13, v12

    const/4 v12, 0x1

    aput-object v1, v13, v12

    const/4 v1, 0x2

    aput-object v9, v13, v1

    .line 1354
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v9, 0x3

    aput-object v1, v13, v9

    invoke-direct {v2, v11, v5, v13}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d4
    .catchall {:try_start_d4 .. :try_end_d4} :catchall_10

    :cond_b4
    :try_start_d5
    const-string v1, "inAppLiveChat"

    .line 1358
    invoke-virtual {v7, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_d5
    .catchall {:try_start_d5 .. :try_end_d5} :catchall_12

    if-eqz v1, :cond_b6

    .line 1359
    :try_start_d6
    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x2e

    const/16 v10, 0x5f

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const-string v9, "inAppLiveChatPrivateRoomName"

    const/4 v10, 0x0

    .line 1360
    invoke-virtual {v7, v9, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1361
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b5

    .line 1362
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "__"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_b5
    const-string v9, "inAppLiveChatOpacity"

    const/high16 v10, 0x3f800000    # 1.0f

    .line 1364
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v7, v9, v11}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    const-string v10, "InAppLiveChat"

    const/4 v11, 0x5

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v15, v12, v11

    const/4 v11, 0x1

    aput-object v1, v12, v11

    const/4 v1, 0x0

    const/4 v11, 0x2

    aput-object v1, v12, v11

    .line 1365
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v9, 0x3

    aput-object v1, v12, v9

    const/4 v1, 0x4

    aput-object v6, v12, v1

    invoke-direct {v2, v10, v5, v12}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d6
    .catchall {:try_start_d6 .. :try_end_d6} :catchall_10

    :cond_b6
    :try_start_d7
    const-string v1, "removeAppClonerBranding"

    .line 1369
    invoke-virtual {v7, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_d7
    .catchall {:try_start_d7 .. :try_end_d7} :catchall_12

    if-nez v1, :cond_b7

    :try_start_d8
    const-string v1, "AppClonerBranding"

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    .line 1370
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d8
    .catchall {:try_start_d8 .. :try_end_d8} :catchall_10

    :cond_b7
    :try_start_d9
    const-string v1, "longPressToRevealPassword"

    .line 1374
    invoke-virtual {v7, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_d9
    .catchall {:try_start_d9 .. :try_end_d9} :catchall_12

    if-eqz v1, :cond_b8

    :try_start_da
    const-string v1, "LongPressToRevealPassword"

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    .line 1375
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_da
    .catchall {:try_start_da .. :try_end_da} :catchall_10

    :cond_b8
    :try_start_db
    const-string v1, "invertColorsDarkMode"

    .line 1379
    invoke-virtual {v7, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_db
    .catchall {:try_start_db .. :try_end_db} :catchall_12

    if-eqz v1, :cond_b9

    :try_start_dc
    const-string v1, "invertColorsDarkModeExcludeWebViews"

    .line 1380
    invoke-virtual {v7, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v9, "invertColorsDarkModeSchedule"

    .line 1381
    invoke-virtual {v7, v9, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const-string v10, "invertColorsDarkModeStartTime"

    const-string v11, "21:00"

    .line 1382
    invoke-virtual {v7, v10, v11}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "invertColorsDarkModeEndTime"

    const-string v12, "07:00"

    .line 1383
    invoke-virtual {v7, v11, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "InvertColorsDarkMode"

    const/4 v13, 0x5

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v15, v14, v13

    .line 1384
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v13, 0x1

    aput-object v1, v14, v13

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v9, 0x2

    aput-object v1, v14, v9

    const/4 v1, 0x3

    aput-object v10, v14, v1

    const/4 v1, 0x4

    aput-object v11, v14, v1

    invoke-direct {v2, v12, v5, v14}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_dc
    .catchall {:try_start_dc .. :try_end_dc} :catchall_10

    :cond_b9
    :try_start_dd
    const-string v1, "invertToasts"

    .line 1388
    invoke-virtual {v7, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_dd
    .catchall {:try_start_dd .. :try_end_dd} :catchall_12

    if-eqz v1, :cond_ba

    :try_start_de
    const-string v1, "InvertToasts"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v15, v10, v9

    .line 1389
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_de
    .catchall {:try_start_de .. :try_end_de} :catchall_10

    :cond_ba
    :try_start_df
    const-string v1, "toastOpacity"

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1393
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v7, v1, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1
    :try_end_df
    .catchall {:try_start_df .. :try_end_df} :catchall_12

    cmpg-float v10, v1, v9

    if-gez v10, :cond_bb

    :try_start_e0
    const-string v9, "ToastOpacity"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v15, v11, v10

    .line 1395
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v10, 0x1

    aput-object v1, v11, v10

    invoke-direct {v2, v9, v5, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e0
    .catchall {:try_start_e0 .. :try_end_e0} :catchall_10

    :cond_bb
    :try_start_e1
    const-string v1, "skipDialogsStrings"

    .line 1399
    invoke-virtual {v7, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_e1
    .catchall {:try_start_e1 .. :try_end_e1} :catchall_12

    if-eqz v1, :cond_bc

    .line 1400
    :try_start_e2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_bc

    const-string v9, "SkipDialogs"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v15, v11, v10

    const/4 v10, 0x1

    aput-object v1, v11, v10

    .line 1401
    invoke-direct {v2, v9, v5, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e2
    .catchall {:try_start_e2 .. :try_end_e2} :catchall_10

    :cond_bc
    :try_start_e3
    const-string v1, "disableFullscreenEditing"

    .line 1405
    invoke-virtual {v7, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_e3
    .catchall {:try_start_e3 .. :try_end_e3} :catchall_12

    if-eqz v1, :cond_bd

    :try_start_e4
    const-string v1, "DisableFullscreenEditing"

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    .line 1406
    invoke-direct {v2, v1, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e4
    .catchall {:try_start_e4 .. :try_end_e4} :catchall_10

    :cond_bd
    :try_start_e5
    const-string v1, "changeGoogleAdvertisingId"

    .line 1410
    invoke-virtual {v7, v1, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1411
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_e5
    .catchall {:try_start_e5 .. :try_end_e5} :catchall_12

    if-nez v9, :cond_be

    :try_start_e6
    const-string v9, "customGoogleAdvertisingId"

    move-object/from16 v10, v28

    .line 1412
    invoke-virtual {v7, v9, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "ChangeGoogleAdvertisingId"

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v15, v12, v11

    const/4 v11, 0x1

    aput-object v1, v12, v11

    const/4 v1, 0x2

    aput-object v9, v12, v1

    .line 1413
    invoke-direct {v2, v10, v5, v12}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e6
    .catchall {:try_start_e6 .. :try_end_e6} :catchall_10

    :cond_be
    :try_start_e7
    const-string v1, "overrideBindAddress"

    .line 1417
    invoke-virtual {v7, v1, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1418
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_e7
    .catchall {:try_start_e7 .. :try_end_e7} :catchall_12

    if-nez v8, :cond_c0

    :try_start_e8
    const-string v8, "OverrideBindAddress"

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v15, v10, v9

    const-string v9, "LOCAL_INTERFACE"

    .line 1419
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    const-string v1, "127.0.0.1"

    goto :goto_39

    :cond_bf
    const-string v1, "0.0.0.0"

    :goto_39
    const/4 v9, 0x1

    aput-object v1, v10, v9

    invoke-direct {v2, v8, v5, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e8
    .catchall {:try_start_e8 .. :try_end_e8} :catchall_10

    :cond_c0
    :try_start_e9
    const-string v1, "enableDisableNetworkingNotification"

    .line 1423
    invoke-virtual {v7, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_e9
    .catchall {:try_start_e9 .. :try_end_e9} :catchall_12

    if-eqz v1, :cond_c1

    :try_start_ea
    const-string v1, "EnableDisableNetworkingNotification"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v15, v9, v8

    const/4 v8, 0x1

    aput-object v6, v9, v8

    .line 1424
    invoke-direct {v2, v1, v5, v9}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ea
    .catchall {:try_start_ea .. :try_end_ea} :catchall_10

    :cond_c1
    :try_start_eb
    const-string v1, "addPadding"

    .line 1428
    invoke-virtual {v7, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->forObject(Ljava/lang/String;)Lcom/applisto/appcloner/classes/CloneSettings;

    move-result-object v1
    :try_end_eb
    .catchall {:try_start_eb .. :try_end_eb} :catchall_12

    if-eqz v1, :cond_c2

    :try_start_ec
    const-string v8, "enabled"

    .line 1429
    invoke-virtual {v1, v8, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_c2

    const-string v8, "leftPadding"

    .line 1430
    invoke-virtual {v1, v8, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "topPadding"

    .line 1431
    invoke-virtual {v1, v9, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "rightPadding"

    .line 1432
    invoke-virtual {v1, v10, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v11, "bottomPadding"

    .line 1433
    invoke-virtual {v1, v11, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v11, "AddPadding"

    const/4 v12, 0x5

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v15, v13, v12

    .line 1434
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v13, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v13, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v13, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v8, 0x4

    aput-object v1, v13, v8

    invoke-direct {v2, v11, v5, v13}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ec
    .catchall {:try_start_ec .. :try_end_ec} :catchall_10

    :cond_c2
    :try_start_ed
    const-string v1, "jobSchedulingMonitor"

    .line 1438
    invoke-virtual {v7, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v8, "jobSchedulingMultiplier"

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1439
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    if-nez v1, :cond_c3

    cmpl-float v9, v8, v9

    if-eqz v9, :cond_c4

    :cond_c3
    const-string v9, "JobScheduling"

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v15, v11, v10

    .line 1441
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v10, 0x1

    aput-object v1, v11, v10

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v8, 0x2

    aput-object v1, v11, v8

    const/4 v1, 0x3

    aput-object v6, v11, v1

    invoke-direct {v2, v9, v5, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c4
    const-string v1, "mappedKeys"

    .line 1445
    invoke-virtual {v7, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getStringMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1
    :try_end_ed
    .catchall {:try_start_ed .. :try_end_ed} :catchall_12

    if-eqz v1, :cond_c5

    .line 1446
    :try_start_ee
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c5

    const-string v6, "KeyMapper"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v15, v9, v8

    const/4 v8, 0x1

    aput-object v1, v9, v8

    .line 1447
    invoke-direct {v2, v6, v5, v9}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ee
    .catchall {:try_start_ee .. :try_end_ee} :catchall_10

    :cond_c5
    :try_start_ef
    const-string v1, "colorFilterBrightness"

    .line 1451
    invoke-virtual {v7, v1, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v6, "colorFilterContrast"

    .line 1452
    invoke-virtual {v7, v6, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v8, "colorFilterSaturation"

    .line 1453
    invoke-virtual {v7, v8, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "colorFilterHue"

    .line 1454
    invoke-virtual {v7, v9, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "colorFilterRed"

    .line 1455
    invoke-virtual {v7, v10, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v11, "colorFilterGreen"

    .line 1456
    invoke-virtual {v7, v11, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v12, "colorFilterBlue"

    .line 1457
    invoke-virtual {v7, v12, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v12, "colorFilterBlackWhite"

    const/4 v13, 0x0

    .line 1458
    invoke-virtual {v7, v12, v13}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v12

    if-nez v1, :cond_c6

    if-nez v6, :cond_c6

    if-nez v8, :cond_c6

    if-nez v9, :cond_c6

    if-nez v10, :cond_c6

    if-nez v11, :cond_c6

    if-nez v4, :cond_c6

    if-eqz v12, :cond_c7

    :cond_c6
    const-string v13, "ColorFilter"

    const/16 v14, 0x9

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v15, v14, v21

    .line 1460
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v20, 0x1

    aput-object v1, v14, v20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x2

    aput-object v1, v14, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x3

    aput-object v1, v14, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v14, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x5

    aput-object v1, v14, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x6

    aput-object v1, v14, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v14, v19

    const/16 v1, 0x8

    aput-object v12, v14, v1

    invoke-direct {v2, v13, v5, v14}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c7
    const-string v1, "selectAllOnFocus"

    .line 1464
    invoke-virtual {v7, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_ef
    .catchall {:try_start_ef .. :try_end_ef} :catchall_12

    if-eqz v1, :cond_c8

    :try_start_f0
    const-string v1, "SelectAllOnFocus"

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    .line 1465
    invoke-direct {v2, v1, v5, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f0
    .catchall {:try_start_f0 .. :try_end_f0} :catchall_10

    :cond_c8
    :try_start_f1
    const-string v1, "packageNameCheckWorkaround"

    .line 1469
    invoke-virtual {v7, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c9

    const-string v1, "PackageNameCheckWorkaround"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v15, v4, v6
    :try_end_f1
    .catchall {:try_start_f1 .. :try_end_f1} :catchall_12

    move-object/from16 v6, v38

    const/4 v8, 0x1

    :try_start_f2
    aput-object v6, v4, v8

    .line 1470
    invoke-direct {v2, v1, v5, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3a

    :cond_c9
    move-object/from16 v6, v38

    :goto_3a
    const-string v1, "notificationDots"

    .line 1474
    invoke-virtual {v7, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 1475
    new-instance v1, Lcom/applisto/appcloner/classes/NotificationDots;

    invoke-direct {v1}, Lcom/applisto/appcloner/classes/NotificationDots;-><init>()V

    invoke-virtual {v1}, Lcom/applisto/appcloner/classes/NotificationDots;->install()V
    :try_end_f2
    .catchall {:try_start_f2 .. :try_end_f2} :catchall_11

    :cond_ca
    if-eqz v16, :cond_cb

    :try_start_f3
    const-string v1, "Test"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v4, v3

    .line 1481
    invoke-direct {v2, v1, v5, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f3} :catch_b
    .catchall {:try_start_f3 .. :try_end_f3} :catchall_11

    goto/16 :goto_44

    :catch_b
    move-exception v0

    move-object v1, v0

    .line 1483
    :try_start_f4
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f4
    .catchall {:try_start_f4 .. :try_end_f4} :catchall_11

    goto/16 :goto_44

    :catchall_11
    move-exception v0

    goto/16 :goto_42

    :catchall_12
    move-exception v0

    move-object/from16 v6, v38

    goto/16 :goto_42

    :catchall_13
    move-exception v0

    goto :goto_3f

    :catchall_14
    move-exception v0

    goto/16 :goto_41

    :catchall_15
    move-exception v0

    goto :goto_3b

    :catchall_16
    move-exception v0

    move-object/from16 v2, p0

    move-object v6, v4

    move-object/from16 v39, v9

    goto :goto_3d

    :catchall_17
    move-exception v0

    move-object v2, v1

    move-object v5, v3

    move-object v6, v4

    goto :goto_3c

    :catchall_18
    move-exception v0

    move-object v2, v1

    move-object v5, v3

    :goto_3b
    move-object v6, v4

    move-object/from16 v39, v9

    goto :goto_42

    :catchall_19
    move-exception v0

    move-object v2, v1

    move-object v5, v3

    goto :goto_41

    :catchall_1a
    move-exception v0

    move-object v2, v1

    move-object v5, v3

    move-object/from16 v6, v30

    goto :goto_3c

    :catchall_1b
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v6, v30

    move-object/from16 v5, v36

    :goto_3c
    move-object/from16 v39, v37

    goto :goto_42

    :catchall_1c
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v39, v6

    move-object/from16 v6, v30

    :goto_3d
    move-object/from16 v5, v36

    goto :goto_42

    :catchall_1d
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_3e

    :catchall_1e
    move-exception v0

    move-object v2, v1

    :goto_3e
    move-object v5, v6

    :goto_3f
    move-object/from16 v39, v28

    :goto_40
    move-object/from16 v6, v30

    goto :goto_42

    :catchall_1f
    move-exception v0

    move-object v2, v1

    move-object v5, v6

    :goto_41
    move-object/from16 v39, v9

    goto :goto_40

    :catchall_20
    move-exception v0

    move-object v2, v1

    move-object v5, v6

    move-object/from16 v39, v9

    move-object v6, v11

    goto :goto_42

    :catchall_21
    move-exception v0

    move-object v2, v1

    move-object v5, v6

    move-object v6, v11

    move-object/from16 v39, v29

    :goto_42
    move-object v1, v0

    .line 1488
    :goto_43
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_cb
    :goto_44
    :try_start_f5
    const-string v1, "com.whatsapp"

    .line 1494
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cc

    const-string v1, "com.whatsapp.w4b"

    .line 1495
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 1496
    :cond_cc
    new-instance v1, Lcom/applisto/appcloner/classes/WhatsAppSupport;

    invoke-direct {v1}, Lcom/applisto/appcloner/classes/WhatsAppSupport;-><init>()V

    invoke-virtual {v1, v6}, Lcom/applisto/appcloner/classes/WhatsAppSupport;->install(Ljava/lang/String;)V

    .line 1497
    invoke-static {v15, v6}, Ljava/io/ByteArrayOutputStrean;->init(Landroid/content/Context;Ljava/lang/String;)V

    :cond_cd
    const-string v1, "com.google.android.gm"

    .line 1501
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 1502
    new-instance v1, Lcom/applisto/appcloner/classes/GmailSupport;

    invoke-direct {v1}, Lcom/applisto/appcloner/classes/GmailSupport;-><init>()V

    invoke-virtual {v1, v15}, Lcom/applisto/appcloner/classes/GmailSupport;->install(Landroid/content/Context;)V

    :cond_ce
    const-string v1, "com.paypal.android.p2pmobile"

    .line 1506
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    const-string v1, "com.applisto.appcloner.classes.secondary.PayPalSupport"

    .line 1507
    invoke-static {v15, v1}, Lcom/applisto/appcloner/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1508
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    move-object/from16 v8, v39

    invoke-virtual {v3, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v15, v7, v9

    .line 1509
    invoke-virtual {v3, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_cf
    const-string v1, "com.yahoo.mobile.client.android.flickr"

    .line 1513
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d0

    const-string v1, "FlickrSupport"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v4, v3

    .line 1514
    invoke-direct {v2, v1, v5, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d0
    const-string v1, "com.bukalapak.android"

    .line 1518
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "BukalapakSupport"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v4, v3

    .line 1519
    invoke-direct {v2, v1, v5, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d1
    const-string v1, "com.tokopedia.tkpd"

    .line 1523
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d2

    const-string v1, "TokopediaSupport"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v4, v3

    .line 1524
    invoke-direct {v2, v1, v5, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d2
    const-string v1, "com.facebook.mlite"

    .line 1528
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    const-string v1, "MessengerLiteSupport"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v4, v3

    .line 1529
    invoke-direct {v2, v1, v5, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1532
    :cond_d3
    sget-object v1, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate; took: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v17

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " millis"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f5
    .catchall {:try_start_f5 .. :try_end_f5} :catchall_22

    goto :goto_45

    :catchall_22
    move-exception v0

    move-object v1, v0

    .line 1535
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1538
    :goto_45
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->closeAndroidPieApiCompatibilityDialog()V

    const/4 v1, 0x1

    return v1
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1581
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "assets/.notificationSoundFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1582
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/DefaultProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, ".notificationSoundFile"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 1585
    sget-object v1, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1588
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/applisto/appcloner/classes/util/activity/AbstractContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1594
    sget-object v0, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile; uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/DefaultProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1597
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/Image.png"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x10000000

    const-string v3, "r"

    if-eqz v1, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1598
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    .line 1599
    new-instance p2, Ljava/io/File;

    const-string v0, "share_image.png"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1600
    sget-object p1, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openFile; returning share image file descriptor; file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    invoke-static {p2, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 1604
    :cond_0
    invoke-static {v0}, Lcom/applisto/appcloner/classes/Utils;->checkCaller(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    const-string v1, "/cloneSettings"

    .line 1606
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1607
    invoke-static {v0}, Lcom/applisto/appcloner/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/applisto/appcloner/classes/CloneSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applisto/appcloner/classes/CloneSettings;->getCloneSettingsFile()Ljava/io/File;

    move-result-object v0

    .line 1608
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1609
    sget-object v1, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    const-string v3, "openFile; returning clone settings file MODE_READ_ONLY file descriptor..."

    invoke-static {v1, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v1, "w"

    .line 1612
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1613
    sget-object v1, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    const-string v2, "openFile; returning clone settings file MODE_WRITE_ONLY file descriptor..."

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x2c000000

    .line 1614
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 1622
    sget-object v1, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1620
    throw p1

    .line 1626
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/applisto/appcloner/classes/util/activity/AbstractContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method
