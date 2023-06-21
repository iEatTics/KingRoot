.class public Lcom/applisto/appcloner/classes/ApplicationWrapper;
.super Landroid/app/Application;
.source "ApplicationWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBaseApp:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/applisto/appcloner/classes/ApplicationWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/applisto/appcloner/classes/ApplicationWrapper;)Landroid/app/Application;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createApplication(Landroid/content/pm/ApplicationInfo;)Landroid/app/Application;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 257
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.applisto.appcloner.applicationClassName"

    const-string v1, "android.app.Application"

    .line 258
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 260
    sget-object v0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createApplication; applicationClassName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 263
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    return-object p1
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public synthetic lambda$onCreate$0$ApplicationWrapper(Ljava/lang/reflect/Field;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 239
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$OnProvideAssistDataListener;

    .line 240
    invoke-interface {v0, p2, p3}, Landroid/app/Application$OnProvideAssistDataListener;->onProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 243
    sget-object p2, Lcom/applisto/appcloner/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 277
    sget-object v0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged; newConfig.locale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 280
    iget-object v0, p0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 8

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/ApplicationWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/ApplicationWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 45
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.applisto.appcloner.sandboxExternalStorage"

    .line 46
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 48
    sget-object v2, Lcom/applisto/appcloner/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate; sandboxExternalStorage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "com.applisto.appcloner.classes.secondary.SandboxExternalStorage"

    .line 51
    invoke-static {p0, v1}, Lcom/applisto/appcloner/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "init"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v7

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    invoke-direct {p0, v0}, Lcom/applisto/appcloner/classes/ApplicationWrapper;->createApplication(Landroid/content/pm/ApplicationInfo;)Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    .line 57
    const-class v0, Landroid/content/ContextWrapper;

    const-string v1, "mBase"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/ApplicationWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 63
    new-instance v3, Lcom/applisto/appcloner/classes/ApplicationWrapper$1;

    invoke-direct {v3, p0, v1}, Lcom/applisto/appcloner/classes/ApplicationWrapper$1;-><init>(Lcom/applisto/appcloner/classes/ApplicationWrapper;Landroid/content/Context;)V

    .line 69
    iget-object v1, p0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 77
    const-class v1, Landroid/app/Application;

    const-string v4, "mComponentCallbacks"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 80
    new-instance v4, Lcom/applisto/appcloner/classes/ApplicationWrapper$2;

    invoke-direct {v4, p0, v1}, Lcom/applisto/appcloner/classes/ApplicationWrapper$2;-><init>(Lcom/applisto/appcloner/classes/ApplicationWrapper;Ljava/lang/reflect/Field;)V

    invoke-virtual {p0, v4}, Lcom/applisto/appcloner/classes/ApplicationWrapper;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 115
    const-class v1, Landroid/app/Application;

    const-string v4, "mActivityLifecycleCallbacks"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 119
    new-instance v4, Lcom/applisto/appcloner/classes/ApplicationWrapper$3;

    invoke-direct {v4, p0, v1, v0, v3}, Lcom/applisto/appcloner/classes/ApplicationWrapper$3;-><init>(Lcom/applisto/appcloner/classes/ApplicationWrapper;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/applisto/appcloner/classes/ApplicationWrapper;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 229
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 231
    const-class v0, Landroid/app/Application;

    const-string v1, "mAssistCallbacks"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 232
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 234
    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$ApplicationWrapper$JMjZM7ZHXH__w4XaWplbTFBHDOA;

    invoke-direct {v1, p0, v0}, Lcom/applisto/appcloner/classes/-$$Lambda$ApplicationWrapper$JMjZM7ZHXH__w4XaWplbTFBHDOA;-><init>(Lcom/applisto/appcloner/classes/ApplicationWrapper;Ljava/lang/reflect/Field;)V

    invoke-virtual {p0, v1}, Lcom/applisto/appcloner/classes/ApplicationWrapper;->registerOnProvideAssistDataListener(Landroid/app/Application$OnProvideAssistDataListener;)V

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 251
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onLowMemory()V
    .locals 2

    .line 285
    sget-object v0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    const-string v1, "onLowMemory; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 288
    iget-object v0, p0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 2

    .line 268
    sget-object v0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    const-string v1, "onTerminate; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 271
    iget-object v0, p0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    .line 293
    sget-object v0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMemory; level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 296
    iget-object v0, p0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    return-void
.end method
