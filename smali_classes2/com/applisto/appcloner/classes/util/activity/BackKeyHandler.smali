.class public abstract Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;
.super Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;
.source "BackKeyHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->mActivityTokens:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->mActivities:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->mActivityTokens:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;)Ljava/util/Map;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->mActivities:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;Ljava/lang/Object;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->removeToken(Ljava/lang/Object;)V

    return-void
.end method

.method private static getActivityToken(Landroid/app/Activity;)Ljava/lang/Object;
    .locals 2

    .line 135
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mToken"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 137
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 139
    sget-object v0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    return-object p0
.end method

.method private removeToken(Ljava/lang/Object;)V
    .locals 2

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->mActivityTokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->mActivities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object p1, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeToken; mActivityTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->mActivityTokens:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected abstract handleBackPressed(Landroid/app/Activity;Ljava/lang/Object;)Z
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .locals 4

    .line 101
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 103
    sget-object v1, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->TAG:Ljava/lang/String;

    const-string v2, "onActivityCreated; new task"

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->mActivityTokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 107
    :cond_0
    invoke-static {p1}, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->getActivityToken(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .line 108
    iget-object v2, p0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->mActivityTokens:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->mActivityTokens:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v2, p0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->mActivities:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_1
    sget-object v1, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityCreated; activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", flags: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mActivityTokens: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->mActivityTokens:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 119
    invoke-static {p1}, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->getActivityToken(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->removeToken(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate()Z
    .locals 3

    .line 32
    invoke-super {p0}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->onCreate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    :try_start_0
    new-instance v1, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1;-><init>(Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;)V

    .line 84
    invoke-virtual {v1}, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1;->install()V

    .line 86
    sget-object v1, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->TAG:Ljava/lang/String;

    const-string v2, "onCreate; IActivityManagerHook installed"

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 89
    sget-object v2, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method
