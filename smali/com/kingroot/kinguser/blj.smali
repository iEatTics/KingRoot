.class public Lcom/kingroot/kinguser/blj;
.super Lcom/kingroot/kinguser/th;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/blj$a;
    }
.end annotation


# static fields
.field private static MC:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/kingroot/kinguser/blj$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bzO:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/blj;->MC:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/kingroot/kinguser/th;-><init>()V

    .line 46
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/blj$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/blj$1;-><init>(Lcom/kingroot/kinguser/blj;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/blj;->bzO:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/blj$a;)V
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/kingroot/kinguser/blj;->MC:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public static b(Lcom/kingroot/kinguser/blj$a;)V
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/kingroot/kinguser/blj;->MC:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/kingroot/kinguser/blj;->MC:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    return-void
.end method

.method private static mc(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 60
    sget-object v0, Lcom/kingroot/kinguser/blj;->MC:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 62
    if-eqz v1, :cond_0

    .line 63
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/blj$a;

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/blj$a;->onPackageAdd(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    return-void
.end method

.method static synthetic md(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-static {p0}, Lcom/kingroot/kinguser/blj;->mc(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 29
    const-string v0, ""

    .line 33
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 34
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 44
    :cond_1
    :goto_0
    return-void

    .line 41
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/blj;->bzO:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v2, v1}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z

    goto :goto_0
.end method
