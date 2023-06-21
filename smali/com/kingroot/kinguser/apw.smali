.class public Lcom/kingroot/kinguser/apw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/apw$a;
    }
.end annotation


# static fields
.field private static aJH:Ljava/lang/Object;


# direct methods
.method public static LR()V
    .locals 6

    .prologue
    .line 56
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/apw;->LT()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/aav;->qk()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/aav;->qh()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/aav;->ql()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string v0, "android.app.ActivityManagerNative"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 62
    const-string v1, "gDefault"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 64
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 66
    const-string v2, "android.util.Singleton"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 67
    const-string v3, "get"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 68
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 69
    const-string v4, "mInstance"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 70
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Lcom/kingroot/kinguser/apw;->aJH:Ljava/lang/Object;

    .line 78
    :goto_1
    sget-object v3, Lcom/kingroot/kinguser/apw;->aJH:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 82
    sget-object v3, Lcom/kingroot/kinguser/apw;->aJH:Ljava/lang/Object;

    invoke-static {v3}, Lcom/kingroot/kinguser/apw;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 84
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0

    .line 75
    :cond_2
    sput-object v1, Lcom/kingroot/kinguser/apw;->aJH:Ljava/lang/Object;

    goto :goto_1

    .line 92
    :catch_1
    move-exception v0

    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 94
    :catch_2
    move-exception v0

    goto :goto_0

    .line 98
    :catch_3
    move-exception v0

    goto :goto_0

    .line 96
    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method private static LS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "com.bbk.appstore"

    .line 200
    :goto_0
    return-object v0

    .line 194
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    const-string v0, "com.oppo.market"

    goto :goto_0

    .line 196
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/apw;->LT()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    const-string v0, "com.huawei.appmarket"

    goto :goto_0

    .line 200
    :cond_2
    const-string v0, "com.google.launcher"

    goto :goto_0
.end method

.method private static LT()Z
    .locals 2

    .prologue
    .line 205
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "honor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic LU()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/kingroot/kinguser/apw;->aJH:Ljava/lang/Object;

    return-object v0
.end method

.method private static a([Ljava/lang/Object;Ljava/lang/Class;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 178
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 188
    :cond_1
    :goto_0
    return v0

    .line 182
    :cond_2
    array-length v3, p0

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, p0, v2

    .line 183
    add-int/lit8 v0, v0, 0x1

    .line 184
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq p1, v4, :cond_1

    .line 182
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 188
    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 114
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 116
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 117
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/apw;->a(Ljava/lang/Class;Ljava/util/HashSet;)V

    .line 119
    :cond_1
    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/kingroot/kinguser/apw;->LS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b([Ljava/lang/Object;Ljava/lang/Class;)I
    .locals 1

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/apw;->a([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method private static q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/apw;->a(Ljava/lang/Class;Ljava/util/HashSet;)V

    .line 106
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Class;

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 108
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v2, Lcom/kingroot/kinguser/apw$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/apw$a;-><init>(Lcom/kingroot/kinguser/apw$1;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
