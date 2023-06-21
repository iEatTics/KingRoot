.class public Lcom/kingroot/kinguser/ur;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Jd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final Je:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ur;->Jd:Ljava/util/Map;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/kingroot/kinguser/uu;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/kingroot/kinguser/us;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingroot/kinguser/ur;->Je:[Ljava/lang/Class;

    return-void
.end method

.method public static a([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 25
    array-length v4, p0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, p0, v3

    .line 26
    sget-object v5, Lcom/kingroot/kinguser/ur;->Je:[Ljava/lang/Class;

    array-length v6, v5

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_1

    aget-object v7, v5, v1

    .line 27
    invoke-virtual {v7, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 32
    :goto_2
    return-object v0

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 25
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 32
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static e(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v0, v4, v3

    .line 80
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    array-length v7, v6

    move v1, v2

    :goto_1
    if-ge v1, v7, :cond_1

    aget-object v8, v6, v1

    .line 81
    const-class v9, Lcom/kingroot/kinguser/ut;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 86
    :goto_2
    return-object v0

    .line 80
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 79
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 86
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method
