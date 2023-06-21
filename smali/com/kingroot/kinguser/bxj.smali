.class public Lcom/kingroot/kinguser/bxj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bTr:[Ljava/lang/String;

.field private static bTs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/kingroot/kinguser/bwo;->bSa:[I

    .line 17
    invoke-static {v1}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingroot/kinguser/bwo;->bSb:[I

    .line 18
    invoke-static {v1}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingroot/kinguser/bwo;->bSc:[I

    .line 19
    invoke-static {v1}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lcom/kingroot/kinguser/bwo;->bSd:[I

    .line 20
    invoke-static {v1}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v1, Lcom/kingroot/kinguser/bwo;->bSe:[I

    .line 21
    invoke-static {v1}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bSf:[I

    .line 22
    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bSg:[I

    .line 23
    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingroot/kinguser/bxj;->bTr:[Ljava/lang/String;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/kingroot/kinguser/bwo;->bSh:[I

    .line 27
    invoke-static {v1}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingroot/kinguser/bwo;->bSi:[I

    .line 28
    invoke-static {v1}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingroot/kinguser/bwo;->bSj:[I

    .line 29
    invoke-static {v1}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lcom/kingroot/kinguser/bwo;->bSk:[I

    .line 30
    invoke-static {v1}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v1, Lcom/kingroot/kinguser/bwo;->bSl:[I

    .line 31
    invoke-static {v1}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/kingroot/kinguser/bxj;->bTs:[Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static n(Ljava/util/Set;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 36
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    sget-object v4, Lcom/kingroot/kinguser/bxj;->bTr:[Ljava/lang/String;

    array-length v5, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    .line 38
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 39
    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 41
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 42
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_2
    invoke-interface {p0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 49
    return-object p0
.end method

.method public static o(Ljava/util/Set;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 54
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    sget-object v4, Lcom/kingroot/kinguser/bxj;->bTs:[Ljava/lang/String;

    array-length v5, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    .line 56
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 57
    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 59
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 60
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_2
    return-object v2
.end method
