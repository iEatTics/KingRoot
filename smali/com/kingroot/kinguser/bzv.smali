.class public abstract Lcom/kingroot/kinguser/bzv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bzv$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/bzv$a",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bzv;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/kingroot/kinguser/bzy;->akn()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 17
    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/bzv;->i(Ljava/lang/Class;)Lcom/kingroot/kinguser/bzv$a;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/kingroot/kinguser/bzv;->a(Ljava/lang/Class;Lcom/kingroot/kinguser/bzv$a;)V

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Class;Lcom/kingroot/kinguser/bzv$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/kingroot/kinguser/bzv$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bzv;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public h(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 42
    if-nez p1, :cond_1

    move-object v0, v1

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bzv;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bzv$a;

    .line 48
    if-nez v0, :cond_2

    move-object v0, v1

    .line 49
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bzv$a;->a()Ljava/lang/Object;

    move-result-object v0

    .line 54
    if-nez v0, :cond_0

    move-object v0, v1

    .line 55
    goto :goto_0
.end method

.method protected abstract i(Ljava/lang/Class;)Lcom/kingroot/kinguser/bzv$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Lcom/kingroot/kinguser/cca;",
            ">;)",
            "Lcom/kingroot/kinguser/bzv$a;"
        }
    .end annotation
.end method
